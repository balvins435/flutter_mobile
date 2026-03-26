// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DashboardTrendPoint _$DashboardTrendPointFromJson(Map<String, dynamic> json) =>
    _DashboardTrendPoint(
      month: (json['month'] as num?)?.toInt(),
      year: (json['year'] as num?)?.toInt(),
      totalIncome: (json['total_income'] as num?)?.toDouble() ?? 0,
      totalExpenses: (json['total_expenses'] as num?)?.toDouble() ?? 0,
      netProfit: (json['net_profit'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$DashboardTrendPointToJson(
  _DashboardTrendPoint instance,
) => <String, dynamic>{
  'month': instance.month,
  'year': instance.year,
  'total_income': instance.totalIncome,
  'total_expenses': instance.totalExpenses,
  'net_profit': instance.netProfit,
};

_DashboardStats _$DashboardStatsFromJson(Map<String, dynamic> json) =>
    _DashboardStats(
      totalIncome: (json['total_income'] as num?)?.toDouble() ?? 0,
      totalExpenses: (json['total_expenses'] as num?)?.toDouble() ?? 0,
      netProfit: (json['net_profit'] as num?)?.toDouble() ?? 0,
      pendingInvoices: (json['pending_invoices'] as num?)?.toInt() ?? 0,
      overdueInvoices: (json['overdue_invoices'] as num?)?.toInt() ?? 0,
      totalClients: (json['total_clients'] as num?)?.toInt() ?? 0,
      recentInvoices:
          (json['recent_invoices'] as List<dynamic>?)
              ?.map((e) => Invoice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Invoice>[],
      recentExpenses:
          (json['recent_expenses'] as List<dynamic>?)
              ?.map((e) => Expense.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Expense>[],
      monthlyTrends:
          (json['monthly_trends'] as List<dynamic>?)
              ?.map(
                (e) => DashboardTrendPoint.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <DashboardTrendPoint>[],
    );

Map<String, dynamic> _$DashboardStatsToJson(_DashboardStats instance) =>
    <String, dynamic>{
      'total_income': instance.totalIncome,
      'total_expenses': instance.totalExpenses,
      'net_profit': instance.netProfit,
      'pending_invoices': instance.pendingInvoices,
      'overdue_invoices': instance.overdueInvoices,
      'total_clients': instance.totalClients,
      'recent_invoices': instance.recentInvoices,
      'recent_expenses': instance.recentExpenses,
      'monthly_trends': instance.monthlyTrends,
    };
