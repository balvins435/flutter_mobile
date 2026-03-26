import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class SessionTokens with _$SessionTokens {
  const factory SessionTokens({
    required String access,
    required String refresh,
  }) = _SessionTokens;

  factory SessionTokens.fromJson(Map<String, dynamic> json) => _$SessionTokensFromJson(json);
}

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required int id,
    required String email,
    @JsonKey(name: 'full_name') required String fullName,
    @JsonKey(name: 'email_invoice_updates') @Default(true) bool emailInvoiceUpdates,
    @JsonKey(name: 'email_weekly_summary') @Default(true) bool emailWeeklySummary,
    @JsonKey(name: 'email_marketing') @Default(false) bool emailMarketing,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated({required UserProfile user}) = _Authenticated;
}
