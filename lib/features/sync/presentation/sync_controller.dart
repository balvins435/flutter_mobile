import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';

class SyncController extends AsyncNotifier<List<String>> {
  @override
  Future<List<String>> build() async {
    final outbox = await ref.read(appDatabaseProvider).pendingOutbox();
    return outbox.map((item) => item.feature + ':' + item.operation + ':' + item.syncState).toList();
  }

  Future<void> processQueue() async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final db = ref.read(appDatabaseProvider);
      final api = ref.read(apiClientProvider).dio;
      final outbox = await db.pendingOutbox();
      final results = <String>[];

      for (final entry in outbox) {
        try {
          final payload = jsonDecode(entry.payload) as Map<String, dynamic>;
          if (entry.feature == 'invoice' && entry.operation == 'create') {
            await api.post('/invoice/', data: payload);
          } else if (entry.feature == 'expense' && entry.operation == 'create') {
            await api.post('/expenses/', data: payload);
          } else {
            await db.markOutboxStatus(entry.id, 'failed', errorMessage: 'Queued update handling is not implemented yet.');
            results.add(entry.feature + ':' + entry.operation + ':failed');
            continue;
          }
          await db.markOutboxStatus(entry.id, 'synced');
          results.add(entry.feature + ':' + entry.operation + ':synced');
        } catch (error) {
          await db.markOutboxStatus(entry.id, 'failed', errorMessage: error.toString());
          results.add(entry.feature + ':' + entry.operation + ':failed');
        }
      }
      return results;
    });
  }
}
