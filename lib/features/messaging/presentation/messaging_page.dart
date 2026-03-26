import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../shared/widgets/ui.dart';

final messagingProvider = FutureProvider.autoDispose((ref) async {
  final businessId = ref.watch(businessControllerProvider).valueOrNull?.activeBusinessId;
  if (businessId == null) return <dynamic>[];
  return ref.read(messagingRepositoryProvider).fetchMessages(businessId);
});

class MessagingPage extends ConsumerWidget {
  const MessagingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final messages = ref.watch(messagingProvider);
    return AppPage(
      title: 'WhatsApp messaging',
      child: messages.when(
        data: (items) => ListView(
          children: [
            const SectionCard(child: Text('Invoice WhatsApp sends are online-only and protected with idempotency keys.')),
            const SizedBox(height: 12),
            for (final item in items)
              SectionCard(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item.invoiceNumber ?? 'Invoice message'),
                  subtitle: Text(item.phoneNumber),
                  trailing: Text(item.deliveryStatus),
                ),
              ),
          ],
        ),
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(messagingProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
