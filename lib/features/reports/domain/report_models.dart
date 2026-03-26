import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_models.freezed.dart';
part 'report_models.g.dart';

@freezed
class MonthlyReportItem with _$MonthlyReportItem {
  const factory MonthlyReportItem({
    int? month,
    int? year,
    @JsonKey(name: 'income') @Default(0) double income,
    @JsonKey(name: 'expenses') @Default(0) double expenses,
    @JsonKey(name: 'profit') @Default(0) double profit,
    @JsonKey(name: 'tax_due') @Default(0) double taxDue,
  }) = _MonthlyReportItem;

  factory MonthlyReportItem.fromJson(Map<String, dynamic> json) => _$MonthlyReportItemFromJson(json);
}
