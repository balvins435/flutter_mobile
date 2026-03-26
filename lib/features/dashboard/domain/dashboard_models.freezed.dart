// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DashboardTrendPoint {

 int? get month; int? get year;@JsonKey(name: 'total_income') double get totalIncome;@JsonKey(name: 'total_expenses') double get totalExpenses;@JsonKey(name: 'net_profit') double get netProfit;
/// Create a copy of DashboardTrendPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardTrendPointCopyWith<DashboardTrendPoint> get copyWith => _$DashboardTrendPointCopyWithImpl<DashboardTrendPoint>(this as DashboardTrendPoint, _$identity);

  /// Serializes this DashboardTrendPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardTrendPoint&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.netProfit, netProfit) || other.netProfit == netProfit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,totalIncome,totalExpenses,netProfit);

@override
String toString() {
  return 'DashboardTrendPoint(month: $month, year: $year, totalIncome: $totalIncome, totalExpenses: $totalExpenses, netProfit: $netProfit)';
}


}

/// @nodoc
abstract mixin class $DashboardTrendPointCopyWith<$Res>  {
  factory $DashboardTrendPointCopyWith(DashboardTrendPoint value, $Res Function(DashboardTrendPoint) _then) = _$DashboardTrendPointCopyWithImpl;
@useResult
$Res call({
 int? month, int? year,@JsonKey(name: 'total_income') double totalIncome,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'net_profit') double netProfit
});




}
/// @nodoc
class _$DashboardTrendPointCopyWithImpl<$Res>
    implements $DashboardTrendPointCopyWith<$Res> {
  _$DashboardTrendPointCopyWithImpl(this._self, this._then);

  final DashboardTrendPoint _self;
  final $Res Function(DashboardTrendPoint) _then;

/// Create a copy of DashboardTrendPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? month = freezed,Object? year = freezed,Object? totalIncome = null,Object? totalExpenses = null,Object? netProfit = null,}) {
  return _then(_self.copyWith(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,netProfit: null == netProfit ? _self.netProfit : netProfit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardTrendPoint].
extension DashboardTrendPointPatterns on DashboardTrendPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardTrendPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardTrendPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardTrendPoint value)  $default,){
final _that = this;
switch (_that) {
case _DashboardTrendPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardTrendPoint value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardTrendPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? month,  int? year, @JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_profit')  double netProfit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardTrendPoint() when $default != null:
return $default(_that.month,_that.year,_that.totalIncome,_that.totalExpenses,_that.netProfit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? month,  int? year, @JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_profit')  double netProfit)  $default,) {final _that = this;
switch (_that) {
case _DashboardTrendPoint():
return $default(_that.month,_that.year,_that.totalIncome,_that.totalExpenses,_that.netProfit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? month,  int? year, @JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_profit')  double netProfit)?  $default,) {final _that = this;
switch (_that) {
case _DashboardTrendPoint() when $default != null:
return $default(_that.month,_that.year,_that.totalIncome,_that.totalExpenses,_that.netProfit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardTrendPoint implements DashboardTrendPoint {
  const _DashboardTrendPoint({this.month, this.year, @JsonKey(name: 'total_income') this.totalIncome = 0, @JsonKey(name: 'total_expenses') this.totalExpenses = 0, @JsonKey(name: 'net_profit') this.netProfit = 0});
  factory _DashboardTrendPoint.fromJson(Map<String, dynamic> json) => _$DashboardTrendPointFromJson(json);

@override final  int? month;
@override final  int? year;
@override@JsonKey(name: 'total_income') final  double totalIncome;
@override@JsonKey(name: 'total_expenses') final  double totalExpenses;
@override@JsonKey(name: 'net_profit') final  double netProfit;

/// Create a copy of DashboardTrendPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardTrendPointCopyWith<_DashboardTrendPoint> get copyWith => __$DashboardTrendPointCopyWithImpl<_DashboardTrendPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardTrendPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardTrendPoint&&(identical(other.month, month) || other.month == month)&&(identical(other.year, year) || other.year == year)&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.netProfit, netProfit) || other.netProfit == netProfit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,month,year,totalIncome,totalExpenses,netProfit);

@override
String toString() {
  return 'DashboardTrendPoint(month: $month, year: $year, totalIncome: $totalIncome, totalExpenses: $totalExpenses, netProfit: $netProfit)';
}


}

/// @nodoc
abstract mixin class _$DashboardTrendPointCopyWith<$Res> implements $DashboardTrendPointCopyWith<$Res> {
  factory _$DashboardTrendPointCopyWith(_DashboardTrendPoint value, $Res Function(_DashboardTrendPoint) _then) = __$DashboardTrendPointCopyWithImpl;
@override @useResult
$Res call({
 int? month, int? year,@JsonKey(name: 'total_income') double totalIncome,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'net_profit') double netProfit
});




}
/// @nodoc
class __$DashboardTrendPointCopyWithImpl<$Res>
    implements _$DashboardTrendPointCopyWith<$Res> {
  __$DashboardTrendPointCopyWithImpl(this._self, this._then);

  final _DashboardTrendPoint _self;
  final $Res Function(_DashboardTrendPoint) _then;

/// Create a copy of DashboardTrendPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? month = freezed,Object? year = freezed,Object? totalIncome = null,Object? totalExpenses = null,Object? netProfit = null,}) {
  return _then(_DashboardTrendPoint(
month: freezed == month ? _self.month : month // ignore: cast_nullable_to_non_nullable
as int?,year: freezed == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as int?,totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,netProfit: null == netProfit ? _self.netProfit : netProfit // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$DashboardStats {

@JsonKey(name: 'total_income') double get totalIncome;@JsonKey(name: 'total_expenses') double get totalExpenses;@JsonKey(name: 'net_profit') double get netProfit;@JsonKey(name: 'pending_invoices') int get pendingInvoices;@JsonKey(name: 'overdue_invoices') int get overdueInvoices;@JsonKey(name: 'total_clients') int get totalClients;@JsonKey(name: 'recent_invoices') List<Invoice> get recentInvoices;@JsonKey(name: 'recent_expenses') List<Expense> get recentExpenses;@JsonKey(name: 'monthly_trends') List<DashboardTrendPoint> get monthlyTrends;
/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DashboardStatsCopyWith<DashboardStats> get copyWith => _$DashboardStatsCopyWithImpl<DashboardStats>(this as DashboardStats, _$identity);

  /// Serializes this DashboardStats to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DashboardStats&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.netProfit, netProfit) || other.netProfit == netProfit)&&(identical(other.pendingInvoices, pendingInvoices) || other.pendingInvoices == pendingInvoices)&&(identical(other.overdueInvoices, overdueInvoices) || other.overdueInvoices == overdueInvoices)&&(identical(other.totalClients, totalClients) || other.totalClients == totalClients)&&const DeepCollectionEquality().equals(other.recentInvoices, recentInvoices)&&const DeepCollectionEquality().equals(other.recentExpenses, recentExpenses)&&const DeepCollectionEquality().equals(other.monthlyTrends, monthlyTrends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalIncome,totalExpenses,netProfit,pendingInvoices,overdueInvoices,totalClients,const DeepCollectionEquality().hash(recentInvoices),const DeepCollectionEquality().hash(recentExpenses),const DeepCollectionEquality().hash(monthlyTrends));

@override
String toString() {
  return 'DashboardStats(totalIncome: $totalIncome, totalExpenses: $totalExpenses, netProfit: $netProfit, pendingInvoices: $pendingInvoices, overdueInvoices: $overdueInvoices, totalClients: $totalClients, recentInvoices: $recentInvoices, recentExpenses: $recentExpenses, monthlyTrends: $monthlyTrends)';
}


}

/// @nodoc
abstract mixin class $DashboardStatsCopyWith<$Res>  {
  factory $DashboardStatsCopyWith(DashboardStats value, $Res Function(DashboardStats) _then) = _$DashboardStatsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_income') double totalIncome,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'net_profit') double netProfit,@JsonKey(name: 'pending_invoices') int pendingInvoices,@JsonKey(name: 'overdue_invoices') int overdueInvoices,@JsonKey(name: 'total_clients') int totalClients,@JsonKey(name: 'recent_invoices') List<Invoice> recentInvoices,@JsonKey(name: 'recent_expenses') List<Expense> recentExpenses,@JsonKey(name: 'monthly_trends') List<DashboardTrendPoint> monthlyTrends
});




}
/// @nodoc
class _$DashboardStatsCopyWithImpl<$Res>
    implements $DashboardStatsCopyWith<$Res> {
  _$DashboardStatsCopyWithImpl(this._self, this._then);

  final DashboardStats _self;
  final $Res Function(DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalIncome = null,Object? totalExpenses = null,Object? netProfit = null,Object? pendingInvoices = null,Object? overdueInvoices = null,Object? totalClients = null,Object? recentInvoices = null,Object? recentExpenses = null,Object? monthlyTrends = null,}) {
  return _then(_self.copyWith(
totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,netProfit: null == netProfit ? _self.netProfit : netProfit // ignore: cast_nullable_to_non_nullable
as double,pendingInvoices: null == pendingInvoices ? _self.pendingInvoices : pendingInvoices // ignore: cast_nullable_to_non_nullable
as int,overdueInvoices: null == overdueInvoices ? _self.overdueInvoices : overdueInvoices // ignore: cast_nullable_to_non_nullable
as int,totalClients: null == totalClients ? _self.totalClients : totalClients // ignore: cast_nullable_to_non_nullable
as int,recentInvoices: null == recentInvoices ? _self.recentInvoices : recentInvoices // ignore: cast_nullable_to_non_nullable
as List<Invoice>,recentExpenses: null == recentExpenses ? _self.recentExpenses : recentExpenses // ignore: cast_nullable_to_non_nullable
as List<Expense>,monthlyTrends: null == monthlyTrends ? _self.monthlyTrends : monthlyTrends // ignore: cast_nullable_to_non_nullable
as List<DashboardTrendPoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [DashboardStats].
extension DashboardStatsPatterns on DashboardStats {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DashboardStats value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DashboardStats value)  $default,){
final _that = this;
switch (_that) {
case _DashboardStats():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DashboardStats value)?  $default,){
final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_profit')  double netProfit, @JsonKey(name: 'pending_invoices')  int pendingInvoices, @JsonKey(name: 'overdue_invoices')  int overdueInvoices, @JsonKey(name: 'total_clients')  int totalClients, @JsonKey(name: 'recent_invoices')  List<Invoice> recentInvoices, @JsonKey(name: 'recent_expenses')  List<Expense> recentExpenses, @JsonKey(name: 'monthly_trends')  List<DashboardTrendPoint> monthlyTrends)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalIncome,_that.totalExpenses,_that.netProfit,_that.pendingInvoices,_that.overdueInvoices,_that.totalClients,_that.recentInvoices,_that.recentExpenses,_that.monthlyTrends);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_profit')  double netProfit, @JsonKey(name: 'pending_invoices')  int pendingInvoices, @JsonKey(name: 'overdue_invoices')  int overdueInvoices, @JsonKey(name: 'total_clients')  int totalClients, @JsonKey(name: 'recent_invoices')  List<Invoice> recentInvoices, @JsonKey(name: 'recent_expenses')  List<Expense> recentExpenses, @JsonKey(name: 'monthly_trends')  List<DashboardTrendPoint> monthlyTrends)  $default,) {final _that = this;
switch (_that) {
case _DashboardStats():
return $default(_that.totalIncome,_that.totalExpenses,_that.netProfit,_that.pendingInvoices,_that.overdueInvoices,_that.totalClients,_that.recentInvoices,_that.recentExpenses,_that.monthlyTrends);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_income')  double totalIncome, @JsonKey(name: 'total_expenses')  double totalExpenses, @JsonKey(name: 'net_profit')  double netProfit, @JsonKey(name: 'pending_invoices')  int pendingInvoices, @JsonKey(name: 'overdue_invoices')  int overdueInvoices, @JsonKey(name: 'total_clients')  int totalClients, @JsonKey(name: 'recent_invoices')  List<Invoice> recentInvoices, @JsonKey(name: 'recent_expenses')  List<Expense> recentExpenses, @JsonKey(name: 'monthly_trends')  List<DashboardTrendPoint> monthlyTrends)?  $default,) {final _that = this;
switch (_that) {
case _DashboardStats() when $default != null:
return $default(_that.totalIncome,_that.totalExpenses,_that.netProfit,_that.pendingInvoices,_that.overdueInvoices,_that.totalClients,_that.recentInvoices,_that.recentExpenses,_that.monthlyTrends);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DashboardStats implements DashboardStats {
  const _DashboardStats({@JsonKey(name: 'total_income') this.totalIncome = 0, @JsonKey(name: 'total_expenses') this.totalExpenses = 0, @JsonKey(name: 'net_profit') this.netProfit = 0, @JsonKey(name: 'pending_invoices') this.pendingInvoices = 0, @JsonKey(name: 'overdue_invoices') this.overdueInvoices = 0, @JsonKey(name: 'total_clients') this.totalClients = 0, @JsonKey(name: 'recent_invoices') final  List<Invoice> recentInvoices = const <Invoice>[], @JsonKey(name: 'recent_expenses') final  List<Expense> recentExpenses = const <Expense>[], @JsonKey(name: 'monthly_trends') final  List<DashboardTrendPoint> monthlyTrends = const <DashboardTrendPoint>[]}): _recentInvoices = recentInvoices,_recentExpenses = recentExpenses,_monthlyTrends = monthlyTrends;
  factory _DashboardStats.fromJson(Map<String, dynamic> json) => _$DashboardStatsFromJson(json);

@override@JsonKey(name: 'total_income') final  double totalIncome;
@override@JsonKey(name: 'total_expenses') final  double totalExpenses;
@override@JsonKey(name: 'net_profit') final  double netProfit;
@override@JsonKey(name: 'pending_invoices') final  int pendingInvoices;
@override@JsonKey(name: 'overdue_invoices') final  int overdueInvoices;
@override@JsonKey(name: 'total_clients') final  int totalClients;
 final  List<Invoice> _recentInvoices;
@override@JsonKey(name: 'recent_invoices') List<Invoice> get recentInvoices {
  if (_recentInvoices is EqualUnmodifiableListView) return _recentInvoices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentInvoices);
}

 final  List<Expense> _recentExpenses;
@override@JsonKey(name: 'recent_expenses') List<Expense> get recentExpenses {
  if (_recentExpenses is EqualUnmodifiableListView) return _recentExpenses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_recentExpenses);
}

 final  List<DashboardTrendPoint> _monthlyTrends;
@override@JsonKey(name: 'monthly_trends') List<DashboardTrendPoint> get monthlyTrends {
  if (_monthlyTrends is EqualUnmodifiableListView) return _monthlyTrends;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_monthlyTrends);
}


/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DashboardStatsCopyWith<_DashboardStats> get copyWith => __$DashboardStatsCopyWithImpl<_DashboardStats>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DashboardStatsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DashboardStats&&(identical(other.totalIncome, totalIncome) || other.totalIncome == totalIncome)&&(identical(other.totalExpenses, totalExpenses) || other.totalExpenses == totalExpenses)&&(identical(other.netProfit, netProfit) || other.netProfit == netProfit)&&(identical(other.pendingInvoices, pendingInvoices) || other.pendingInvoices == pendingInvoices)&&(identical(other.overdueInvoices, overdueInvoices) || other.overdueInvoices == overdueInvoices)&&(identical(other.totalClients, totalClients) || other.totalClients == totalClients)&&const DeepCollectionEquality().equals(other._recentInvoices, _recentInvoices)&&const DeepCollectionEquality().equals(other._recentExpenses, _recentExpenses)&&const DeepCollectionEquality().equals(other._monthlyTrends, _monthlyTrends));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalIncome,totalExpenses,netProfit,pendingInvoices,overdueInvoices,totalClients,const DeepCollectionEquality().hash(_recentInvoices),const DeepCollectionEquality().hash(_recentExpenses),const DeepCollectionEquality().hash(_monthlyTrends));

@override
String toString() {
  return 'DashboardStats(totalIncome: $totalIncome, totalExpenses: $totalExpenses, netProfit: $netProfit, pendingInvoices: $pendingInvoices, overdueInvoices: $overdueInvoices, totalClients: $totalClients, recentInvoices: $recentInvoices, recentExpenses: $recentExpenses, monthlyTrends: $monthlyTrends)';
}


}

/// @nodoc
abstract mixin class _$DashboardStatsCopyWith<$Res> implements $DashboardStatsCopyWith<$Res> {
  factory _$DashboardStatsCopyWith(_DashboardStats value, $Res Function(_DashboardStats) _then) = __$DashboardStatsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_income') double totalIncome,@JsonKey(name: 'total_expenses') double totalExpenses,@JsonKey(name: 'net_profit') double netProfit,@JsonKey(name: 'pending_invoices') int pendingInvoices,@JsonKey(name: 'overdue_invoices') int overdueInvoices,@JsonKey(name: 'total_clients') int totalClients,@JsonKey(name: 'recent_invoices') List<Invoice> recentInvoices,@JsonKey(name: 'recent_expenses') List<Expense> recentExpenses,@JsonKey(name: 'monthly_trends') List<DashboardTrendPoint> monthlyTrends
});




}
/// @nodoc
class __$DashboardStatsCopyWithImpl<$Res>
    implements _$DashboardStatsCopyWith<$Res> {
  __$DashboardStatsCopyWithImpl(this._self, this._then);

  final _DashboardStats _self;
  final $Res Function(_DashboardStats) _then;

/// Create a copy of DashboardStats
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalIncome = null,Object? totalExpenses = null,Object? netProfit = null,Object? pendingInvoices = null,Object? overdueInvoices = null,Object? totalClients = null,Object? recentInvoices = null,Object? recentExpenses = null,Object? monthlyTrends = null,}) {
  return _then(_DashboardStats(
totalIncome: null == totalIncome ? _self.totalIncome : totalIncome // ignore: cast_nullable_to_non_nullable
as double,totalExpenses: null == totalExpenses ? _self.totalExpenses : totalExpenses // ignore: cast_nullable_to_non_nullable
as double,netProfit: null == netProfit ? _self.netProfit : netProfit // ignore: cast_nullable_to_non_nullable
as double,pendingInvoices: null == pendingInvoices ? _self.pendingInvoices : pendingInvoices // ignore: cast_nullable_to_non_nullable
as int,overdueInvoices: null == overdueInvoices ? _self.overdueInvoices : overdueInvoices // ignore: cast_nullable_to_non_nullable
as int,totalClients: null == totalClients ? _self.totalClients : totalClients // ignore: cast_nullable_to_non_nullable
as int,recentInvoices: null == recentInvoices ? _self._recentInvoices : recentInvoices // ignore: cast_nullable_to_non_nullable
as List<Invoice>,recentExpenses: null == recentExpenses ? _self._recentExpenses : recentExpenses // ignore: cast_nullable_to_non_nullable
as List<Expense>,monthlyTrends: null == monthlyTrends ? _self._monthlyTrends : monthlyTrends // ignore: cast_nullable_to_non_nullable
as List<DashboardTrendPoint>,
  ));
}


}

// dart format on
