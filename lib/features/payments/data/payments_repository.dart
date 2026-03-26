import 'package:uuid/uuid.dart';

import '../../../core/network/api_client.dart';
import '../domain/payment_models.dart';

class PaymentsRepository {
  PaymentsRepository(this._apiClient);

  final ApiClient _apiClient;
  final _uuid = const Uuid();

  Future<List<PaymentTransaction>> fetchTransactions(int businessId) async {
    final response = await _apiClient.dio.get('/payments/transactions/', queryParameters: {'business_id': businessId});
    return (response.data as List<dynamic>)
        .map((item) => PaymentTransaction.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<void> initiateStk({required int invoiceId, required String phoneNumber, required double amount}) {
    return _apiClient.dio.post(
      '/payments/transactions/initiate-stk/',
      data: {'invoice_id': invoiceId, 'phone_number': phoneNumber, 'amount': amount},
      options: Options(headers: {'X-Idempotency-Key': _uuid.v4()}),
    );
  }
}
