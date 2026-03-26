// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MonthlyReportItem {

 int? get month; int? get year;@JsonKey(name: 'income') double get income;@JsonKey(name: 'expenses') double get expenses;@JsonKey(name: 'profit') double get profit;@JsonKey(name: 'tax_due') double get taxDue;
/// Create a copy of MonthlyReportItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MonthlyReportItemCopyWith<MonthlyReportItem> get copyWith => _$MonthlyReportItemCopyWithImpl<MonthlyReportItem>(this as MonthlyReportItem, _$identity);

  /// Serializes this MonthlyReportItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MonthlyReportItem&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.income, income) || other.income == income)&&(identical(other.expenses, expenses) || other.expenses == expenses)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.taxDue, taxDue) || other.taxDue == taxDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,income,expenses,profit,taxDue);

@override
String toString() {
  return 'MonthlyReportItem(month: $month, year: $year, income: $income, expenses: $expenses, profit: $profit, taxDue: $taxDue)';
}


}

/// @nodoc
abstract mixin class $MonthlyReportItemCopyWith<$Res>  {
  factory $MonthlyReportItemCopyWith(MonthlyReportItem value, $Res Function(MonthlyReportItem) _then) = _$MonthlyReportItemCopyWithImpl;
@useResult
$Res call({
 int? month, int? year,@JsonKey(name: 'income') double income,@JsonKey(name: 'expenses') double expenses,@JsonKey(name: 'profit') double profit,@JsonKey(name: 'tax_due') double taxDue
});




}
/// @nodoc
class _$MonthlyReportItemCopyWithImpl<$Res>
    implements $MonthlyReportItemCopyWith<$Res> {
  _$MonthlyReportItemCopyWithImpl(this._self, this._then);

  final MonthlyReportItem _self;
  final $Res Function(MonthlyReportItem) _then;

/// Create a copy of MonthlyReportItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = freezed,Object? year = freezed,Object? income = null,Object? expenses = null,Object? profit = null,Object? taxDue = null,}) {
  return _then(_self.copyWith(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,income: null == income ? _self.income : income // ignore: cast_nullable_to_non_nullable
as double,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as double,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double,taxDue: null == taxDue ? _self.taxDue : taxDue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [MonthlyReportItem].
extension MonthlyReportItemPatterns on MonthlyReportItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MonthlyReportItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MonthlyReportItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MonthlyReportItem value)  $default,){
final _that = this;
switch (_that) {
case _MonthlyReportItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MonthlyReportItem value)?  $default,){
final _that = this;
switch (_that) {
case _MonthlyReportItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? month,  int? year, @JsonKey(name: 'income')  double income, @JsonKey(name: 'expenses')  double expenses, @JsonKey(name: 'profit')  double profit, @JsonKey(name: 'tax_due')  double taxDue)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MonthlyReportItem() when $default != null:
return $default(_that.month,_that.year,_that.income,_that.expenses,_that.profit,_that.taxDue);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? month,  int? year, @JsonKey(name: 'income')  double income, @JsonKey(name: 'expenses')  double expenses, @JsonKey(name: 'profit')  double profit, @JsonKey(name: 'tax_due')  double taxDue)  $default,) {final _that = this;
switch (_that) {
case _MonthlyReportItem():
return $default(_that.month,_that.year,_that.income,_that.expenses,_that.profit,_that.taxDue);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? month,  int? year, @JsonKey(name: 'income')  double income, @JsonKey(name: 'expenses')  double expenses, @JsonKey(name: 'profit')  double profit, @JsonKey(name: 'tax_due')  double taxDue)?  $default,) {final _that = this;
switch (_that) {
case _MonthlyReportItem() when $default != null:
return $default(_that.month,_that.year,_that.income,_that.expenses,_that.profit,_that.taxDue);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MonthlyReportItem implements MonthlyReportItem {
  const _MonthlyReportItem({this.month, this.year, @JsonKey(name: 'income') this.income = 0, @JsonKey(name: 'expenses') this.expenses = 0, @JsonKey(name: 'profit') this.profit = 0, @JsonKey(name: 'tax_due') this.taxDue = 0});
  factory _MonthlyReportItem.fromJson(Map<String, dynamic> json) => _$MonthlyReportItemFromJson(json);

@override final  int? month;
@override final  int? year;
@override@JsonKey(name: 'income') final  double income;
@override@JsonKey(name: 'expenses') final  double expenses;
@override@JsonKey(name: 'profit') final  double profit;
@override@JsonKey(name: 'tax_due') final  double taxDue;

/// Create a copy of MonthlyReportItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MonthlyReportItemCopyWith<_MonthlyReportItem> get copyWith => __$MonthlyReportItemCopyWithImpl<_MonthlyReportItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MonthlyReportItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MonthlyReportItem&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.income, income) || other.income == income)&&(identical(other.expenses, expenses) || other.expenses == expenses)&&(identical(other.profit, profit) || other.profit == profit)&&(identical(other.taxDue, taxDue) || other.taxDue == taxDue));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,income,expenses,profit,taxDue);

@override
String toString() {
  return 'MonthlyReportItem(month: $month, year: $year, income: $income, expenses: $expenses, profit: $profit, taxDue: $taxDue)';
}


}

/// @nodoc
abstract mixin class _$MonthlyReportItemCopyWith<$Res> implements $MonthlyReportItemCopyWith<$Res> {
  factory _$MonthlyReportItemCopyWith(_MonthlyReportItem value, $Res Function(_MonthlyReportItem) _then) = __$MonthlyReportItemCopyWithImpl;
@override @useResult
$Res call({
 int? month, int? year,@JsonKey(name: 'income') double income,@JsonKey(name: 'expenses') double expenses,@JsonKey(name: 'profit') double profit,@JsonKey(name: 'tax_due') double taxDue
});




}
/// @nodoc
class __$MonthlyReportItemCopyWithImpl<$Res>
    implements _$MonthlyReportItemCopyWith<$Res> {
  __$MonthlyReportItemCopyWithImpl(this._self, this._then);

  final _MonthlyReportItem _self;
  final $Res Function(_MonthlyReportItem) _then;

/// Create a copy of MonthlyReportItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = freezed,Object? year = freezed,Object? income = null,Object? expenses = null,Object? profit = null,Object? taxDue = null,}) {
  return _then(_MonthlyReportItem(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,income: null == income ? _self.income : income // ignore: cast_nullable_to_non_nullable
as double,expenses: null == expenses ? _self.expenses : expenses // ignore: cast_nullable_to_non_nullable
as double,profit: null == profit ? _self.profit : profit // ignore: cast_nullable_to_non_nullable
as double,taxDue: null == taxDue ? _self.taxDue : taxDue // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
