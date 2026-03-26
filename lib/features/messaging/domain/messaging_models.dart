import 'package:freezed_annotation/freezed_annotation.dart';

part 'messaging_models.freezed.dart';
part 'messaging_models.g.dart';

@freezed
abstract class WhatsAppMessage with _$WhatsAppMessage {
  const factory WhatsAppMessage({
    required int id,
    @JsonKey(name: 'invoice_number') String? invoiceNumber,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @JsonKey(name: 'message_text') @Default('') String messageText,
    @JsonKey(name: 'invoice_link') String? invoiceLink,
    @JsonKey(name: 'delivery_status') @Default('pending') String deliveryStatus,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'sent_at') DateTime? sentAt,
    DateTime? createdAt,
  }) = _WhatsAppMessage;

  factory WhatsAppMessage.fromJson(Map<String, dynamic> json) => _$WhatsAppMessageFromJson(json);
}
