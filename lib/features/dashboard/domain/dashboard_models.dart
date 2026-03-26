import 'package:freezed_annotation/freezed_annotation.dart';

import '../../expenses/domain/expense_models.dart';
import '../../invoices/domain/invoice_models.dart';

part 'dashboard_models.freezed.dart';
part 'dashboard_models.g.dart';

@freezed
class DashboardTrendPoint with _$DashboardTrendPoint {
  const factory DashboardTrendPoint({
    int? month,
    int? year,
    @JsonKey(name: 'total_income') @Default(0) double totalIncome,
    @JsonKey(name: 'total_expenses') @Default(0) double totalExpenses,
    @JsonKey(name: 'net_profit') @Default(0) double netProfit,
  }) = _DashboardTrendPoint;

  factory DashboardTrendPoint.fromJson(Map<String, dynamic> json) => _$DashboardTrendPointFromJson(json);
}

@freezed
class DashboardStats with _$DashboardStats {
  const factory DashboardStats({
    @JsonKey(name: 'total_income') @Default(0) double totalIncome,
    @JsonKey(name: 'total_expenses') @Default(0) double totalExpenses,
    @JsonKey(name: 'net_profit') @Default(0) double netProfit,
    @JsonKey(name: 'pending_invoices') @Default(0) int pendingInvoices,
    @JsonKey(name: 'overdue_invoices') @Default(0) int overdueInvoices,
    @JsonKey(name: 'total_clients') @Default(0) int totalClients,
    @JsonKey(name: 'recent_invoices') @Default(<Invoice>[]) List<Invoice> recentInvoices,
    @JsonKey(name: 'recent_expenses') @Default(<Expense>[]) List<Expense> recentExpenses,
    @JsonKey(name: 'monthly_trends') @Default(<DashboardTrendPoint>[]) List<DashboardTrendPoint> monthlyTrends,
  }) = _DashboardStats;

  factory DashboardStats.fromJson(Map<String, dynamic> json) => _$DashboardStatsFromJson(json);
}
