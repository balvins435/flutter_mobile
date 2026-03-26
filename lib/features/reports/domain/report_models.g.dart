// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MonthlyReportItem _$MonthlyReportItemFromJson(Map<String, dynamic> json) =>
    _MonthlyReportItem(
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      income: (json['income'] as num?)?.toDouble() ?? 0,
      expenses: (json['expenses'] as num?)?.toDouble() ?? 0,
      profit: (json['profit'] as num?)?.toDouble() ?? 0,
      taxDue: (json['tax_due'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$MonthlyReportItemToJson(_MonthlyReportItem instance) =>
    <String, dynamic>{
      'month': instance.month,
      'year': instance.year,
      'income': instance.income,
      'expenses': instance.expenses,
      'profit': instance.profit,
      'tax_due': instance.taxDue,
    };
