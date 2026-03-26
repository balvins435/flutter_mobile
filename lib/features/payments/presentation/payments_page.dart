import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/ui.dart';

final paymentsProvider = FutureProvider.autoDispose((ref) async {
  final businessId = ref.watch(businessControllerProvider).valueOrNull?.activeBusinessId;
  if (businessId == null) return <dynamic>[];
  return ref.read(paymentsRepositoryProvider).fetchTransactions(businessId);
});

class PaymentsPage extends ConsumerWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final payments = ref.watch(paymentsProvider);
    return AppPage(
      title: 'Payments',
      child: payments.when(
        data: (items) => ListView(
          children: [
            const SectionCard(child: Text('M-Pesa STK pushes stay online-only and use idempotency keys per request.')),
            const SizedBox(height: 12),
            for (final payment in items)
              SectionCard(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(payment.invoiceNumber ?? 'Invoice payment'),
                  subtitle: Text(payment.status),
                  trailing: Text(Formatters.money(payment.amount)),
                ),
              ),
          ],
        ),
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(paymentsProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
