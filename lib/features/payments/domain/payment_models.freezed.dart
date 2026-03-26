// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaymentTransaction {

 int get id;@JsonKey(name: 'invoice_number') String? get invoiceNumber;@JsonKey(name: 'phone_number') String get phoneNumber; double get amount; String get currency; String get status;@JsonKey(name: 'mpesa_receipt_number') String? get mpesaReceiptNumber;@JsonKey(name: 'result_description') String? get resultDescription;@JsonKey(name: 'paid_at') DateTime? get paidAt; DateTime? get createdAt;
/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaymentTransactionCopyWith<PaymentTransaction> get copyWith => _$PaymentTransactionCopyWithImpl<PaymentTransaction>(this as PaymentTransaction, _$identity);

  /// Serializes this PaymentTransaction to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaymentTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.mpesaReceiptNumber, mpesaReceiptNumber) || other.mpesaReceiptNumber == mpesaReceiptNumber)&&(identical(other.resultDescription, resultDescription) || other.resultDescription == resultDescription)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,phoneNumber,amount,currency,status,mpesaReceiptNumber,resultDescription,paidAt,createdAt);

@override
String toString() {
  return 'PaymentTransaction(id: $id, invoiceNumber: $invoiceNumber, phoneNumber: $phoneNumber, amount: $amount, currency: $currency, status: $status, mpesaReceiptNumber: $mpesaReceiptNumber, resultDescription: $resultDescription, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $PaymentTransactionCopyWith<$Res>  {
  factory $PaymentTransactionCopyWith(PaymentTransaction value, $Res Function(PaymentTransaction) _then) = _$PaymentTransactionCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'invoice_number') String? invoiceNumber,@JsonKey(name: 'phone_number') String phoneNumber, double amount, String currency, String status,@JsonKey(name: 'mpesa_receipt_number') String? mpesaReceiptNumber,@JsonKey(name: 'result_description') String? resultDescription,@JsonKey(name: 'paid_at') DateTime? paidAt, DateTime? createdAt
});




}
/// @nodoc
class _$PaymentTransactionCopyWithImpl<$Res>
    implements $PaymentTransactionCopyWith<$Res> {
  _$PaymentTransactionCopyWithImpl(this._self, this._then);

  final PaymentTransaction _self;
  final $Res Function(PaymentTransaction) _then;

/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceNumber = freezed,Object? phoneNumber = null,Object? amount = null,Object? currency = null,Object? status = null,Object? mpesaReceiptNumber = freezed,Object? resultDescription = freezed,Object? paidAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,mpesaReceiptNumber: freezed == mpesaReceiptNumber ? _self.mpesaReceiptNumber : mpesaReceiptNumber // ignore: cast_nullable_to_non_nullable
as String?,resultDescription: freezed == resultDescription ? _self.resultDescription : resultDescription // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [PaymentTransaction].
extension PaymentTransactionPatterns on PaymentTransaction {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaymentTransaction value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaymentTransaction value)  $default,){
final _that = this;
switch (_that) {
case _PaymentTransaction():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaymentTransaction value)?  $default,){
final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber, @JsonKey(name: 'phone_number')  String phoneNumber,  double amount,  String currency,  String status, @JsonKey(name: 'mpesa_receipt_number')  String? mpesaReceiptNumber, @JsonKey(name: 'result_description')  String? resultDescription, @JsonKey(name: 'paid_at')  DateTime? paidAt,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.phoneNumber,_that.amount,_that.currency,_that.status,_that.mpesaReceiptNumber,_that.resultDescription,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber, @JsonKey(name: 'phone_number')  String phoneNumber,  double amount,  String currency,  String status, @JsonKey(name: 'mpesa_receipt_number')  String? mpesaReceiptNumber, @JsonKey(name: 'result_description')  String? resultDescription, @JsonKey(name: 'paid_at')  DateTime? paidAt,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _PaymentTransaction():
return $default(_that.id,_that.invoiceNumber,_that.phoneNumber,_that.amount,_that.currency,_that.status,_that.mpesaReceiptNumber,_that.resultDescription,_that.paidAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber, @JsonKey(name: 'phone_number')  String phoneNumber,  double amount,  String currency,  String status, @JsonKey(name: 'mpesa_receipt_number')  String? mpesaReceiptNumber, @JsonKey(name: 'result_description')  String? resultDescription, @JsonKey(name: 'paid_at')  DateTime? paidAt,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _PaymentTransaction() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.phoneNumber,_that.amount,_that.currency,_that.status,_that.mpesaReceiptNumber,_that.resultDescription,_that.paidAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaymentTransaction implements PaymentTransaction {
  const _PaymentTransaction({required this.id, @JsonKey(name: 'invoice_number') this.invoiceNumber, @JsonKey(name: 'phone_number') this.phoneNumber = '', this.amount = 0, this.currency = 'KES', this.status = 'pending', @JsonKey(name: 'mpesa_receipt_number') this.mpesaReceiptNumber, @JsonKey(name: 'result_description') this.resultDescription, @JsonKey(name: 'paid_at') this.paidAt, this.createdAt});
  factory _PaymentTransaction.fromJson(Map<String, dynamic> json) => _$PaymentTransactionFromJson(json);

@override final  int id;
@override@JsonKey(name: 'invoice_number') final  String? invoiceNumber;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey() final  double amount;
@override@JsonKey() final  String currency;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'mpesa_receipt_number') final  String? mpesaReceiptNumber;
@override@JsonKey(name: 'result_description') final  String? resultDescription;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;
@override final  DateTime? createdAt;

/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaymentTransactionCopyWith<_PaymentTransaction> get copyWith => __$PaymentTransactionCopyWithImpl<_PaymentTransaction>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaymentTransactionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaymentTransaction&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.status, status) || other.status == status)&&(identical(other.mpesaReceiptNumber, mpesaReceiptNumber) || other.mpesaReceiptNumber == mpesaReceiptNumber)&&(identical(other.resultDescription, resultDescription) || other.resultDescription == resultDescription)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,phoneNumber,amount,currency,status,mpesaReceiptNumber,resultDescription,paidAt,createdAt);

