// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionTokens _$SessionTokensFromJson(Map<String, dynamic> json) =>
    _SessionTokens(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$SessionTokensToJson(_SessionTokens instance) =>
    <String, dynamic>{'access': instance.access, 'refresh': instance.refresh};

_UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => _UserProfile(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  fullName: json['full_name'] as String,
  emailInvoiceUpdates: json['email_invoice_updates'] as bool? ?? true,
  emailWeeklySummary: json['email_weekly_summary'] as bool? ?? true,
  emailMarketing: json['email_marketing'] as bool? ?? false,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$UserProfileToJson(_UserProfile instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'full_name': instance.fullName,
      'email_invoice_updates': instance.emailInvoiceUpdates,
      'email_weekly_summary': instance.emailWeeklySummary,
      'email_marketing': instance.emailMarketing,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
