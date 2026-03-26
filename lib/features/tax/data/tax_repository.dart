import 'package:uuid/uuid.dart';

import '../../../core/network/api_client.dart';
import '../domain/tax_models.dart';

class TaxRepository {
  TaxRepository(this._apiClient);

  final ApiClient _apiClient;
  final _uuid = const Uuid();

  Future<List<TaxSubmission>> fetchSubmissions(int businessId) async {
    final response = await _apiClient.dio.get('/tax/submissions/', queryParameters: {'business_id': businessId});
    return (response.data as List<dynamic>)
        .map((item) => TaxSubmission.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<void> submitInvoice(int invoiceId) {
    return _apiClient.dio.post(
      '/tax/submissions/',
      data: {'invoice_id': invoiceId},
      options: Options(headers: {'X-Idempotency-Key': _uuid.v4()}),
    );
  }
}
