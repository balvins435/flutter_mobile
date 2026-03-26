import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/providers.dart';
import '../../../core/utils/formatters.dart';
import '../../../shared/widgets/ui.dart';
import '../domain/invoice_models.dart';

final invoiceSearchProvider = StateProvider<String>((ref) => '');
final invoicesProvider = FutureProvider.autoDispose((ref) async {
  final business = ref.watch(businessControllerProvider).valueOrNull?.activeBusiness;
  if (business == null) throw Exception('Select a business to continue.');
  return ref.read(invoicesRepositoryProvider).fetchInvoices(
        business.id,
        search: ref.watch(invoiceSearchProvider),
      );
});

class InvoicesPage extends ConsumerWidget {
  const InvoicesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoices = ref.watch(invoicesProvider);
    return AppPage(
      title: 'Invoices',
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => const InvoiceFormPage())),
        label: const Text('New invoice'),
        icon: const Icon(Icons.add),
      ),
      child: Column(
        children: [
          TextField(
            decoration: const InputDecoration(prefixIcon: Icon(Icons.search), labelText: 'Search invoices'),
            onChanged: (value) => ref.read(invoiceSearchProvider.notifier).state = value,
          ),
          const SizedBox(height: 12),
          Expanded(
            child: invoices.when(
              data: (items) {
                if (items.isEmpty) {
                  return const EmptyStateView(title: 'No invoices', message: 'Create your first invoice or reconnect to load synced records.');
                }
                return ListView.separated(
                  itemCount: items.length,
                  separatorBuilder: (_, _) => const SizedBox(height: 12),
                  itemBuilder: (context, index) {
                    final invoice = items[index];
                    return SectionCard(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(invoice.clientName),
                        subtitle: Text('${invoice.invoiceNumber} • ${invoice.status.toUpperCase()}'),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(Formatters.money(invoice.totalAmount)),
                            if (invoice.syncState != 'synced') Text(invoice.syncState),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(invoicesProvider)),
              loading: () => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ],
      ),
    );
  }
}

class InvoiceFormPage extends ConsumerStatefulWidget {
  const InvoiceFormPage({super.key});

  @override
  ConsumerState<InvoiceFormPage> createState() => _InvoiceFormPageState();
}

class _InvoiceFormPageState extends ConsumerState<InvoiceFormPage> {
  final clientNameController = TextEditingController();
  final clientEmailController = TextEditingController();
  final itemController = TextEditingController();
  final quantityController = TextEditingController(text: '1');
  final priceController = TextEditingController(text: '0');

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'New invoice',
      child: ListView(
        children: [
          TextField(controller: clientNameController, decoration: const InputDecoration(labelText: 'Client name')),
          const SizedBox(height: 12),
          TextField(controller: clientEmailController, decoration: const InputDecoration(labelText: 'Client email')),
          const SizedBox(height: 12),
          TextField(controller: itemController, decoration: const InputDecoration(labelText: 'Line item description')),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(child: TextField(controller: quantityController, decoration: const InputDecoration(labelText: 'Qty'))),
              const SizedBox(width: 12),
              Expanded(child: TextField(controller: priceController, decoration: const InputDecoration(labelText: 'Unit price'))),
            ],
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () async {
              final businessId = ref.read(businessControllerProvider).valueOrNull?.activeBusinessId;
              if (businessId == null) return;
              await ref.read(invoicesRepositoryProvider).saveInvoice(
                    businessId: businessId,
                    invoice: Invoice(
                      clientName: clientNameController.text.trim(),
                      clientEmail: clientEmailController.text.trim(),
                      issueDate: DateTime.now(),
                      dueDate: DateTime.now().add(const Duration(days: 7)),
                      items: [
                        InvoiceItem(
                          description: itemController.text.trim(),
                          quantity: int.tryParse(quantityController.text.trim()) ?? 1,
                          unitPrice: double.tryParse(priceController.text.trim()) ?? 0,
                        ),
                      ],
                    ),
                  );
              ref.invalidate(invoicesProvider);
              if (context.mounted) Navigator.of(context).pop();
            },
            child: const Text('Save invoice'),
          ),
        ],
      ),
    );
  }
}
