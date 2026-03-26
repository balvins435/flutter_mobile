import 'dart:convert';

import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

class SettingsEntries extends Table {
  TextColumn get key => text()();
  TextColumn get value => text()();

  @override
  Set<Column<Object>> get primaryKey => {key};
}

class DashboardCaches extends Table {
  IntColumn get businessId => integer()();
  TextColumn get payload => text()();
  DateTimeColumn get syncedAt => dateTime()();

  @override
  Set<Column<Object>> get primaryKey => {businessId};
}

class InvoiceCaches extends Table {
  IntColumn get localId => integer().autoIncrement()();
  IntColumn get businessId => integer()();
  TextColumn get payload => text()();
  DateTimeColumn get updatedAt => dateTime()();
}

class ExpenseCaches extends Table {
  IntColumn get localId => integer().autoIncrement()();
  IntColumn get businessId => integer()();
  TextColumn get payload => text()();
  DateTimeColumn get updatedAt => dateTime()();
}

class OutboxEntries extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get feature => text()();
  TextColumn get operation => text()();
  IntColumn get businessId => integer()();
  TextColumn get payload => text()();
  TextColumn get syncState => text().withDefault(const Constant('pending'))();
  TextColumn get idempotencyKey => text().nullable()();
  TextColumn get errorMessage => text().nullable()();
  DateTimeColumn get createdAt => dateTime()();
}

@DriftDatabase(tables: [SettingsEntries, DashboardCaches, InvoiceCaches, ExpenseCaches, OutboxEntries])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(driftDatabase(name: 'smartinvoice_mobile'));

  @override
  int get schemaVersion => 1;

  Future<void> saveSetting(String key, String value) {
    return into(settingsEntries).insertOnConflictUpdate(
      SettingsEntriesCompanion.insert(key: key, value: value),
    );
  }

  Future<String?> readSetting(String key) async {
    final row = await (select(settingsEntries)..where((tbl) => tbl.key.equals(key))).getSingleOrNull();
    return row?.value;
  }

  Future<void> cacheDashboard(int businessId, Map<String, dynamic> payload) {
    return into(dashboardCaches).insertOnConflictUpdate(
      DashboardCachesCompanion.insert(
        businessId: Value(businessId),
        payload: jsonEncode(payload),
        syncedAt: DateTime.now(),
      ),
    );
  }

  Future<Map<String, dynamic>?> readDashboardCache(int businessId) async {
    final row = await (select(dashboardCaches)..where((tbl) => tbl.businessId.equals(businessId))).getSingleOrNull();
    return row == null ? null : jsonDecode(row.payload) as Map<String, dynamic>;
  }

  Future<void> replaceInvoiceCache(int businessId, List<Map<String, dynamic>> payloads) async {
    await (delete(invoiceCaches)..where((tbl) => tbl.businessId.equals(businessId))).go();
    await batch((batch) {
      batch.insertAll(
        invoiceCaches,
        payloads.map(
          (payload) => InvoiceCachesCompanion.insert(
            businessId: businessId,
            payload: jsonEncode(payload),
            updatedAt: DateTime.now(),
          ),
        ),
      );
    });
  }

  Future<List<Map<String, dynamic>>> readInvoiceCache(int businessId) async {
    final rows = await (select(invoiceCaches)..where((tbl) => tbl.businessId.equals(businessId))).get();
    return rows.map((row) => jsonDecode(row.payload) as Map<String, dynamic>).toList();
  }

  Future<void> replaceExpenseCache(int businessId, List<Map<String, dynamic>> payloads) async {
    await (delete(expenseCaches)..where((tbl) => tbl.businessId.equals(businessId))).go();
    await batch((batch) {
      batch.insertAll(
        expenseCaches,
        payloads.map(
          (payload) => ExpenseCachesCompanion.insert(
            businessId: businessId,
            payload: jsonEncode(payload),
            updatedAt: DateTime.now(),
          ),
        ),
      );
    });
  }

  Future<List<Map<String, dynamic>>> readExpenseCache(int businessId) async {
    final rows = await (select(expenseCaches)..where((tbl) => tbl.businessId.equals(businessId))).get();
    return rows.map((row) => jsonDecode(row.payload) as Map<String, dynamic>).toList();
  }

  Future<int> enqueueMutation({
    required String feature,
    required String operation,
    required int businessId,
    required Map<String, dynamic> payload,
    String? idempotencyKey,
  }) {
    return into(outboxEntries).insert(
      OutboxEntriesCompanion.insert(
        feature: feature,
        operation: operation,
        businessId: businessId,
        payload: jsonEncode(payload),
        idempotencyKey: Value(idempotencyKey),
        createdAt: DateTime.now(),
      ),
    );
  }

  Future<List<OutboxEntry>> pendingOutbox() {
    return (select(outboxEntries)..where((tbl) => tbl.syncState.equals('pending'))).get();
  }

  Future<void> markOutboxStatus(int id, String status, {String? errorMessage}) {
    return (update(outboxEntries)..where((tbl) => tbl.id.equals(id))).write(
      OutboxEntriesCompanion(
        syncState: Value(status),
        errorMessage: Value(errorMessage),
      ),
    );
  }
}
