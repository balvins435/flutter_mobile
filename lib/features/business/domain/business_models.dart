import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_models.freezed.dart';
part 'business_models.g.dart';

@freezed
class Business with _$Business {
  const factory Business({
    required int id,
    @JsonKey(name: 'business_name') required String businessName,
    @Default('') String displayName,
    @Default('') String slug,
    @Default('') String email,
    @Default('') String phone,
    @Default('') String address,
    String? logo,
    @JsonKey(name: 'logo_shape') @Default('rect') String logoShape,
    @JsonKey(name: 'tax_rate') @Default(16.0) double taxRate,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Business;

  const Business._();

  String get label => displayName.isNotEmpty ? displayName : businessName;

  factory Business.fromJson(Map<String, dynamic> json) => _$BusinessFromJson(json);
}
