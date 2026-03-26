// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TaxSubmission {

 int get id;@JsonKey(name: 'invoice_number') String? get invoiceNumber; String get status;@JsonKey(name: 'tax_invoice_number') String? get taxInvoiceNumber;@JsonKey(name: 'error_message') String? get errorMessage;@JsonKey(name: 'submitted_at') DateTime? get submittedAt; DateTime? get createdAt;
/// Create a copy of TaxSubmission
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TaxSubmissionCopyWith<TaxSubmission> get copyWith => _$TaxSubmissionCopyWithImpl<TaxSubmission>(this as TaxSubmission, _$identity);

  /// Serializes this TaxSubmission to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TaxSubmission&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.taxInvoiceNumber, taxInvoiceNumber) || other.taxInvoiceNumber == taxInvoiceNumber)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,status,taxInvoiceNumber,errorMessage,submittedAt,createdAt);

@override
String toString() {
  return 'TaxSubmission(id: $id, invoiceNumber: $invoiceNumber, status: $status, taxInvoiceNumber: $taxInvoiceNumber, errorMessage: $errorMessage, submittedAt: $submittedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $TaxSubmissionCopyWith<$Res>  {
  factory $TaxSubmissionCopyWith(TaxSubmission value, $Res Function(TaxSubmission) _then) = _$TaxSubmissionCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'invoice_number') String? invoiceNumber, String status,@JsonKey(name: 'tax_invoice_number') String? taxInvoiceNumber,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'submitted_at') DateTime? submittedAt, DateTime? createdAt
});




}
/// @nodoc
class _$TaxSubmissionCopyWithImpl<$Res>
    implements $TaxSubmissionCopyWith<$Res> {
  _$TaxSubmissionCopyWithImpl(this._self, this._then);

  final TaxSubmission _self;
  final $Res Function(TaxSubmission) _then;

/// Create a copy of TaxSubmission
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceNumber = freezed,Object? status = null,Object? taxInvoiceNumber = freezed,Object? errorMessage = freezed,Object? submittedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,taxInvoiceNumber: freezed == taxInvoiceNumber ? _self.taxInvoiceNumber : taxInvoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TaxSubmission].
extension TaxSubmissionPatterns on TaxSubmission {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TaxSubmission value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TaxSubmission() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TaxSubmission value)  $default,){
final _that = this;
switch (_that) {
case _TaxSubmission():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TaxSubmission value)?  $default,){
final _that = this;
switch (_that) {
case _TaxSubmission() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber,  String status, @JsonKey(name: 'tax_invoice_number')  String? taxInvoiceNumber, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'submitted_at')  DateTime? submittedAt,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TaxSubmission() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.status,_that.taxInvoiceNumber,_that.errorMessage,_that.submittedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber,  String status, @JsonKey(name: 'tax_invoice_number')  String? taxInvoiceNumber, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'submitted_at')  DateTime? submittedAt,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _TaxSubmission():
return $default(_that.id,_that.invoiceNumber,_that.status,_that.taxInvoiceNumber,_that.errorMessage,_that.submittedAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber,  String status, @JsonKey(name: 'tax_invoice_number')  String? taxInvoiceNumber, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'submitted_at')  DateTime? submittedAt,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _TaxSubmission() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.status,_that.taxInvoiceNumber,_that.errorMessage,_that.submittedAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TaxSubmission implements TaxSubmission {
  const _TaxSubmission({required this.id, @JsonKey(name: 'invoice_number') this.invoiceNumber, this.status = 'pending', @JsonKey(name: 'tax_invoice_number') this.taxInvoiceNumber, @JsonKey(name: 'error_message') this.errorMessage, @JsonKey(name: 'submitted_at') this.submittedAt, this.createdAt});
  factory _TaxSubmission.fromJson(Map<String, dynamic> json) => _$TaxSubmissionFromJson(json);

@override final  int id;
@override@JsonKey(name: 'invoice_number') final  String? invoiceNumber;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'tax_invoice_number') final  String? taxInvoiceNumber;
@override@JsonKey(name: 'error_message') final  String? errorMessage;
@override@JsonKey(name: 'submitted_at') final  DateTime? submittedAt;
@override final  DateTime? createdAt;

/// Create a copy of TaxSubmission
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TaxSubmissionCopyWith<_TaxSubmission> get copyWith => __$TaxSubmissionCopyWithImpl<_TaxSubmission>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TaxSubmissionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TaxSubmission&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.status, status) || other.status == status)&&(identical(other.taxInvoiceNumber, taxInvoiceNumber) || other.taxInvoiceNumber == taxInvoiceNumber)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,status,taxInvoiceNumber,errorMessage,submittedAt,createdAt);

@override
String toString() {
  return 'TaxSubmission(id: $id, invoiceNumber: $invoiceNumber, status: $status, taxInvoiceNumber: $taxInvoiceNumber, errorMessage: $errorMessage, submittedAt: $submittedAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$TaxSubmissionCopyWith<$Res> implements $TaxSubmissionCopyWith<$Res> {
  factory _$TaxSubmissionCopyWith(_TaxSubmission value, $Res Function(_TaxSubmission) _then) = __$TaxSubmissionCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'invoice_number') String? invoiceNumber, String status,@JsonKey(name: 'tax_invoice_number') String? taxInvoiceNumber,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'submitted_at') DateTime? submittedAt, DateTime? createdAt
});




}
/// @nodoc
class __$TaxSubmissionCopyWithImpl<$Res>
    implements _$TaxSubmissionCopyWith<$Res> {
  __$TaxSubmissionCopyWithImpl(this._self, this._then);

  final _TaxSubmission _self;
  final $Res Function(_TaxSubmission) _then;

/// Create a copy of TaxSubmission
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceNumber = freezed,Object? status = null,Object? taxInvoiceNumber = freezed,Object? errorMessage = freezed,Object? submittedAt = freezed,Object? createdAt = freezed,}) {
  return _then(_TaxSubmission(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,taxInvoiceNumber: freezed == taxInvoiceNumber ? _self.taxInvoiceNumber : taxInvoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