@override
String toString() {
  return 'PaymentTransaction(id: $id, invoiceNumber: $invoiceNumber, phoneNumber: $phoneNumber, amount: $amount, currency: $currency, status: $status, mpesaReceiptNumber: $mpesaReceiptNumber, resultDescription: $resultDescription, paidAt: $paidAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$PaymentTransactionCopyWith<$Res> implements $PaymentTransactionCopyWith<$Res> {
  factory _$PaymentTransactionCopyWith(_PaymentTransaction value, $Res Function(_PaymentTransaction) _then) = __$PaymentTransactionCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'invoice_number') String? invoiceNumber,@JsonKey(name: 'phone_number') String phoneNumber, double amount, String currency, String status,@JsonKey(name: 'mpesa_receipt_number') String? mpesaReceiptNumber,@JsonKey(name: 'result_description') String? resultDescription,@JsonKey(name: 'paid_at') DateTime? paidAt, DateTime? createdAt
});




}
/// @nodoc
class __$PaymentTransactionCopyWithImpl<$Res>
    implements _$PaymentTransactionCopyWith<$Res> {
  __$PaymentTransactionCopyWithImpl(this._self, this._then);

  final _PaymentTransaction _self;
  final $Res Function(_PaymentTransaction) _then;

/// Create a copy of PaymentTransaction
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceNumber = freezed,Object? phoneNumber = null,Object? amount = null,Object? currency = null,Object? status = null,Object? mpesaReceiptNumber = freezed,Object? resultDescription = freezed,Object? paidAt = freezed,Object? createdAt = freezed,}) {
  return _then(_PaymentTransaction(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,mpesaReceiptNumber: freezed == mpesaReceiptNumber ? _self.mpesaReceiptNumber : mpesaReceiptNumber // ignore: cast_nullable_to_non_nullable
as String?,resultDescription: freezed == resultDescription ? _self.resultDescription : resultDescription // ignore: cast_nullable_to_non_nullable
as String?,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
