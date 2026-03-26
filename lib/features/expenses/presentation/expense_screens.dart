import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/ui.dart';
import '../domain/expense_models.dart';

final expenseSearchProvider = StateProvider<String>((ref) => '');
final expensesProvider = FutureProvider.autoDispose((ref) async {
  final business = ref.watch(businessControllerProvider).valueOrNull?.activeBusiness;
  if (business == null) throw Exception('Select a business to continue.');
  return ref.read(expensesRepositoryProvider).fetchExpenses(
        business.id,
        search: ref.watch(expenseSearchProvider),
      );
});

class ExpensesPage extends ConsumerWidget {
  const ExpensesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final expenses = ref.watch(expensesProvider);
    return AppPage(
      title: 'Expenses',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const ExpenseFormPage())),
        label: const Text('New expense'),
        icon: const Icon(Icons.add),
      ),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search), labelText: 'Search expenses'),
            onChanged: (value) => ref.read(expenseSearchProvider.notifier).state = value,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: expenses.when(
              data: (items) {
                if (items.isEmpty) {
                  return const EmptyStateView(title: 'No expenses', message: 'Create your first expense or reconnect to load synced records.');
                }
                return ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final expense = items[index];
                    return SectionCard(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(expense.title),
                        subtitle: Text('${expense.category} • ${expense.taxDeductible ? 'Deductible' : 'Non-deductible'}'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(Formatters.money(expense.totalAmount)),
                            if (expense.syncState != 'synced') Text(expense.syncState),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(expensesProvider)),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}

class ExpenseFormPage extends ConsumerStatefulWidget {
  const ExpenseFormPage({super.key});

  @override
  ConsumerState<ExpenseFormPage> createState() => _ExpenseFormPageState();
}

class _ExpenseFormPageState extends ConsumerState<ExpenseFormPage> {
  final titleController = TextEditingController();
  final categoryController = TextEditingController(text: 'other');
  final amountController = TextEditingController(text: '0');
  final vatController = TextEditingController(text: '0');
  bool deductible = true;

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'New expense',
      child: ListView(
        children: [
          TextField(controller: titleController, decoration: const InputDecoration(labelText: 'Title')),
          const SizedBox(height: 12),
          TextField(controller: categoryController, decoration: const InputDecoration(labelText: 'Category')),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: TextField(controller: amountController, decoration: const InputDecoration(labelText: 'Amount'))),
              const SizedBox(width: 12),
              Expanded(child: TextField(controller: vatController, decoration: const InputDecoration(labelText: 'VAT'))),
            ],
          ),
          const SizedBox(height: 12),
          SwitchListTile(
            value: deductible,
            onChanged: (value) => setState(() => deductible = value),
            title: const Text('Tax deductible'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () async {
              final businessId = ref.read(businessControllerProvider).valueOrNull?.activeBusinessId;
              if (businessId == null) return;
              await ref.read(expensesRepositoryProvider).saveExpense(
                    businessId: businessId,
                    expense: Expense(
                      title: titleController.text.trim(),
                      category: categoryController.text.trim(),
                      amount: double.tryParse(amountController.text.trim()) ?? 0,
                      vatAmount: double.tryParse(vatController.text.trim()) ?? 0,
                      expenseDate: DateTime.now(),
                      taxDeductible: deductible,
                    ),
                  );
              ref.invalidate(expensesProvider);
              if (context.mounted) Navigator.of(context).pop();
            },
            child: const Text('Save expense'),
          ),
        ],
      ),
    );
  }
}
