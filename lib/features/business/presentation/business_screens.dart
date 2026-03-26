import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers.dart';
import '../../../shared/widgets/ui.dart';

class BusinessSelectorPage extends ConsumerWidget {
  const BusinessSelectorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(businessControllerProvider);
    return AppPage(
      title: 'Select business',
      actions: [IconButton(onPressed: () => context.go('/businesses/new'), icon: const Icon(Icons.add))],
      child: state.when(
        data: (data) {
          if (data.businesses.isEmpty) {
            return EmptyStateView(
              title: 'No business yet',
              message: 'Create your first business profile to unlock dashboard, invoices, expenses, reports, and tax workflows.',
              action: FilledButton(onPressed: () => context.go('/businesses/new'), child: const Text('Create business')),
            );
          }
          return ListView.separated(
            itemCount: data.businesses.length,
            separatorBuilder: (_, __) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final business = data.businesses[index];
              return SectionCard(
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(business.label),
                  subtitle: Text(business.email),
                  trailing: data.activeBusinessId == business.id ? const Icon(Icons.check_circle) : null,
                  onTap: () async {
                    await ref.read(businessControllerProvider.notifier).selectBusiness(business.id);
                    if (context.mounted) context.go('/dashboard');
                  },
                ),
              );
            },
          );
        },
        error: (error, _) => ErrorStateView(message: error.toString(), onRetry: () => ref.invalidate(businessControllerProvider)),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class BusinessFormPage extends ConsumerStatefulWidget {
  const BusinessFormPage({super.key});

  @override
  ConsumerState<BusinessFormPage> createState() => _BusinessFormPageState();
}

class _BusinessFormPageState extends ConsumerState<BusinessFormPage> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final taxRateController = TextEditingController(text: '16');

  @override
  Widget build(BuildContext context) {
    return AppPage(
      title: 'New business',
      child: ListView(
        children: [
          TextField(controller: nameController, decoration: const InputDecoration(labelText: 'Business name')),
          const SizedBox(height: 12),
          TextField(controller: emailController, decoration: const InputDecoration(labelText: 'Business email')),
          const SizedBox(height: 12),
          TextField(controller: phoneController, decoration: const InputDecoration(labelText: 'Phone number')),
          const SizedBox(height: 12),
          TextField(controller: addressController, decoration: const InputDecoration(labelText: 'Address'), maxLines: 3),
          const SizedBox(height: 12),
          TextField(controller: taxRateController, decoration: const InputDecoration(labelText: 'Tax rate'), keyboardType: TextInputType.number),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: () async {
              await ref.read(businessControllerProvider.notifier).createBusiness(
                    name: nameController.text.trim(),
                    email: emailController.text.trim(),
                    phone: phoneController.text.trim(),
                    address: addressController.text.trim(),
                    taxRate: double.tryParse(taxRateController.text.trim()) ?? 16,
                  );
              if (context.mounted) context.go('/dashboard');
            },
            child: const Text('Save business'),
          ),
        ],
      ),
    );
  }
}
