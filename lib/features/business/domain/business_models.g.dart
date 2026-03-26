// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Business _$BusinessFromJson(Map<String, dynamic> json) => _Business(
  id: (json['id'] as num).toInt(),
  businessName: json['business_name'] as String,
  displayName: json['displayName'] as String? ?? '',
  slug: json['slug'] as String? ?? '',
  email: json['email'] as String? ?? '',
  phone: json['phone'] as String? ?? '',
  address: json['address'] as String? ?? '',
  logo: json['logo'] as String?,
  logoShape: json['logo_shape'] as String? ?? 'rect',
  taxRate: (json['tax_rate'] as num?)?.toDouble() ?? 16.0,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$BusinessToJson(_Business instance) => <String, dynamic>{
  'id': instance.id,
  'business_name': instance.businessName,
  'displayName': instance.displayName,
  'slug': instance.slug,
  'email': instance.email,
  'phone': instance.phone,
  'address': instance.address,
  'logo': instance.logo,
  'logo_shape': instance.logoShape,
  'tax_rate': instance.taxRate,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};
