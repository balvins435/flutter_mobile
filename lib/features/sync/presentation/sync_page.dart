import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../shared/widgets/ui.dart';

class SyncCenterPage extends ConsumerWidget {
  const SyncCenterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sync = ref.watch(syncControllerProvider);
    final offline = ref.watch(isOfflineProvider);
    return AppPage(
      title: 'Sync center',
      child: sync.when(
        data: (items) => ListView(
          children: [
            OfflineBanner(visible: offline),
            const SectionCard(
              child: Text('Outbox-based sync is enabled for invoices and expenses. Online-only actions such as payments, messaging, and tax submissions are excluded from local queueing.'),
            ),
            const SizedBox(height: 12),
            FilledButton(
              onPressed: offline ? null : () => ref.read(syncControllerProvider.notifier).processQueue(),
              child: const Text('Run sync now'),
            ),
            const SizedBox(height: 12),
            if (items.isEmpty)
              const EmptyStateView(title: 'Outbox is clear', message: 'No pending local mutations are waiting to sync.')
            else
              for (final item in items) SectionCard(child: Text(item)),
          ],
        ),
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(syncControllerProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
