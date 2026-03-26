import '../../../core/network/api_client.dart';
import '../domain/report_models.dart';

class ReportsRepository {
  ReportsRepository(this._apiClient);

  final ApiClient _apiClient;

  Future<List<MonthlyReportItem>> fetchMonthlyReport(int businessId, int year) async {
    final response = await _apiClient.dio.get('/reports/monthly/', queryParameters: {'business_id': businessId, 'year': year});
    final payload = response.data;
    if (payload is List) {
      return payload.map((item) => MonthlyReportItem.fromJson(item as Map<String, dynamic>)).toList();
    }
    return [MonthlyReportItem.fromJson(payload as Map<String, dynamic>)];
  }

  Future<Map<String, dynamic>> fetchTaxSummary(int businessId, int year) async {
    final response = await _apiClient.dio.get('/reports/tax-summary/', queryParameters: {'business_id': businessId, 'year': year});
    return response.data as Map<String, dynamic>;
  }
}
