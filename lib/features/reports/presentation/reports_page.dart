import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/ui.dart';

final reportsProvider = FutureProvider.autoDispose((ref) async {
  final businessId = ref.watch(businessControllerProvider).valueOrNull?.activeBusinessId;
  if (businessId == null) return <dynamic>[];
  return ref.read(reportsRepositoryProvider).fetchMonthlyReport(businessId, DateTime.now().year);
});

class ReportsPage extends ConsumerWidget {
  const ReportsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final reports = ref.watch(reportsProvider);
    return AppPage(
      title: 'Reports',
      child: reports.when(
        data: (items) => ListView(
          children: [
            for (final item in items)
              SectionCard(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Month ${item.month ?? '-'}', style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 12),
                    LabeledValue(label: 'Income', value: Formatters.money(item.income)),
                    LabeledValue(label: 'Expenses', value: Formatters.money(item.expenses)),
                    LabeledValue(label: 'Profit', value: Formatters.money(item.profit)),
                    LabeledValue(label: 'Tax due', value: Formatters.money(item.taxDue)),
                  ],
                ),
              ),
          ],
        ),
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(reportsProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
