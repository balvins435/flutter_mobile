import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_models.freezed.dart';
part 'tax_models.g.dart';

@freezed
abstract class TaxSubmission with _$TaxSubmission {
  const factory TaxSubmission({
    required int id,
    @JsonKey(name: 'invoice_number') String? invoiceNumber,
    @Default('pending') String status,
    @JsonKey(name: 'tax_invoice_number') String? taxInvoiceNumber,
    @JsonKey(name: 'error_message') String? errorMessage,
    @JsonKey(name: 'submitted_at') DateTime? submittedAt,
    DateTime? createdAt,
  }) = _TaxSubmission;

  factory TaxSubmission.fromJson(Map<String, dynamic> json) => _$TaxSubmissionFromJson(json);
}
