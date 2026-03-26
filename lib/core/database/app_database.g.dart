// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $SettingsEntriesTable extends SettingsEntries
    with TableInfo<$SettingsEntriesTable, SettingsEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String> key = GeneratedColumn<String>(
    'key',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<String> value = GeneratedColumn<String>(
    'value',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [key, value];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<SettingsEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('key')) {
      context.handle(
        _keyMeta,
        key.isAcceptableOrUnknown(data['key']!, _keyMeta),
      );
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
        _valueMeta,
        value.isAcceptableOrUnknown(data['value']!, _valueMeta),
      );
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {key};
  @override
  SettingsEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SettingsEntry(
      key: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}key'],
      )!,
      value: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}value'],
      )!,
    );
  }

  @override
  $SettingsEntriesTable createAlias(String alias) {
    return $SettingsEntriesTable(attachedDatabase, alias);
  }
}

class SettingsEntry extends DataClass implements Insertable<SettingsEntry> {
  final String key;
  final String value;
  const SettingsEntry({required this.key, required this.value});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['key'] = Variable<String>(key);
    map['value'] = Variable<String>(value);
    return map;
  }

  SettingsEntriesCompanion toCompanion(bool nullToAbsent) {
    return SettingsEntriesCompanion(key: Value(key), value: Value(value));
  }

  factory SettingsEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SettingsEntry(
      key: serializer.fromJson<String>(json['key']),
      value: serializer.fromJson<String>(json['value']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'key': serializer.toJson<String>(key),
      'value': serializer.toJson<String>(value),
    };
  }

  SettingsEntry copyWith({String? key, String? value}) =>
      SettingsEntry(key: key ?? this.key, value: value ?? this.value);
  SettingsEntry copyWithCompanion(SettingsEntriesCompanion data) {
    return SettingsEntry(
      key: data.key.present ? data.key.value : this.key,
      value: data.value.present ? data.value.value : this.value,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SettingsEntry(')
          ..write('key: $key, ')
          ..write('value: $value')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(key, value);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SettingsEntry &&
          other.key == this.key &&
          other.value == this.value);
}

class SettingsEntriesCompanion extends UpdateCompanion<SettingsEntry> {
  final Value<String> key;
  final Value<String> value;
  final Value<int> rowid;
  const SettingsEntriesCompanion({
    this.key = const Value.absent(),
    this.value = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SettingsEntriesCompanion.insert({
    required String key,
    required String value,
    this.rowid = const Value.absent(),
  }) : key = Value(key),
       value = Value(value);
  static Insertable<SettingsEntry> custom({
    Expression<String>? key,
    Expression<String>? value,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (key != null) 'key': key,
      if (value != null) 'value': value,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SettingsEntriesCompanion copyWith({
    Value<String>? key,
    Value<String>? value,
    Value<int>? rowid,
  }) {
    return SettingsEntriesCompanion(
      key: key ?? this.key,
      value: value ?? this.value,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (value.present) {
      map['value'] = Variable<String>(value.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsEntriesCompanion(')
          ..write('key: $key, ')
          ..write('value: $value, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DashboardCachesTable extends DashboardCaches
    with TableInfo<$DashboardCachesTable, DashboardCache> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DashboardCachesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<int> businessId = GeneratedColumn<int>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncedAtMeta = const VerificationMeta(
    'syncedAt',
  );
  @override
  late final GeneratedColumn<DateTime> syncedAt = GeneratedColumn<DateTime>(
    'synced_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [businessId, payload, syncedAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'dashboard_caches';
  @override
  VerificationContext validateIntegrity(
    Insertable<DashboardCache> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('synced_at')) {
      context.handle(
        _syncedAtMeta,
        syncedAt.isAcceptableOrUnknown(data['synced_at']!, _syncedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_syncedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {businessId};
  @override
  DashboardCache map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DashboardCache(
      businessId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}business_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      syncedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}synced_at'],
      )!,
    );
  }

  @override
  $DashboardCachesTable createAlias(String alias) {
    return $DashboardCachesTable(attachedDatabase, alias);
  }
}

class DashboardCache extends DataClass implements Insertable<DashboardCache> {
  final int businessId;
  final String payload;
  final DateTime syncedAt;
  const DashboardCache({
    required this.businessId,
    required this.payload,
    required this.syncedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['business_id'] = Variable<int>(businessId);
    map['payload'] = Variable<String>(payload);
    map['synced_at'] = Variable<DateTime>(syncedAt);
    return map;
  }

  DashboardCachesCompanion toCompanion(bool nullToAbsent) {
    return DashboardCachesCompanion(
      businessId: Value(businessId),
      payload: Value(payload),
      syncedAt: Value(syncedAt),
    );
  }

  factory DashboardCache.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DashboardCache(
      businessId: serializer.fromJson<int>(json['businessId']),
      payload: serializer.fromJson<String>(json['payload']),
      syncedAt: serializer.fromJson<DateTime>(json['syncedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'businessId': serializer.toJson<int>(businessId),
      'payload': serializer.toJson<String>(payload),
      'syncedAt': serializer.toJson<DateTime>(syncedAt),
    };
  }

  DashboardCache copyWith({
    int? businessId,
    String? payload,
    DateTime? syncedAt,
  }) => DashboardCache(
    businessId: businessId ?? this.businessId,
    payload: payload ?? this.payload,
    syncedAt: syncedAt ?? this.syncedAt,
  );
  DashboardCache copyWithCompanion(DashboardCachesCompanion data) {
    return DashboardCache(
      businessId: data.businessId.present
          ? data.businessId.value
          : this.businessId,
      payload: data.payload.present ? data.payload.value : this.payload,
      syncedAt: data.syncedAt.present ? data.syncedAt.value : this.syncedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DashboardCache(')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(businessId, payload, syncedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DashboardCache &&
          other.businessId == this.businessId &&
          other.payload == this.payload &&
          other.syncedAt == this.syncedAt);
}

class DashboardCachesCompanion extends UpdateCompanion<DashboardCache> {
  final Value<int> businessId;
  final Value<String> payload;
  final Value<DateTime> syncedAt;
  const DashboardCachesCompanion({
    this.businessId = const Value.absent(),
    this.payload = const Value.absent(),
    this.syncedAt = const Value.absent(),
  });
  DashboardCachesCompanion.insert({
    this.businessId = const Value.absent(),
    required String payload,
    required DateTime syncedAt,
  }) : payload = Value(payload),
       syncedAt = Value(syncedAt);
  static Insertable<DashboardCache> custom({
    Expression<int>? businessId,
    Expression<String>? payload,
    Expression<DateTime>? syncedAt,
  }) {
    return RawValuesInsertable({
      if (businessId != null) 'business_id': businessId,
      if (payload != null) 'payload': payload,
      if (syncedAt != null) 'synced_at': syncedAt,
    });
  }

  DashboardCachesCompanion copyWith({
    Value<int>? businessId,
    Value<String>? payload,
    Value<DateTime>? syncedAt,
  }) {
    return DashboardCachesCompanion(
      businessId: businessId ?? this.businessId,
      payload: payload ?? this.payload,
      syncedAt: syncedAt ?? this.syncedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (businessId.present) {
      map['business_id'] = Variable<int>(businessId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (syncedAt.present) {
      map['synced_at'] = Variable<DateTime>(syncedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DashboardCachesCompanion(')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('syncedAt: $syncedAt')
          ..write(')'))
        .toString();
  }
}

class $InvoiceCachesTable extends InvoiceCaches
    with TableInfo<$InvoiceCachesTable, InvoiceCache> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InvoiceCachesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta = const VerificationMeta(
    'localId',
  );
  @override
  late final GeneratedColumn<int> localId = GeneratedColumn<int>(
    'local_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<int> businessId = GeneratedColumn<int>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    localId,
    businessId,
    payload,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'invoice_caches';
  @override
  VerificationContext validateIntegrity(
    Insertable<InvoiceCache> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(
        _localIdMeta,
        localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta),
      );
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  InvoiceCache map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InvoiceCache(
      localId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}local_id'],
      )!,
      businessId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}business_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $InvoiceCachesTable createAlias(String alias) {
    return $InvoiceCachesTable(attachedDatabase, alias);
  }
}

class InvoiceCache extends DataClass implements Insertable<InvoiceCache> {
  final int localId;
  final int businessId;
  final String payload;
  final DateTime updatedAt;
  const InvoiceCache({
    required this.localId,
    required this.businessId,
    required this.payload,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<int>(localId);
    map['business_id'] = Variable<int>(businessId);
    map['payload'] = Variable<String>(payload);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  InvoiceCachesCompanion toCompanion(bool nullToAbsent) {
    return InvoiceCachesCompanion(
      localId: Value(localId),
      businessId: Value(businessId),
      payload: Value(payload),
      updatedAt: Value(updatedAt),
    );
  }

  factory InvoiceCache.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InvoiceCache(
      localId: serializer.fromJson<int>(json['localId']),
      businessId: serializer.fromJson<int>(json['businessId']),
      payload: serializer.fromJson<String>(json['payload']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'localId': serializer.toJson<int>(localId),
      'businessId': serializer.toJson<int>(businessId),
      'payload': serializer.toJson<String>(payload),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  InvoiceCache copyWith({
    int? localId,
    int? businessId,
    String? payload,
    DateTime? updatedAt,
  }) => InvoiceCache(
    localId: localId ?? this.localId,
    businessId: businessId ?? this.businessId,
    payload: payload ?? this.payload,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  InvoiceCache copyWithCompanion(InvoiceCachesCompanion data) {
    return InvoiceCache(
      localId: data.localId.present ? data.localId.value : this.localId,
      businessId: data.businessId.present
          ? data.businessId.value
          : this.businessId,
      payload: data.payload.present ? data.payload.value : this.payload,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InvoiceCache(')
          ..write('localId: $localId, ')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(localId, businessId, payload, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InvoiceCache &&
          other.localId == this.localId &&
          other.businessId == this.businessId &&
          other.payload == this.payload &&
          other.updatedAt == this.updatedAt);
}

class InvoiceCachesCompanion extends UpdateCompanion<InvoiceCache> {
  final Value<int> localId;
  final Value<int> businessId;
  final Value<String> payload;
  final Value<DateTime> updatedAt;
  const InvoiceCachesCompanion({
    this.localId = const Value.absent(),
    this.businessId = const Value.absent(),
    this.payload = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  InvoiceCachesCompanion.insert({
    this.localId = const Value.absent(),
    required int businessId,
    required String payload,
    required DateTime updatedAt,
  }) : businessId = Value(businessId),
       payload = Value(payload),
       updatedAt = Value(updatedAt);
  static Insertable<InvoiceCache> custom({
    Expression<int>? localId,
    Expression<int>? businessId,
    Expression<String>? payload,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (businessId != null) 'business_id': businessId,
      if (payload != null) 'payload': payload,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  InvoiceCachesCompanion copyWith({
    Value<int>? localId,
    Value<int>? businessId,
    Value<String>? payload,
    Value<DateTime>? updatedAt,
  }) {
    return InvoiceCachesCompanion(
      localId: localId ?? this.localId,
      businessId: businessId ?? this.businessId,
      payload: payload ?? this.payload,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<int>(localId.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<int>(businessId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InvoiceCachesCompanion(')
          ..write('localId: $localId, ')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $ExpenseCachesTable extends ExpenseCaches
    with TableInfo<$ExpenseCachesTable, ExpenseCache> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ExpenseCachesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _localIdMeta = const VerificationMeta(
    'localId',
  );
  @override
  late final GeneratedColumn<int> localId = GeneratedColumn<int>(
    'local_id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<int> businessId = GeneratedColumn<int>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    localId,
    businessId,
    payload,
    updatedAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'expense_caches';
  @override
  VerificationContext validateIntegrity(
    Insertable<ExpenseCache> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('local_id')) {
      context.handle(
        _localIdMeta,
        localId.isAcceptableOrUnknown(data['local_id']!, _localIdMeta),
      );
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {localId};
  @override
  ExpenseCache map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ExpenseCache(
      localId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}local_id'],
      )!,
      businessId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}business_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
    );
  }

  @override
  $ExpenseCachesTable createAlias(String alias) {
    return $ExpenseCachesTable(attachedDatabase, alias);
  }
}

class ExpenseCache extends DataClass implements Insertable<ExpenseCache> {
  final int localId;
  final int businessId;
  final String payload;
  final DateTime updatedAt;
  const ExpenseCache({
    required this.localId,
    required this.businessId,
    required this.payload,
    required this.updatedAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['local_id'] = Variable<int>(localId);
    map['business_id'] = Variable<int>(businessId);
    map['payload'] = Variable<String>(payload);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  ExpenseCachesCompanion toCompanion(bool nullToAbsent) {
    return ExpenseCachesCompanion(
      localId: Value(localId),
      businessId: Value(businessId),
      payload: Value(payload),
      updatedAt: Value(updatedAt),
    );
  }

  factory ExpenseCache.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ExpenseCache(
      localId: serializer.fromJson<int>(json['localId']),
      businessId: serializer.fromJson<int>(json['businessId']),
      payload: serializer.fromJson<String>(json['payload']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'localId': serializer.toJson<int>(localId),
      'businessId': serializer.toJson<int>(businessId),
      'payload': serializer.toJson<String>(payload),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  ExpenseCache copyWith({
    int? localId,
    int? businessId,
    String? payload,
    DateTime? updatedAt,
  }) => ExpenseCache(
    localId: localId ?? this.localId,
    businessId: businessId ?? this.businessId,
    payload: payload ?? this.payload,
    updatedAt: updatedAt ?? this.updatedAt,
  );
  ExpenseCache copyWithCompanion(ExpenseCachesCompanion data) {
    return ExpenseCache(
      localId: data.localId.present ? data.localId.value : this.localId,
      businessId: data.businessId.present
          ? data.businessId.value
          : this.businessId,
      payload: data.payload.present ? data.payload.value : this.payload,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseCache(')
          ..write('localId: $localId, ')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(localId, businessId, payload, updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ExpenseCache &&
          other.localId == this.localId &&
          other.businessId == this.businessId &&
          other.payload == this.payload &&
          other.updatedAt == this.updatedAt);
}

class ExpenseCachesCompanion extends UpdateCompanion<ExpenseCache> {
  final Value<int> localId;
  final Value<int> businessId;
  final Value<String> payload;
  final Value<DateTime> updatedAt;
  const ExpenseCachesCompanion({
    this.localId = const Value.absent(),
    this.businessId = const Value.absent(),
    this.payload = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  ExpenseCachesCompanion.insert({
    this.localId = const Value.absent(),
    required int businessId,
    required String payload,
    required DateTime updatedAt,
  }) : businessId = Value(businessId),
       payload = Value(payload),
       updatedAt = Value(updatedAt);
  static Insertable<ExpenseCache> custom({
    Expression<int>? localId,
    Expression<int>? businessId,
    Expression<String>? payload,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (localId != null) 'local_id': localId,
      if (businessId != null) 'business_id': businessId,
      if (payload != null) 'payload': payload,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  ExpenseCachesCompanion copyWith({
    Value<int>? localId,
    Value<int>? businessId,
    Value<String>? payload,
    Value<DateTime>? updatedAt,
  }) {
    return ExpenseCachesCompanion(
      localId: localId ?? this.localId,
      businessId: businessId ?? this.businessId,
      payload: payload ?? this.payload,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (localId.present) {
      map['local_id'] = Variable<int>(localId.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<int>(businessId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExpenseCachesCompanion(')
          ..write('localId: $localId, ')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

class $OutboxEntriesTable extends OutboxEntries
    with TableInfo<$OutboxEntriesTable, OutboxEntry> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OutboxEntriesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _featureMeta = const VerificationMeta(
    'feature',
  );
  @override
  late final GeneratedColumn<String> feature = GeneratedColumn<String>(
    'feature',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _operationMeta = const VerificationMeta(
    'operation',
  );
  @override
  late final GeneratedColumn<String> operation = GeneratedColumn<String>(
    'operation',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _businessIdMeta = const VerificationMeta(
    'businessId',
  );
  @override
  late final GeneratedColumn<int> businessId = GeneratedColumn<int>(
    'business_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _payloadMeta = const VerificationMeta(
    'payload',
  );
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
    'payload',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _syncStateMeta = const VerificationMeta(
    'syncState',
  );
  @override
  late final GeneratedColumn<String> syncState = GeneratedColumn<String>(
    'sync_state',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('pending'),
  );
  static const VerificationMeta _idempotencyKeyMeta = const VerificationMeta(
    'idempotencyKey',
  );
  @override
  late final GeneratedColumn<String> idempotencyKey = GeneratedColumn<String>(
    'idempotency_key',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _errorMessageMeta = const VerificationMeta(
    'errorMessage',
  );
  @override
  late final GeneratedColumn<String> errorMessage = GeneratedColumn<String>(
    'error_message',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    feature,
    operation,
    businessId,
    payload,
    syncState,
    idempotencyKey,
    errorMessage,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'outbox_entries';
  @override
  VerificationContext validateIntegrity(
    Insertable<OutboxEntry> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('feature')) {
      context.handle(
        _featureMeta,
        feature.isAcceptableOrUnknown(data['feature']!, _featureMeta),
      );
    } else if (isInserting) {
      context.missing(_featureMeta);
    }
    if (data.containsKey('operation')) {
      context.handle(
        _operationMeta,
        operation.isAcceptableOrUnknown(data['operation']!, _operationMeta),
      );
    } else if (isInserting) {
      context.missing(_operationMeta);
    }
    if (data.containsKey('business_id')) {
      context.handle(
        _businessIdMeta,
        businessId.isAcceptableOrUnknown(data['business_id']!, _businessIdMeta),
      );
    } else if (isInserting) {
      context.missing(_businessIdMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(
        _payloadMeta,
        payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta),
      );
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('sync_state')) {
      context.handle(
        _syncStateMeta,
        syncState.isAcceptableOrUnknown(data['sync_state']!, _syncStateMeta),
      );
    }
    if (data.containsKey('idempotency_key')) {
      context.handle(
        _idempotencyKeyMeta,
        idempotencyKey.isAcceptableOrUnknown(
          data['idempotency_key']!,
          _idempotencyKeyMeta,
        ),
      );
    }
    if (data.containsKey('error_message')) {
      context.handle(
        _errorMessageMeta,
        errorMessage.isAcceptableOrUnknown(
          data['error_message']!,
          _errorMessageMeta,
        ),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OutboxEntry map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OutboxEntry(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      feature: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}feature'],
      )!,
      operation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}operation'],
      )!,
      businessId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}business_id'],
      )!,
      payload: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}payload'],
      )!,
      syncState: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sync_state'],
      )!,
      idempotencyKey: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}idempotency_key'],
      ),
      errorMessage: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}error_message'],
      ),
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $OutboxEntriesTable createAlias(String alias) {
    return $OutboxEntriesTable(attachedDatabase, alias);
  }
}

class OutboxEntry extends DataClass implements Insertable<OutboxEntry> {
  final int id;
  final String feature;
  final String operation;
  final int businessId;
  final String payload;
  final String syncState;
  final String? idempotencyKey;
  final String? errorMessage;
  final DateTime createdAt;
  const OutboxEntry({
    required this.id,
    required this.feature,
    required this.operation,
    required this.businessId,
    required this.payload,
    required this.syncState,
    this.idempotencyKey,
    this.errorMessage,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['feature'] = Variable<String>(feature);
    map['operation'] = Variable<String>(operation);
    map['business_id'] = Variable<int>(businessId);
    map['payload'] = Variable<String>(payload);
    map['sync_state'] = Variable<String>(syncState);
    if (!nullToAbsent || idempotencyKey != null) {
      map['idempotency_key'] = Variable<String>(idempotencyKey);
    }
    if (!nullToAbsent || errorMessage != null) {
      map['error_message'] = Variable<String>(errorMessage);
    }
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  OutboxEntriesCompanion toCompanion(bool nullToAbsent) {
    return OutboxEntriesCompanion(
      id: Value(id),
      feature: Value(feature),
      operation: Value(operation),
      businessId: Value(businessId),
      payload: Value(payload),
      syncState: Value(syncState),
      idempotencyKey: idempotencyKey == null && nullToAbsent
          ? const Value.absent()
          : Value(idempotencyKey),
      errorMessage: errorMessage == null && nullToAbsent
          ? const Value.absent()
          : Value(errorMessage),
      createdAt: Value(createdAt),
    );
  }

  factory OutboxEntry.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OutboxEntry(
      id: serializer.fromJson<int>(json['id']),
      feature: serializer.fromJson<String>(json['feature']),
      operation: serializer.fromJson<String>(json['operation']),
      businessId: serializer.fromJson<int>(json['businessId']),
      payload: serializer.fromJson<String>(json['payload']),
      syncState: serializer.fromJson<String>(json['syncState']),
      idempotencyKey: serializer.fromJson<String?>(json['idempotencyKey']),
      errorMessage: serializer.fromJson<String?>(json['errorMessage']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'feature': serializer.toJson<String>(feature),
      'operation': serializer.toJson<String>(operation),
      'businessId': serializer.toJson<int>(businessId),
      'payload': serializer.toJson<String>(payload),
      'syncState': serializer.toJson<String>(syncState),
      'idempotencyKey': serializer.toJson<String?>(idempotencyKey),
      'errorMessage': serializer.toJson<String?>(errorMessage),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  OutboxEntry copyWith({
    int? id,
    String? feature,
    String? operation,
    int? businessId,
    String? payload,
    String? syncState,
    Value<String?> idempotencyKey = const Value.absent(),
    Value<String?> errorMessage = const Value.absent(),
    DateTime? createdAt,
  }) => OutboxEntry(
    id: id ?? this.id,
    feature: feature ?? this.feature,
    operation: operation ?? this.operation,
    businessId: businessId ?? this.businessId,
    payload: payload ?? this.payload,
    syncState: syncState ?? this.syncState,
    idempotencyKey: idempotencyKey.present
        ? idempotencyKey.value
        : this.idempotencyKey,
    errorMessage: errorMessage.present ? errorMessage.value : this.errorMessage,
    createdAt: createdAt ?? this.createdAt,
  );
  OutboxEntry copyWithCompanion(OutboxEntriesCompanion data) {
    return OutboxEntry(
      id: data.id.present ? data.id.value : this.id,
      feature: data.feature.present ? data.feature.value : this.feature,
      operation: data.operation.present ? data.operation.value : this.operation,
      businessId: data.businessId.present
          ? data.businessId.value
          : this.businessId,
      payload: data.payload.present ? data.payload.value : this.payload,
      syncState: data.syncState.present ? data.syncState.value : this.syncState,
      idempotencyKey: data.idempotencyKey.present
          ? data.idempotencyKey.value
          : this.idempotencyKey,
      errorMessage: data.errorMessage.present
          ? data.errorMessage.value
          : this.errorMessage,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OutboxEntry(')
          ..write('id: $id, ')
          ..write('feature: $feature, ')
          ..write('operation: $operation, ')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('syncState: $syncState, ')
          ..write('idempotencyKey: $idempotencyKey, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    feature,
    operation,
    businessId,
    payload,
    syncState,
    idempotencyKey,
    errorMessage,
    createdAt,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OutboxEntry &&
          other.id == this.id &&
          other.feature == this.feature &&
          other.operation == this.operation &&
          other.businessId == this.businessId &&
          other.payload == this.payload &&
          other.syncState == this.syncState &&
          other.idempotencyKey == this.idempotencyKey &&
          other.errorMessage == this.errorMessage &&
          other.createdAt == this.createdAt);
}

class OutboxEntriesCompanion extends UpdateCompanion<OutboxEntry> {
  final Value<int> id;
  final Value<String> feature;
  final Value<String> operation;
  final Value<int> businessId;
  final Value<String> payload;
  final Value<String> syncState;
  final Value<String?> idempotencyKey;
  final Value<String?> errorMessage;
  final Value<DateTime> createdAt;
  const OutboxEntriesCompanion({
    this.id = const Value.absent(),
    this.feature = const Value.absent(),
    this.operation = const Value.absent(),
    this.businessId = const Value.absent(),
    this.payload = const Value.absent(),
    this.syncState = const Value.absent(),
    this.idempotencyKey = const Value.absent(),
    this.errorMessage = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  OutboxEntriesCompanion.insert({
    this.id = const Value.absent(),
    required String feature,
    required String operation,
    required int businessId,
    required String payload,
    this.syncState = const Value.absent(),
    this.idempotencyKey = const Value.absent(),
    this.errorMessage = const Value.absent(),
    required DateTime createdAt,
  }) : feature = Value(feature),
       operation = Value(operation),
       businessId = Value(businessId),
       payload = Value(payload),
       createdAt = Value(createdAt);
  static Insertable<OutboxEntry> custom({
    Expression<int>? id,
    Expression<String>? feature,
    Expression<String>? operation,
    Expression<int>? businessId,
    Expression<String>? payload,
    Expression<String>? syncState,
    Expression<String>? idempotencyKey,
    Expression<String>? errorMessage,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (feature != null) 'feature': feature,
      if (operation != null) 'operation': operation,
      if (businessId != null) 'business_id': businessId,
      if (payload != null) 'payload': payload,
      if (syncState != null) 'sync_state': syncState,
      if (idempotencyKey != null) 'idempotency_key': idempotencyKey,
      if (errorMessage != null) 'error_message': errorMessage,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  OutboxEntriesCompanion copyWith({
    Value<int>? id,
    Value<String>? feature,
    Value<String>? operation,
    Value<int>? businessId,
    Value<String>? payload,
    Value<String>? syncState,
    Value<String?>? idempotencyKey,
    Value<String?>? errorMessage,
    Value<DateTime>? createdAt,
  }) {
    return OutboxEntriesCompanion(
      id: id ?? this.id,
      feature: feature ?? this.feature,
      operation: operation ?? this.operation,
      businessId: businessId ?? this.businessId,
      payload: payload ?? this.payload,
      syncState: syncState ?? this.syncState,
      idempotencyKey: idempotencyKey ?? this.idempotencyKey,
      errorMessage: errorMessage ?? this.errorMessage,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (feature.present) {
      map['feature'] = Variable<String>(feature.value);
    }
    if (operation.present) {
      map['operation'] = Variable<String>(operation.value);
    }
    if (businessId.present) {
      map['business_id'] = Variable<int>(businessId.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (syncState.present) {
      map['sync_state'] = Variable<String>(syncState.value);
    }
    if (idempotencyKey.present) {
      map['idempotency_key'] = Variable<String>(idempotencyKey.value);
    }
    if (errorMessage.present) {
      map['error_message'] = Variable<String>(errorMessage.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OutboxEntriesCompanion(')
          ..write('id: $id, ')
          ..write('feature: $feature, ')
          ..write('operation: $operation, ')
          ..write('businessId: $businessId, ')
          ..write('payload: $payload, ')
          ..write('syncState: $syncState, ')
          ..write('idempotencyKey: $idempotencyKey, ')
          ..write('errorMessage: $errorMessage, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $SettingsEntriesTable settingsEntries = $SettingsEntriesTable(
    this,
  );
  late final $DashboardCachesTable dashboardCaches = $DashboardCachesTable(
    this,
  );
  late final $InvoiceCachesTable invoiceCaches = $InvoiceCachesTable(this);
  late final $ExpenseCachesTable expenseCaches = $ExpenseCachesTable(this);
  late final $OutboxEntriesTable outboxEntries = $OutboxEntriesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    settingsEntries,
    dashboardCaches,
    invoiceCaches,
    expenseCaches,
    outboxEntries,
  ];
}

typedef $$SettingsEntriesTableCreateCompanionBuilder =
    SettingsEntriesCompanion Function({
      required String key,
      required String value,
      Value<int> rowid,
    });
typedef $$SettingsEntriesTableUpdateCompanionBuilder =
    SettingsEntriesCompanion Function({
      Value<String> key,
      Value<String> value,
      Value<int> rowid,
    });

class $$SettingsEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsEntriesTable> {
  $$SettingsEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsEntriesTable> {
  $$SettingsEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get key => $composableBuilder(
    column: $table.key,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get value => $composableBuilder(
    column: $table.value,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsEntriesTable> {
  $$SettingsEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get key =>
      $composableBuilder(column: $table.key, builder: (column) => column);

  GeneratedColumn<String> get value =>
      $composableBuilder(column: $table.value, builder: (column) => column);
}

class $$SettingsEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsEntriesTable,
          SettingsEntry,
          $$SettingsEntriesTableFilterComposer,
          $$SettingsEntriesTableOrderingComposer,
          $$SettingsEntriesTableAnnotationComposer,
          $$SettingsEntriesTableCreateCompanionBuilder,
          $$SettingsEntriesTableUpdateCompanionBuilder,
          (
            SettingsEntry,
            BaseReferences<_$AppDatabase, $SettingsEntriesTable, SettingsEntry>,
          ),
          SettingsEntry,
          PrefetchHooks Function()
        > {
  $$SettingsEntriesTableTableManager(
    _$AppDatabase db,
    $SettingsEntriesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> key = const Value.absent(),
                Value<String> value = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SettingsEntriesCompanion(
                key: key,
                value: value,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String key,
                required String value,
                Value<int> rowid = const Value.absent(),
              }) => SettingsEntriesCompanion.insert(
                key: key,
                value: value,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsEntriesTable,
      SettingsEntry,
      $$SettingsEntriesTableFilterComposer,
      $$SettingsEntriesTableOrderingComposer,
      $$SettingsEntriesTableAnnotationComposer,
      $$SettingsEntriesTableCreateCompanionBuilder,
      $$SettingsEntriesTableUpdateCompanionBuilder,
      (
        SettingsEntry,
        BaseReferences<_$AppDatabase, $SettingsEntriesTable, SettingsEntry>,
      ),
      SettingsEntry,
      PrefetchHooks Function()
    >;
typedef $$DashboardCachesTableCreateCompanionBuilder =
    DashboardCachesCompanion Function({
      Value<int> businessId,
      required String payload,
      required DateTime syncedAt,
    });
typedef $$DashboardCachesTableUpdateCompanionBuilder =
    DashboardCachesCompanion Function({
      Value<int> businessId,
      Value<String> payload,
      Value<DateTime> syncedAt,
    });

class $$DashboardCachesTableFilterComposer
    extends Composer<_$AppDatabase, $DashboardCachesTable> {
  $$DashboardCachesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get syncedAt => $composableBuilder(
    column: $table.syncedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$DashboardCachesTableOrderingComposer
    extends Composer<_$AppDatabase, $DashboardCachesTable> {
  $$DashboardCachesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get syncedAt => $composableBuilder(
    column: $table.syncedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$DashboardCachesTableAnnotationComposer
    extends Composer<_$AppDatabase, $DashboardCachesTable> {
  $$DashboardCachesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get syncedAt =>
      $composableBuilder(column: $table.syncedAt, builder: (column) => column);
}

class $$DashboardCachesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $DashboardCachesTable,
          DashboardCache,
          $$DashboardCachesTableFilterComposer,
          $$DashboardCachesTableOrderingComposer,
          $$DashboardCachesTableAnnotationComposer,
          $$DashboardCachesTableCreateCompanionBuilder,
          $$DashboardCachesTableUpdateCompanionBuilder,
          (
            DashboardCache,
            BaseReferences<
              _$AppDatabase,
              $DashboardCachesTable,
              DashboardCache
            >,
          ),
          DashboardCache,
          PrefetchHooks Function()
        > {
  $$DashboardCachesTableTableManager(
    _$AppDatabase db,
    $DashboardCachesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$DashboardCachesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$DashboardCachesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$DashboardCachesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> businessId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> syncedAt = const Value.absent(),
              }) => DashboardCachesCompanion(
                businessId: businessId,
                payload: payload,
                syncedAt: syncedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> businessId = const Value.absent(),
                required String payload,
                required DateTime syncedAt,
              }) => DashboardCachesCompanion.insert(
                businessId: businessId,
                payload: payload,
                syncedAt: syncedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$DashboardCachesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $DashboardCachesTable,
      DashboardCache,
      $$DashboardCachesTableFilterComposer,
      $$DashboardCachesTableOrderingComposer,
      $$DashboardCachesTableAnnotationComposer,
      $$DashboardCachesTableCreateCompanionBuilder,
      $$DashboardCachesTableUpdateCompanionBuilder,
      (
        DashboardCache,
        BaseReferences<_$AppDatabase, $DashboardCachesTable, DashboardCache>,
      ),
      DashboardCache,
      PrefetchHooks Function()
    >;
typedef $$InvoiceCachesTableCreateCompanionBuilder =
    InvoiceCachesCompanion Function({
      Value<int> localId,
      required int businessId,
      required String payload,
      required DateTime updatedAt,
    });
typedef $$InvoiceCachesTableUpdateCompanionBuilder =
    InvoiceCachesCompanion Function({
      Value<int> localId,
      Value<int> businessId,
      Value<String> payload,
      Value<DateTime> updatedAt,
    });

class $$InvoiceCachesTableFilterComposer
    extends Composer<_$AppDatabase, $InvoiceCachesTable> {
  $$InvoiceCachesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$InvoiceCachesTableOrderingComposer
    extends Composer<_$AppDatabase, $InvoiceCachesTable> {
  $$InvoiceCachesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$InvoiceCachesTableAnnotationComposer
    extends Composer<_$AppDatabase, $InvoiceCachesTable> {
  $$InvoiceCachesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$InvoiceCachesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $InvoiceCachesTable,
          InvoiceCache,
          $$InvoiceCachesTableFilterComposer,
          $$InvoiceCachesTableOrderingComposer,
          $$InvoiceCachesTableAnnotationComposer,
          $$InvoiceCachesTableCreateCompanionBuilder,
          $$InvoiceCachesTableUpdateCompanionBuilder,
          (
            InvoiceCache,
            BaseReferences<_$AppDatabase, $InvoiceCachesTable, InvoiceCache>,
          ),
          InvoiceCache,
          PrefetchHooks Function()
        > {
  $$InvoiceCachesTableTableManager(_$AppDatabase db, $InvoiceCachesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InvoiceCachesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InvoiceCachesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InvoiceCachesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                Value<int> businessId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => InvoiceCachesCompanion(
                localId: localId,
                businessId: businessId,
                payload: payload,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                required int businessId,
                required String payload,
                required DateTime updatedAt,
              }) => InvoiceCachesCompanion.insert(
                localId: localId,
                businessId: businessId,
                payload: payload,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$InvoiceCachesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $InvoiceCachesTable,
      InvoiceCache,
      $$InvoiceCachesTableFilterComposer,
      $$InvoiceCachesTableOrderingComposer,
      $$InvoiceCachesTableAnnotationComposer,
      $$InvoiceCachesTableCreateCompanionBuilder,
      $$InvoiceCachesTableUpdateCompanionBuilder,
      (
        InvoiceCache,
        BaseReferences<_$AppDatabase, $InvoiceCachesTable, InvoiceCache>,
      ),
      InvoiceCache,
      PrefetchHooks Function()
    >;
typedef $$ExpenseCachesTableCreateCompanionBuilder =
    ExpenseCachesCompanion Function({
      Value<int> localId,
      required int businessId,
      required String payload,
      required DateTime updatedAt,
    });
typedef $$ExpenseCachesTableUpdateCompanionBuilder =
    ExpenseCachesCompanion Function({
      Value<int> localId,
      Value<int> businessId,
      Value<String> payload,
      Value<DateTime> updatedAt,
    });

class $$ExpenseCachesTableFilterComposer
    extends Composer<_$AppDatabase, $ExpenseCachesTable> {
  $$ExpenseCachesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ExpenseCachesTableOrderingComposer
    extends Composer<_$AppDatabase, $ExpenseCachesTable> {
  $$ExpenseCachesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get localId => $composableBuilder(
    column: $table.localId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ExpenseCachesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ExpenseCachesTable> {
  $$ExpenseCachesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get localId =>
      $composableBuilder(column: $table.localId, builder: (column) => column);

  GeneratedColumn<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$ExpenseCachesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ExpenseCachesTable,
          ExpenseCache,
          $$ExpenseCachesTableFilterComposer,
          $$ExpenseCachesTableOrderingComposer,
          $$ExpenseCachesTableAnnotationComposer,
          $$ExpenseCachesTableCreateCompanionBuilder,
          $$ExpenseCachesTableUpdateCompanionBuilder,
          (
            ExpenseCache,
            BaseReferences<_$AppDatabase, $ExpenseCachesTable, ExpenseCache>,
          ),
          ExpenseCache,
          PrefetchHooks Function()
        > {
  $$ExpenseCachesTableTableManager(_$AppDatabase db, $ExpenseCachesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ExpenseCachesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ExpenseCachesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ExpenseCachesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                Value<int> businessId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
              }) => ExpenseCachesCompanion(
                localId: localId,
                businessId: businessId,
                payload: payload,
                updatedAt: updatedAt,
              ),
          createCompanionCallback:
              ({
                Value<int> localId = const Value.absent(),
                required int businessId,
                required String payload,
                required DateTime updatedAt,
              }) => ExpenseCachesCompanion.insert(
                localId: localId,
                businessId: businessId,
                payload: payload,
                updatedAt: updatedAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ExpenseCachesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ExpenseCachesTable,
      ExpenseCache,
      $$ExpenseCachesTableFilterComposer,
      $$ExpenseCachesTableOrderingComposer,
      $$ExpenseCachesTableAnnotationComposer,
      $$ExpenseCachesTableCreateCompanionBuilder,
      $$ExpenseCachesTableUpdateCompanionBuilder,
      (
        ExpenseCache,
        BaseReferences<_$AppDatabase, $ExpenseCachesTable, ExpenseCache>,
      ),
      ExpenseCache,
      PrefetchHooks Function()
    >;
typedef $$OutboxEntriesTableCreateCompanionBuilder =
    OutboxEntriesCompanion Function({
      Value<int> id,
      required String feature,
      required String operation,
      required int businessId,
      required String payload,
      Value<String> syncState,
      Value<String?> idempotencyKey,
      Value<String?> errorMessage,
      required DateTime createdAt,
    });
typedef $$OutboxEntriesTableUpdateCompanionBuilder =
    OutboxEntriesCompanion Function({
      Value<int> id,
      Value<String> feature,
      Value<String> operation,
      Value<int> businessId,
      Value<String> payload,
      Value<String> syncState,
      Value<String?> idempotencyKey,
      Value<String?> errorMessage,
      Value<DateTime> createdAt,
    });

class $$OutboxEntriesTableFilterComposer
    extends Composer<_$AppDatabase, $OutboxEntriesTable> {
  $$OutboxEntriesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get feature => $composableBuilder(
    column: $table.feature,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get syncState => $composableBuilder(
    column: $table.syncState,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get idempotencyKey => $composableBuilder(
    column: $table.idempotencyKey,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$OutboxEntriesTableOrderingComposer
    extends Composer<_$AppDatabase, $OutboxEntriesTable> {
  $$OutboxEntriesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get feature => $composableBuilder(
    column: $table.feature,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get operation => $composableBuilder(
    column: $table.operation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get payload => $composableBuilder(
    column: $table.payload,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get syncState => $composableBuilder(
    column: $table.syncState,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get idempotencyKey => $composableBuilder(
    column: $table.idempotencyKey,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$OutboxEntriesTableAnnotationComposer
    extends Composer<_$AppDatabase, $OutboxEntriesTable> {
  $$OutboxEntriesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get feature =>
      $composableBuilder(column: $table.feature, builder: (column) => column);

  GeneratedColumn<String> get operation =>
      $composableBuilder(column: $table.operation, builder: (column) => column);

  GeneratedColumn<int> get businessId => $composableBuilder(
    column: $table.businessId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<String> get syncState =>
      $composableBuilder(column: $table.syncState, builder: (column) => column);

  GeneratedColumn<String> get idempotencyKey => $composableBuilder(
    column: $table.idempotencyKey,
    builder: (column) => column,
  );

  GeneratedColumn<String> get errorMessage => $composableBuilder(
    column: $table.errorMessage,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$OutboxEntriesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $OutboxEntriesTable,
          OutboxEntry,
          $$OutboxEntriesTableFilterComposer,
          $$OutboxEntriesTableOrderingComposer,
          $$OutboxEntriesTableAnnotationComposer,
          $$OutboxEntriesTableCreateCompanionBuilder,
          $$OutboxEntriesTableUpdateCompanionBuilder,
          (
            OutboxEntry,
            BaseReferences<_$AppDatabase, $OutboxEntriesTable, OutboxEntry>,
          ),
          OutboxEntry,
          PrefetchHooks Function()
        > {
  $$OutboxEntriesTableTableManager(_$AppDatabase db, $OutboxEntriesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OutboxEntriesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OutboxEntriesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OutboxEntriesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> feature = const Value.absent(),
                Value<String> operation = const Value.absent(),
                Value<int> businessId = const Value.absent(),
                Value<String> payload = const Value.absent(),
                Value<String> syncState = const Value.absent(),
                Value<String?> idempotencyKey = const Value.absent(),
                Value<String?> errorMessage = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => OutboxEntriesCompanion(
                id: id,
                feature: feature,
                operation: operation,
                businessId: businessId,
                payload: payload,
                syncState: syncState,
                idempotencyKey: idempotencyKey,
                errorMessage: errorMessage,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String feature,
                required String operation,
                required int businessId,
                required String payload,
                Value<String> syncState = const Value.absent(),
                Value<String?> idempotencyKey = const Value.absent(),
                Value<String?> errorMessage = const Value.absent(),
                required DateTime createdAt,
              }) => OutboxEntriesCompanion.insert(
                id: id,
                feature: feature,
                operation: operation,
                businessId: businessId,
                payload: payload,
                syncState: syncState,
                idempotencyKey: idempotencyKey,
                errorMessage: errorMessage,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$OutboxEntriesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $OutboxEntriesTable,
      OutboxEntry,
      $$OutboxEntriesTableFilterComposer,
      $$OutboxEntriesTableOrderingComposer,
      $$OutboxEntriesTableAnnotationComposer,
      $$OutboxEntriesTableCreateCompanionBuilder,
      $$OutboxEntriesTableUpdateCompanionBuilder,
      (
        OutboxEntry,
        BaseReferences<_$AppDatabase, $OutboxEntriesTable, OutboxEntry>,
      ),
      OutboxEntry,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$SettingsEntriesTableTableManager get settingsEntries =>
      $$SettingsEntriesTableTableManager(_db, _db.settingsEntries);
  $$DashboardCachesTableTableManager get dashboardCaches =>
      $$DashboardCachesTableTableManager(_db, _db.dashboardCaches);
  $$InvoiceCachesTableTableManager get invoiceCaches =>
      $$InvoiceCachesTableTableManager(_db, _db.invoiceCaches);
  $$ExpenseCachesTableTableManager get expenseCaches =>
      $$ExpenseCachesTableTableManager(_db, _db.expenseCaches);
  $$OutboxEntriesTableTableManager get outboxEntries =>
      $$OutboxEntriesTableTableManager(_db, _db.outboxEntries);
}
