// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expense_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Expense {

 int? get id; int? get business;@JsonKey(name: 'business_id') int? get businessId; int? get user; String get category; String get title; String get description;@JsonKey(name: 'notes') String get notes; double get amount;@JsonKey(name: 'vat_amount') double get vatAmount;@JsonKey(name: 'total_amount') double get totalAmount;@JsonKey(name: 'tax_deductible') bool get taxDeductible;@JsonKey(name: 'expense_date') DateTime? get expenseDate; String? get receipt; DateTime? get createdAt; DateTime? get updatedAt; String get syncState;
/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpenseCopyWith<Expense> get copyWith => _$ExpenseCopyWithImpl<Expense>(this as Expense, _$identity);

  /// Serializes this Expense to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Expense&&(identical(other.id, id) || other.id == id)&&(identical(other.business, business) || other.business == business)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.user, user) || other.user == user)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.vatAmount, vatAmount) || other.vatAmount == vatAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxDeductible, taxDeductible) || other.taxDeductible == taxDeductible)&&(identical(other.expenseDate, expenseDate) || other.expenseDate == expenseDate)&&(identical(other.receipt, receipt) || other.receipt == receipt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.syncState, syncState) || other.syncState == syncState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,business,businessId,user,category,title,description,notes,amount,vatAmount,totalAmount,taxDeductible,expenseDate,receipt,createdAt,updatedAt,syncState);

@override
String toString() {
  return 'Expense(id: $id, business: $business, businessId: $businessId, user: $user, category: $category, title: $title, description: $description, notes: $notes, amount: $amount, vatAmount: $vatAmount, totalAmount: $totalAmount, taxDeductible: $taxDeductible, expenseDate: $expenseDate, receipt: $receipt, createdAt: $createdAt, updatedAt: $updatedAt, syncState: $syncState)';
}


}

/// @nodoc
abstract mixin class $ExpenseCopyWith<$Res>  {
  factory $ExpenseCopyWith(Expense value, $Res Function(Expense) _then) = _$ExpenseCopyWithImpl;
@useResult
$Res call({
 int? id, int? business,@JsonKey(name: 'business_id') int? businessId, int? user, String category, String title, String description,@JsonKey(name: 'notes') String notes, double amount,@JsonKey(name: 'vat_amount') double vatAmount,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'tax_deductible') bool taxDeductible,@JsonKey(name: 'expense_date') DateTime? expenseDate, String? receipt, DateTime? createdAt, DateTime? updatedAt, String syncState
});




}
/// @nodoc
class _$ExpenseCopyWithImpl<$Res>
    implements $ExpenseCopyWith<$Res> {
  _$ExpenseCopyWithImpl(this._self, this._then);

  final Expense _self;
  final $Res Function(Expense) _then;

/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? business = freezed,Object? businessId = freezed,Object? user = freezed,Object? category = null,Object? title = null,Object? description = null,Object? notes = null,Object? amount = null,Object? vatAmount = null,Object? totalAmount = null,Object? taxDeductible = null,Object? expenseDate = freezed,Object? receipt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? syncState = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as int?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,vatAmount: null == vatAmount ? _self.vatAmount : vatAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxDeductible: null == taxDeductible ? _self.taxDeductible : taxDeductible // ignore: cast_nullable_to_non_nullable
as bool,expenseDate: freezed == expenseDate ? _self.expenseDate : expenseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,receipt: freezed == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncState: null == syncState ? _self.syncState : syncState // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Expense].
extension ExpensePatterns on Expense {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Expense value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Expense() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Expense value)  $default,){
final _that = this;
switch (_that) {
case _Expense():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Expense value)?  $default,){
final _that = this;
switch (_that) {
case _Expense() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  int? business, @JsonKey(name: 'business_id')  int? businessId,  int? user,  String category,  String title,  String description, @JsonKey(name: 'notes')  String notes,  double amount, @JsonKey(name: 'vat_amount')  double vatAmount, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'tax_deductible')  bool taxDeductible, @JsonKey(name: 'expense_date')  DateTime? expenseDate,  String? receipt,  DateTime? createdAt,  DateTime? updatedAt,  String syncState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Expense() when $default != null:
return $default(_that.id,_that.business,_that.businessId,_that.user,_that.category,_that.title,_that.description,_that.notes,_that.amount,_that.vatAmount,_that.totalAmount,_that.taxDeductible,_that.expenseDate,_that.receipt,_that.createdAt,_that.updatedAt,_that.syncState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  int? business, @JsonKey(name: 'business_id')  int? businessId,  int? user,  String category,  String title,  String description, @JsonKey(name: 'notes')  String notes,  double amount, @JsonKey(name: 'vat_amount')  double vatAmount, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'tax_deductible')  bool taxDeductible, @JsonKey(name: 'expense_date')  DateTime? expenseDate,  String? receipt,  DateTime? createdAt,  DateTime? updatedAt,  String syncState)  $default,) {final _that = this;
switch (_that) {
case _Expense():
return $default(_that.id,_that.business,_that.businessId,_that.user,_that.category,_that.title,_that.description,_that.notes,_that.amount,_that.vatAmount,_that.totalAmount,_that.taxDeductible,_that.expenseDate,_that.receipt,_that.createdAt,_that.updatedAt,_that.syncState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  int? business, @JsonKey(name: 'business_id')  int? businessId,  int? user,  String category,  String title,  String description, @JsonKey(name: 'notes')  String notes,  double amount, @JsonKey(name: 'vat_amount')  double vatAmount, @JsonKey(name: 'total_amount')  double totalAmount, @JsonKey(name: 'tax_deductible')  bool taxDeductible, @JsonKey(name: 'expense_date')  DateTime? expenseDate,  String? receipt,  DateTime? createdAt,  DateTime? updatedAt,  String syncState)?  $default,) {final _that = this;
switch (_that) {
case _Expense() when $default != null:
return $default(_that.id,_that.business,_that.businessId,_that.user,_that.category,_that.title,_that.description,_that.notes,_that.amount,_that.vatAmount,_that.totalAmount,_that.taxDeductible,_that.expenseDate,_that.receipt,_that.createdAt,_that.updatedAt,_that.syncState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Expense implements Expense {
  const _Expense({this.id, this.business, @JsonKey(name: 'business_id') this.businessId, this.user, this.category = 'other', this.title = '', this.description = '', @JsonKey(name: 'notes') this.notes = '', this.amount = 0, @JsonKey(name: 'vat_amount') this.vatAmount = 0, @JsonKey(name: 'total_amount') this.totalAmount = 0, @JsonKey(name: 'tax_deductible') this.taxDeductible = true, @JsonKey(name: 'expense_date') this.expenseDate, this.receipt, this.createdAt, this.updatedAt, this.syncState = 'synced'});
  factory _Expense.fromJson(Map<String, dynamic> json) => _$ExpenseFromJson(json);

@override final  int? id;
@override final  int? business;
@override@JsonKey(name: 'business_id') final  int? businessId;
@override final  int? user;
@override@JsonKey() final  String category;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override@JsonKey(name: 'notes') final  String notes;
@override@JsonKey() final  double amount;
@override@JsonKey(name: 'vat_amount') final  double vatAmount;
@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey(name: 'tax_deductible') final  bool taxDeductible;
@override@JsonKey(name: 'expense_date') final  DateTime? expenseDate;
@override final  String? receipt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  String syncState;

/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpenseCopyWith<_Expense> get copyWith => __$ExpenseCopyWithImpl<_Expense>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpenseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Expense&&(identical(other.id, id) || other.id == id)&&(identical(other.business, business) || other.business == business)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.user, user) || other.user == user)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.vatAmount, vatAmount) || other.vatAmount == vatAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.taxDeductible, taxDeductible) || other.taxDeductible == taxDeductible)&&(identical(other.expenseDate, expenseDate) || other.expenseDate == expenseDate)&&(identical(other.receipt, receipt) || other.receipt == receipt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.syncState, syncState) || other.syncState == syncState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,business,businessId,user,category,title,description,notes,amount,vatAmount,totalAmount,taxDeductible,expenseDate,receipt,createdAt,updatedAt,syncState);

