// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TaxSubmission _$TaxSubmissionFromJson(Map<String, dynamic> json) =>
    _TaxSubmission(
      id: (json['id'] as num).toInt(),
      invoiceNumber: json['invoice_number'] as String?,
      status: json['status'] as String? ?? 'pending',
      taxInvoiceNumber: json['tax_invoice_number'] as String?,
      errorMessage: json['error_message'] as String?,
      submittedAt: json['submitted_at'] == null
          ? null
          : DateTime.parse(json['submitted_at'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$TaxSubmissionToJson(_TaxSubmission instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_number': instance.invoiceNumber,
      'status': instance.status,
      'tax_invoice_number': instance.taxInvoiceNumber,
      'error_message': instance.errorMessage,
      'submitted_at': instance.submittedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
