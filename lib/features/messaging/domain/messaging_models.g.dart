// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'messaging_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WhatsAppMessage _$WhatsAppMessageFromJson(Map<String, dynamic> json) =>
    _WhatsAppMessage(
      id: (json['id'] as num).toInt(),
      invoiceNumber: json['invoice_number'] as String?,
      phoneNumber: json['phone_number'] as String? ?? '',
      messageText: json['message_text'] as String? ?? '',
      invoiceLink: json['invoice_link'] as String?,
      deliveryStatus: json['delivery_status'] as String? ?? 'pending',
      errorMessage: json['error_message'] as String?,
      sentAt: json['sent_at'] == null
          ? null
          : DateTime.parse(json['sent_at'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$WhatsAppMessageToJson(_WhatsAppMessage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'invoice_number': instance.invoiceNumber,
      'phone_number': instance.phoneNumber,
      'message_text': instance.messageText,
      'invoice_link': instance.invoiceLink,
      'delivery_status': instance.deliveryStatus,
      'error_message': instance.errorMessage,
      'sent_at': instance.sentAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
    };
