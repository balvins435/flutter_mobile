import 'package:dio/dio.dart';

import '../../../core/database/app_database.dart';
import '../../../core/network/api_client.dart';
import '../domain/dashboard_models.dart';

class DashboardRepository {
  DashboardRepository(this._apiClient, this._database);

  final ApiClient _apiClient;
  final AppDatabase _database;

  Future<DashboardStats> fetchStats(int businessId) async {
    try {
      final response = await _apiClient.dio.get('/reports/dashboard-stats/', queryParameters: {'business_id': businessId});
      final payload = response.data as Map<String, dynamic>;
      await _database.cacheDashboard(businessId, payload);
      return DashboardStats.fromJson(payload);
    } on DioException {
      final cached = await _database.readDashboardCache(businessId);
      if (cached != null) {
        return DashboardStats.fromJson(cached);
      }
      rethrow;
    }
  }
}
