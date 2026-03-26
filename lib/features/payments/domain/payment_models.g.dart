// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentTransaction _$PaymentTransactionFromJson(Map<String, dynamic> json) =>
    _PaymentTransaction(
      id: (json['id'] as num).toInt(),
      invoiceNumber: json['invoice_number'] as String?,
      phoneNumber: json['phone_number'] as String? ?? '',
      amount: (json['amount'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? 'KES',
      status: json['status'] as String? ?? 'pending',
      mpesaReceiptNumber: json['mpesa_receipt_number'] as String?,
      resultDescription: json['result_description'] as String?,
      paidAt: json['paid_at'] == null
          ? null
          : DateTime.parse(json['paid_at'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$PaymentTransactionToJson(_PaymentTransaction instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_number': instance.invoiceNumber,
      'phone_number': instance.phoneNumber,
      'amount': instance.amount,
      'currency': instance.currency,
      'status': instance.status,
      'mpesa_receipt_number': instance.mpesaReceiptNumber,
      'result_description': instance.resultDescription,
      'paid_at': instance.paidAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
