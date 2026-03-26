import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/providers.dart';
import '../../auth/domain/auth_models.dart';
import '../../../shared/widgets/ui.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authControllerProvider).valueOrNull;
    final user = auth?.mapOrNull(authenticated: (value) => value.user);
    return AppPage(
      title: 'Settings',
      child: ListView(
        children: [
          SectionCard(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user?.fullName ?? 'User', style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(height: 4),
                Text(user?.email ?? ''),
              ],
            ),
          ),
          const SizedBox(height: 12),
          SectionCard(
            child: Column(
              children: [
                ListTile(contentPadding: EdgeInsets.zero, title: const Text('Sync center'), trailing: const Icon(Icons.chevron_right), onTap: () => context.go('/sync')),
                ListTile(contentPadding: EdgeInsets.zero, title: const Text('WhatsApp messaging'), trailing: const Icon(Icons.chevron_right), onTap: () => context.go('/messaging')),
                ListTile(contentPadding: EdgeInsets.zero, title: const Text('Tax submissions'), trailing: const Icon(Icons.chevron_right), onTap: () => context.go('/tax')),
                ListTile(contentPadding: EdgeInsets.zero, title: const Text('Reports'), trailing: const Icon(Icons.chevron_right), onTap: () => context.go('/reports')),
              ],
            ),
          ),
          const SizedBox(height: 12),
          FilledButton.tonal(
            onPressed: () async {
              await ref.read(authControllerProvider.notifier).logout();
              if (context.mounted) context.go('/auth/login');
            },
            child: const Text('Log out'),
          ),
        ],
      ),
    );
  }
}
