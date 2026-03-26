import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_models.freezed.dart';
part 'payment_models.g.dart';

@freezed
abstract class PaymentTransaction with _$PaymentTransaction {
  const factory PaymentTransaction({
    required int id,
    @JsonKey(name: 'invoice_number') String? invoiceNumber,
    @JsonKey(name: 'phone_number') @Default('') String phoneNumber,
    @Default(0) double amount,
    @Default('KES') String currency,
    @Default('pending') String status,
    @JsonKey(name: 'mpesa_receipt_number') String? mpesaReceiptNumber,
    @JsonKey(name: 'result_description') String? resultDescription,
    @JsonKey(name: 'paid_at') DateTime? paidAt,
    DateTime? createdAt,
  }) = _PaymentTransaction;

  factory PaymentTransaction.fromJson(Map<String, dynamic> json) => _$PaymentTransactionFromJson(json);
}
