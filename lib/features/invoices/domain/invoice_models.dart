import 'package:freezed_annotation/freezed_annotation.dart';

part 'invoice_models.freezed.dart';
part 'invoice_models.g.dart';

@freezed
abstract class InvoiceItem with _$InvoiceItem {
  const factory InvoiceItem({
    int? id,
    @Default('') String description,
    @Default(1) int quantity,
    @JsonKey(name: 'unit_price') @Default(0) double unitPrice,
    @Default(0) double total,
  }) = _InvoiceItem;

  factory InvoiceItem.fromJson(Map<String, dynamic> json) => _$InvoiceItemFromJson(json);
}

@freezed
abstract class Invoice with _$Invoice {
  const factory Invoice({
    int? id,
    @JsonKey(name: 'business_id') int? businessId,
    @JsonKey(name: 'invoice_number') @Default('Draft') String invoiceNumber,
    @JsonKey(name: 'client_name') @Default('') String clientName,
    @JsonKey(name: 'client_email') @Default('') String clientEmail,
    @JsonKey(name: 'issue_date') DateTime? issueDate,
    @JsonKey(name: 'due_date') DateTime? dueDate,
    @JsonKey(name: 'subtotal') @Default(0) double subtotal,
    @JsonKey(name: 'tax_amount') @Default(0) double taxAmount,
    @JsonKey(name: 'total_amount') @Default(0) double totalAmount,
    @Default('KES') String currency,
    @JsonKey(name: 'tax_invoice_number') String? taxInvoiceNumber,
    @JsonKey(name: 'etims_synced_at') DateTime? etimsSyncedAt,
    @Default('draft') String status,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
    @Default(<InvoiceItem>[]) List<InvoiceItem> items,
    @JsonKey(name: 'has_receipt') @Default(false) bool hasReceipt,
    @JsonKey(name: 'receipt_number') String? receiptNumber,
    @JsonKey(name: 'amount_paid') @Default(0) double amountPaid,
    @JsonKey(name: 'balance_due') @Default(0) double balanceDue,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default('synced') String syncState,
  }) = _Invoice;

  const Invoice._();

  bool get isDraft => id == null || status == 'draft';

  factory Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);
}
