import 'package:freezed_annotation/freezed_annotation.dart';

part 'expense_models.freezed.dart';
part 'expense_models.g.dart';

@freezed
class Expense with _$Expense {
  const factory Expense({
    int? id,
    int? business,
    @JsonKey(name: 'business_id') int? businessId,
    int? user,
    @Default('other') String category,
    @Default('') String title,
    @Default('') String description,
    @JsonKey(name: 'notes') @Default('') String notes,
    @Default(0) double amount,
    @JsonKey(name: 'vat_amount') @Default(0) double vatAmount,
    @JsonKey(name: 'total_amount') @Default(0) double totalAmount,
    @JsonKey(name: 'tax_deductible') @Default(true) bool taxDeductible,
    @JsonKey(name: 'expense_date') DateTime? expenseDate,
    String? receipt,
    DateTime? createdAt,
    DateTime? updatedAt,
    @Default('synced') String syncState,
  }) = _Expense;

  factory Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);
}
