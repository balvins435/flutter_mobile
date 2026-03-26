import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../features/auth/data/auth_repository.dart';
import '../features/auth/domain/auth_models.dart';
import '../features/auth/presentation/auth_controller.dart';
import '../features/business/data/business_repository.dart';
import '../features/business/presentation/business_controller.dart';
import '../features/dashboard/data/dashboard_repository.dart';
import '../features/expenses/data/expenses_repository.dart';
import '../features/invoices/data/invoices_repository.dart';
import '../features/messaging/data/messaging_repository.dart';
import '../features/payments/data/payments_repository.dart';
import '../features/reports/data/reports_repository.dart';
import '../features/sync/presentation/sync_controller.dart';
import '../features/tax/data/tax_repository.dart';
import 'database/app_database.dart';
import 'network/api_client.dart';
import 'storage/secure_storage_service.dart';

final secureStorageProvider = Provider<SecureStorageService>((ref) {
  return SecureStorageService(const FlutterSecureStorage());
});

final appDatabaseProvider = Provider<AppDatabase>((ref) => AppDatabase());

final apiClientProvider = Provider<ApiClient>((ref) {
  return ApiClient(ref.watch(secureStorageProvider));
});

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.watch(apiClientProvider), ref.watch(secureStorageProvider));
});

final businessRepositoryProvider = Provider<BusinessRepository>((ref) {
  return BusinessRepository(ref.watch(apiClientProvider), ref.watch(appDatabaseProvider));
});

final dashboardRepositoryProvider = Provider<DashboardRepository>((ref) {
  return DashboardRepository(ref.watch(apiClientProvider), ref.watch(appDatabaseProvider));
});

final invoicesRepositoryProvider = Provider<InvoicesRepository>((ref) {
  return InvoicesRepository(ref.watch(apiClientProvider), ref.watch(appDatabaseProvider));
});

final expensesRepositoryProvider = Provider<ExpensesRepository>((ref) {
  return ExpensesRepository(ref.watch(apiClientProvider), ref.watch(appDatabaseProvider));
});

final paymentsRepositoryProvider = Provider<PaymentsRepository>((ref) {
  return PaymentsRepository(ref.watch(apiClientProvider));
});

final messagingRepositoryProvider = Provider<MessagingRepository>((ref) {
  return MessagingRepository(ref.watch(apiClientProvider));
});

final taxRepositoryProvider = Provider<TaxRepository>((ref) {
  return TaxRepository(ref.watch(apiClientProvider));
});

final reportsRepositoryProvider = Provider<ReportsRepository>((ref) {
  return ReportsRepository(ref.watch(apiClientProvider));
});

final connectivityProvider = StreamProvider<List<ConnectivityResult>>((ref) {
  return Connectivity().onConnectivityChanged;
});

final isOfflineProvider = Provider<bool>((ref) {
  final connectivity = ref.watch(connectivityProvider);
  return connectivity.maybeWhen(
    data: (value) => value.every((result) => result == ConnectivityResult.none),
    orElse: () => false,
  );
});

final authControllerProvider = AsyncNotifierProvider<AuthController, AuthState>(AuthController.new);
final businessControllerProvider = AsyncNotifierProvider<BusinessController, BusinessViewState>(BusinessController.new);
final syncControllerProvider = AsyncNotifierProvider<SyncController, List<String>>(SyncController.new);
