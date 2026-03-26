import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import '../../../core/database/app_database.dart';
import '../../../core/network/api_client.dart';
import '../domain/invoice_models.dart';

class InvoicesRepository {
  InvoicesRepository(this._apiClient, this._database);

  final ApiClient _apiClient;
  final AppDatabase _database;
  final _uuid = const Uuid();

  Future<List<Invoice>> fetchInvoices(int businessId, {String search = ''}) async {
    try {
      final response = await _apiClient.dio.get(
        '/invoice/',
        queryParameters: {
          'business_id': businessId,
          if (search.isNotEmpty) 'search': search,
        },
      );
      final items = (response.data as List<dynamic>)
          .map((item) => Invoice.fromJson(item as Map<String, dynamic>))
          .toList();
      await _database.replaceInvoiceCache(businessId, items.map((item) => item.toJson()).toList());
      return items;
    } on DioException {
      final cached = await _database.readInvoiceCache(businessId);
      return cached.map(Invoice.fromJson).toList();
    }
  }

  Future<Invoice> saveInvoice({required int businessId, required Invoice invoice}) async {
    final payload = {
      'business_id': businessId,
      'client_name': invoice.clientName,
      'client_email': invoice.clientEmail,
      'issue_date': invoice.issueDate?.toIso8601String().split('T').first,
      'due_date': invoice.dueDate?.toIso8601String().split('T').first,
      'items': invoice.items
          .map((item) => {
                'description': item.description,
                'quantity': item.quantity,
                'unit_price': item.unitPrice,
              })
          .toList(),
    };

    try {
      final response = invoice.id == null
          ? await _apiClient.dio.post('/invoice/', data: payload)
          : await _apiClient.dio.put('/invoice/${invoice.id}/', data: payload);
      return Invoice.fromJson(response.data as Map<String, dynamic>);
    } on DioException {
      final local = invoice.copyWith(
        businessId: businessId,
        updatedAt: DateTime.now(),
        syncState: 'pending',
        invoiceNumber: invoice.invoiceNumber == 'Draft' ? 'OFFLINE-${_uuid.v4().substring(0, 8)}' : invoice.invoiceNumber,
      );
      final cached = await _database.readInvoiceCache(businessId);
      final current = cached.map(Invoice.fromJson).toList();
      final next = [...current.where((item) => item.id != local.id), local];
      await _database.replaceInvoiceCache(businessId, next.map((item) => item.toJson()).toList());
      await _database.enqueueMutation(
        feature: 'invoice',
        operation: invoice.id == null ? 'create' : 'update',
        businessId: businessId,
        payload: payload,
      );
      return local;
    }
  }

  Future<void> markPaid(int invoiceId) => _apiClient.dio.post('/invoice/$invoiceId/mark_paid/');

  Future<void> sendEmail(int invoiceId) => _apiClient.dio.post('/invoice/$invoiceId/send_email/');
}
