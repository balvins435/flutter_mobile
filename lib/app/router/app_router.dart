import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/providers.dart';
import '../../features/auth/presentation/auth_screens.dart';
import '../../features/auth/domain/auth_models.dart';
import '../../features/business/presentation/business_screens.dart';
import '../../features/dashboard/presentation/dashboard_page.dart';
import '../../features/expenses/presentation/expense_screens.dart';
import '../../features/invoices/presentation/invoice_screens.dart';
import '../../features/messaging/presentation/messaging_page.dart';
import '../../features/payments/presentation/payments_page.dart';
import '../../features/reports/presentation/reports_page.dart';
import '../../features/settings/presentation/settings_page.dart';
import '../../features/sync/presentation/sync_page.dart';
import '../../features/tax/presentation/tax_page.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final auth = ref.watch(authControllerProvider);
  final business = ref.watch(businessControllerProvider);

  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final location = state.uri.path;
      final loading = auth.isLoading || business.isLoading;
      final isAuthRoute = location.startsWith('/auth');
      final isBusinessRoute = location.startsWith('/businesses');

      if (loading && location != '/splash') return '/splash';

      final authState = auth.valueOrNull;
      final isAuthenticated = authState?.mapOrNull(authenticated: (_) => true) ?? false;
      final activeBusiness = business.valueOrNull?.activeBusiness;

      if (!isAuthenticated) {
        if (isAuthRoute || location == '/splash') return null;
        return '/auth/login';
      }

      if (activeBusiness == null && !isBusinessRoute) {
        return '/businesses/select';
      }

      if (location == '/splash' || isAuthRoute) return '/dashboard';
      return null;
    },
    routes: [
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
      GoRoute(path: '/auth/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/auth/register', builder: (context, state) => const RegisterPage()),
      GoRoute(path: '/auth/forgot', builder: (context, state) => const ForgotPasswordPage()),
      GoRoute(path: '/auth/reset', builder: (context, state) => const ResetPasswordPage()),
      GoRoute(path: '/businesses/select', builder: (context, state) => const BusinessSelectorPage()),
      GoRoute(path: '/businesses/new', builder: (context, state) => const BusinessFormPage()),
      ShellRoute(
        builder: (context, state, child) => AppShell(location: state.uri.path, child: child),
        routes: [
          GoRoute(path: '/dashboard', builder: (context, state) => const DashboardPage()),
          GoRoute(path: '/invoices', builder: (context, state) => const InvoicesPage()),
          GoRoute(path: '/invoices/new', builder: (context, state) => const InvoiceFormPage()),
          GoRoute(path: '/expenses', builder: (context, state) => const ExpensesPage()),
          GoRoute(path: '/expenses/new', builder: (context, state) => const ExpenseFormPage()),
          GoRoute(path: '/payments', builder: (context, state) => const PaymentsPage()),
          GoRoute(path: '/messaging', builder: (context, state) => const MessagingPage()),
          GoRoute(path: '/tax', builder: (context, state) => const TaxPage()),
          GoRoute(path: '/reports', builder: (context, state) => const ReportsPage()),
          GoRoute(path: '/settings', builder: (context, state) => const SettingsPage()),
          GoRoute(path: '/sync', builder: (context, state) => const SyncCenterPage()),
        ],
      ),
    ],
  );
});

class AppShell extends StatelessWidget {
  const AppShell({super.key, required this.location, required this.child});

  final String location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    const locations = ['/dashboard', '/invoices', '/expenses', '/payments', '/settings'];
    final index = locations.indexWhere((item) => location.startsWith(item));
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: index < 0 ? 0 : index,
        onDestinationSelected: (value) => context.go(locations[value]),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.space_dashboard_outlined), label: 'Dashboard'),
          NavigationDestination(icon: Icon(Icons.receipt_long_outlined), label: 'Invoices'),
          NavigationDestination(icon: Icon(Icons.wallet_outlined), label: 'Expenses'),
          NavigationDestination(icon: Icon(Icons.payments_outlined), label: 'Payments'),
          NavigationDestination(icon: Icon(Icons.settings_outlined), label: 'Settings'),
        ],
      ),
    );
  }
}
