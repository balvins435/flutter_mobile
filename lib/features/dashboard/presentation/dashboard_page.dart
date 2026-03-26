import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/ui.dart';

final dashboardStatsProvider = FutureProvider.autoDispose((ref) async {
  final business = ref.watch(businessControllerProvider).valueOrNull?.activeBusiness;
  if (business == null) throw Exception('Select a business to continue.');
  return ref.read(dashboardRepositoryProvider).fetchStats(business.id);
});

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboard = ref.watch(dashboardStatsProvider);
    final activeBusiness = ref.watch(businessControllerProvider).valueOrNull?.activeBusiness;
    final isOffline = ref.watch(isOfflineProvider);

    return AppPage(
      title: activeBusiness?.label ?? 'Dashboard',
      child: dashboard.when(
        data: (data) => ListView(
          children: [
            OfflineBanner(visible: isOffline),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              childAspectRatio: 1.3,
              children: [
                MetricTile(label: 'Income', value: Formatters.compactMoney(data.totalIncome), tone: const Color(0xFF0D9488)),
                MetricTile(label: 'Expenses', value: Formatters.compactMoney(data.totalExpenses), tone: const Color(0xFFDC2626)),
                MetricTile(label: 'Net profit', value: Formatters.compactMoney(data.netProfit), tone: const Color(0xFF2563EB)),
                MetricTile(label: 'Pending invoices', value: data.pendingInvoices.toString()),
              ],
            ),
            const SizedBox(height: 16),
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent invoices', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 12),
                  for (final invoice in data.recentInvoices.take(5))
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(invoice.clientName),
                      subtitle: Text(invoice.invoiceNumber),
                      trailing: Text(Formatters.money(invoice.totalAmount)),
                    ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SectionCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recent expenses', style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 12),
                  for (final expense in data.recentExpenses.take(5))
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(expense.title),
                      subtitle: Text(expense.category),
                      trailing: Text(Formatters.money(expense.totalAmount)),
                    ),
                ],
              ),
            ),
          ],
        ),
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(dashboardStatsProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
