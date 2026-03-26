// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expense_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Expense _$ExpenseFromJson(Map<String, dynamic> json) => _Expense(
  id: (json['id'] as num?)?.toInt(),
  business: (json['business'] as num?)?.toInt(),
  businessId: (json['business_id'] as num?)?.toInt(),
  user: (json['user'] as num?)?.toInt(),
  category: json['category'] as String? ?? 'other',
  title: json['title'] as String? ?? '',
  description: json['description'] as String? ?? '',
  notes: json['notes'] as String? ?? '',
  amount: (json['amount'] as num?)?.toDouble() ?? 0,
  vatAmount: (json['vat_amount'] as num?)?.toDouble() ?? 0,
  totalAmount: (json['total_amount'] as num?)?.toDouble() ?? 0,
  taxDeductible: json['tax_deductible'] as bool? ?? true,
  expenseDate: json['expense_date'] == null
      ? null
      : DateTime.parse(json['expense_date'] as String),
  receipt: json['receipt'] as String?,
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
  syncState: json['syncState'] as String? ?? 'synced',
);

Map<String, dynamic> _$ExpenseToJson(_Expense instance) => <String, dynamic>{
  'id': instance.id,
  'business': instance.business,
  'business_id': instance.businessId,
  'user': instance.user,
  'category': instance.category,
  'title': instance.title,
  'description': instance.description,
  'notes': instance.notes,
  'amount': instance.amount,
  'vat_amount': instance.vatAmount,
  'total_amount': instance.totalAmount,
  'tax_deductible': instance.taxDeductible,
  'expense_date': instance.expenseDate?.toIso8601String(),
  'receipt': instance.receipt,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
  'syncState': instance.syncState,
};
