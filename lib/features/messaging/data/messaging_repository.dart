import 'package:uuid/uuid.dart';

import '../../../core/network/api_client.dart';
import '../domain/messaging_models.dart';

class MessagingRepository {
  MessagingRepository(this._apiClient);

  final ApiClient _apiClient;
  final _uuid = const Uuid();

  Future<List<WhatsAppMessage>> fetchMessages(int businessId) async {
    final response = await _apiClient.dio.get('/messaging/whatsapp/', queryParameters: {'business_id': businessId});
    return (response.data as List<dynamic>)
        .map((item) => WhatsAppMessage.fromJson(item as Map<String, dynamic>))
        .toList();
  }

  Future<void> sendInvoice({required int invoiceId, required String phoneNumber, String message = ''}) {
    return _apiClient.dio.post(
      '/messaging/whatsapp/send-invoice/',
      data: {'invoice_id': invoiceId, 'phone_number': phoneNumber, 'message': message},
      options: Options(headers: {'X-Idempotency-Key': _uuid.v4()}),
    );
  }
}