@override
String toString() {
  return 'Expense(id: $id, business: $business, businessId: $businessId, user: $user, category: $category, title: $title, description: $description, notes: $notes, amount: $amount, vatAmount: $vatAmount, totalAmount: $totalAmount, taxDeductible: $taxDeductible, expenseDate: $expenseDate, receipt: $receipt, createdAt: $createdAt, updatedAt: $updatedAt, syncState: $syncState)';
}


}

/// @nodoc
abstract mixin class _$ExpenseCopyWith<$Res> implements $ExpenseCopyWith<$Res> {
  factory _$ExpenseCopyWith(_Expense value, $Res Function(_Expense) _then) = __$ExpenseCopyWithImpl;
@override @useResult
$Res call({
 int? id, int? business,@JsonKey(name: 'business_id') int? businessId, int? user, String category, String title, String description,@JsonKey(name: 'notes') String notes, double amount,@JsonKey(name: 'vat_amount') double vatAmount,@JsonKey(name: 'total_amount') double totalAmount,@JsonKey(name: 'tax_deductible') bool taxDeductible,@JsonKey(name: 'expense_date') DateTime? expenseDate, String? receipt, DateTime? createdAt, DateTime? updatedAt, String syncState
});




}
/// @nodoc
class __$ExpenseCopyWithImpl<$Res>
    implements _$ExpenseCopyWith<$Res> {
  __$ExpenseCopyWithImpl(this._self, this._then);

  final _Expense _self;
  final $Res Function(_Expense) _then;

/// Create a copy of Expense
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? business = freezed,Object? businessId = freezed,Object? user = freezed,Object? category = null,Object? title = null,Object? description = null,Object? notes = null,Object? amount = null,Object? vatAmount = null,Object? totalAmount = null,Object? taxDeductible = null,Object? expenseDate = freezed,Object? receipt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? syncState = null,}) {
  return _then(_Expense(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,business: freezed == business ? _self.business : business // ignore: cast_nullable_to_non_nullable
as int?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as int?,category: null == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,vatAmount: null == vatAmount ? _self.vatAmount : vatAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,taxDeductible: null == taxDeductible ? _self.taxDeductible : taxDeductible // ignore: cast_nullable_to_non_nullable
as bool,expenseDate: freezed == expenseDate ? _self.expenseDate : expenseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,receipt: freezed == receipt ? _self.receipt : receipt // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncState: null == syncState ? _self.syncState : syncState // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
