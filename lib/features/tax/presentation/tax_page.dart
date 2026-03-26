import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../shared/widgets/ui.dart';

final taxSubmissionsProvider = FutureProvider.autoDispose((ref) async {
  final businessId = ref.watch(businessControllerProvider).valueOrNull?.activeBusinessId;
  if (businessId == null) return <dynamic>[];
  return ref.read(taxRepositoryProvider).fetchSubmissions(businessId);
});

class TaxPage extends ConsumerWidget {
  const TaxPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final submissions = ref.watch(taxSubmissionsProvider);
    return AppPage(
      title: 'Tax submissions',
      child: submissions.when(
        data: (items) => ListView(
          children: [
            const SectionCard(child: Text('Tax submissions remain online-only so the backend stays the source of truth for compliance and invoice numbers.')),
            const SizedBox(height: 12),
            for (final item in items)
              SectionCard(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(item.invoiceNumber ?? 'Invoice submission'),
                  subtitle: Text(item.taxInvoiceNumber ?? 'Pending tax number'),
                  trailing: Text(item.status),
                ),
              ),
          ],
        ),
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(taxSubmissionsProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
