// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) => _InvoiceItem(
  id: (json['id'] as num?)?.toInt(),
  description: json['description'] as String? ?? '',
  quantity: (json['quantity'] as num?)?.toInt() ?? 1,
  unitPrice: (json['unit_price'] as num?)?.toDouble() ?? 0,
  total: (json['total'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$InvoiceItemToJson(_InvoiceItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'quantity': instance.quantity,
      'unit_price': instance.unitPrice,
      'total': instance.total,
    };

_Invoice _$InvoiceFromJson(Map<String, dynamic> json) => _Invoice(
  id: (json['id'] as num?)?.toInt(),
  businessId: (json['business_id'] as num?)?.toInt(),
  invoiceNumber: json['invoice_number'] as String? ?? 'Draft',
  clientName: json['client_name'] as String? ?? '',
  clientEmail: json['client_email'] as String? ?? '',
  issueDate: json['issue_date'] == null
      ? null
      : DateTime.parse(json['issue_date'] as String),
  dueDate: json['due_date'] == null
      ? null
      : DateTime.parse(json['due_date'] as String),
  subtotal: (json['subtotal'] as num?)?.toDouble() ?? 0,
  taxAmount: (json['tax_amount'] as num?)?.toDouble() ?? 0,
  totalAmount: (json['total_amount'] as num?)?.toDouble() ?? 0,
  currency: json['currency'] as String? ?? 'KES',
  taxInvoiceNumber: json['tax_invoice_number'] as String?,
  etimsSyncedAt: json['etims_synced_at'] == null
      ? null
      : DateTime.parse(json['etims_synced_at'] as String),
  status: json['status'] as String? ?? 'draft',
  paidAt: json['paid_at'] == null
      ? null
      : DateTime.parse(json['paid_at'] as String),
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => InvoiceItem.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <InvoiceItem>[],
  hasReceipt: json['has_receipt'] as bool? ?? false,
  receiptNumber: json['receipt_number'] as String?,
  amountPaid: (json['amount_paid'] as num?)?.toDouble() ?? 0,
  balanceDue: (json['balance_due'] as num?)?.toDouble() ?? 0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  syncState: json['syncState'] as String? ?? 'synced',
);

Map<String, dynamic> _$InvoiceToJson(_Invoice instance) => <String, dynamic>{
  'id': instance.id,
  'business_id': instance.businessId,
  'invoice_number': instance.invoiceNumber,
  'client_name': instance.clientName,
  'client_email': instance.clientEmail,
  'issue_date': instance.issueDate?.toIso8601String(),
  'due_date': instance.dueDate?.toIso8601String(),
  'subtotal': instance.subtotal,
  'tax_amount': instance.taxAmount,
  'total_amount': instance.totalAmount,
  'currency': instance.currency,
  'tax_invoice_number': instance.taxInvoiceNumber,
  'etims_synced_at': instance.etimsSyncedAt?.toIso8601String(),
  'status': instance.status,
  'paid_at': instance.paidAt?.toIso8601String(),
  'items': instance.items,
  'has_receipt': instance.hasReceipt,
  'receipt_number': instance.receiptNumber,
  'amount_paid': instance.amountPaid,
  'balance_due': instance.balanceDue,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'syncState': instance.syncState,
};
