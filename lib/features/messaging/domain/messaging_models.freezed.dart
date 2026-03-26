// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messaging_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WhatsAppMessage {

 int get id;@JsonKey(name: 'invoice_number') String? get invoiceNumber;@JsonKey(name: 'phone_number') String get phoneNumber;@JsonKey(name: 'message_text') String get messageText;@JsonKey(name: 'invoice_link') String? get invoiceLink;@JsonKey(name: 'delivery_status') String get deliveryStatus;@JsonKey(name: 'error_message') String? get errorMessage;@JsonKey(name: 'sent_at') DateTime? get sentAt; DateTime? get createdAt;
/// Create a copy of WhatsAppMessage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WhatsAppMessageCopyWith<WhatsAppMessage> get copyWith => _$WhatsAppMessageCopyWithImpl<WhatsAppMessage>(this as WhatsAppMessage, _$identity);

  /// Serializes this WhatsAppMessage to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WhatsAppMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.messageText, messageText) || other.messageText == messageText)&&(identical(other.invoiceLink, invoiceLink) || other.invoiceLink == invoiceLink)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,phoneNumber,messageText,invoiceLink,deliveryStatus,errorMessage,sentAt,createdAt);

@override
String toString() {
  return 'WhatsAppMessage(id: $id, invoiceNumber: $invoiceNumber, phoneNumber: $phoneNumber, messageText: $messageText, invoiceLink: $invoiceLink, deliveryStatus: $deliveryStatus, errorMessage: $errorMessage, sentAt: $sentAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class $WhatsAppMessageCopyWith<$Res>  {
  factory $WhatsAppMessageCopyWith(WhatsAppMessage value, $Res Function(WhatsAppMessage) _then) = _$WhatsAppMessageCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'invoice_number') String? invoiceNumber,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'message_text') String messageText,@JsonKey(name: 'invoice_link') String? invoiceLink,@JsonKey(name: 'delivery_status') String deliveryStatus,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'sent_at') DateTime? sentAt, DateTime? createdAt
});




}
/// @nodoc
class _$WhatsAppMessageCopyWithImpl<$Res>
    implements $WhatsAppMessageCopyWith<$Res> {
  _$WhatsAppMessageCopyWithImpl(this._self, this._then);

  final WhatsAppMessage _self;
  final $Res Function(WhatsAppMessage) _then;

/// Create a copy of WhatsAppMessage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? invoiceNumber = freezed,Object? phoneNumber = null,Object? messageText = null,Object? invoiceLink = freezed,Object? deliveryStatus = null,Object? errorMessage = freezed,Object? sentAt = freezed,Object? createdAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,messageText: null == messageText ? _self.messageText : messageText // ignore: cast_nullable_to_non_nullable
as String,invoiceLink: freezed == invoiceLink ? _self.invoiceLink : invoiceLink // ignore: cast_nullable_to_non_nullable
as String?,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [WhatsAppMessage].
extension WhatsAppMessagePatterns on WhatsAppMessage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WhatsAppMessage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WhatsAppMessage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WhatsAppMessage value)  $default,){
final _that = this;
switch (_that) {
case _WhatsAppMessage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WhatsAppMessage value)?  $default,){
final _that = this;
switch (_that) {
case _WhatsAppMessage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'message_text')  String messageText, @JsonKey(name: 'invoice_link')  String? invoiceLink, @JsonKey(name: 'delivery_status')  String deliveryStatus, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'sent_at')  DateTime? sentAt,  DateTime? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WhatsAppMessage() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.phoneNumber,_that.messageText,_that.invoiceLink,_that.deliveryStatus,_that.errorMessage,_that.sentAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'message_text')  String messageText, @JsonKey(name: 'invoice_link')  String? invoiceLink, @JsonKey(name: 'delivery_status')  String deliveryStatus, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'sent_at')  DateTime? sentAt,  DateTime? createdAt)  $default,) {final _that = this;
switch (_that) {
case _WhatsAppMessage():
return $default(_that.id,_that.invoiceNumber,_that.phoneNumber,_that.messageText,_that.invoiceLink,_that.deliveryStatus,_that.errorMessage,_that.sentAt,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'invoice_number')  String? invoiceNumber, @JsonKey(name: 'phone_number')  String phoneNumber, @JsonKey(name: 'message_text')  String messageText, @JsonKey(name: 'invoice_link')  String? invoiceLink, @JsonKey(name: 'delivery_status')  String deliveryStatus, @JsonKey(name: 'error_message')  String? errorMessage, @JsonKey(name: 'sent_at')  DateTime? sentAt,  DateTime? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _WhatsAppMessage() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.phoneNumber,_that.messageText,_that.invoiceLink,_that.deliveryStatus,_that.errorMessage,_that.sentAt,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WhatsAppMessage implements WhatsAppMessage {
  const _WhatsAppMessage({required this.id, @JsonKey(name: 'invoice_number') this.invoiceNumber, @JsonKey(name: 'phone_number') this.phoneNumber = '', @JsonKey(name: 'message_text') this.messageText = '', @JsonKey(name: 'invoice_link') this.invoiceLink, @JsonKey(name: 'delivery_status') this.deliveryStatus = 'pending', @JsonKey(name: 'error_message') this.errorMessage, @JsonKey(name: 'sent_at') this.sentAt, this.createdAt});
  factory _WhatsAppMessage.fromJson(Map<String, dynamic> json) => _$WhatsAppMessageFromJson(json);

@override final  int id;
@override@JsonKey(name: 'invoice_number') final  String? invoiceNumber;
@override@JsonKey(name: 'phone_number') final  String phoneNumber;
@override@JsonKey(name: 'message_text') final  String messageText;
@override@JsonKey(name: 'invoice_link') final  String? invoiceLink;
@override@JsonKey(name: 'delivery_status') final  String deliveryStatus;
@override@JsonKey(name: 'error_message') final  String? errorMessage;
@override@JsonKey(name: 'sent_at') final  DateTime? sentAt;
@override final  DateTime? createdAt;

/// Create a copy of WhatsAppMessage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WhatsAppMessageCopyWith<_WhatsAppMessage> get copyWith => __$WhatsAppMessageCopyWithImpl<_WhatsAppMessage>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WhatsAppMessageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WhatsAppMessage&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.messageText, messageText) || other.messageText == messageText)&&(identical(other.invoiceLink, invoiceLink) || other.invoiceLink == invoiceLink)&&(identical(other.deliveryStatus, deliveryStatus) || other.deliveryStatus == deliveryStatus)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.sentAt, sentAt) || other.sentAt == sentAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,phoneNumber,messageText,invoiceLink,deliveryStatus,errorMessage,sentAt,createdAt);

@override
String toString() {
  return 'WhatsAppMessage(id: $id, invoiceNumber: $invoiceNumber, phoneNumber: $phoneNumber, messageText: $messageText, invoiceLink: $invoiceLink, deliveryStatus: $deliveryStatus, errorMessage: $errorMessage, sentAt: $sentAt, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$WhatsAppMessageCopyWith<$Res> implements $WhatsAppMessageCopyWith<$Res> {
  factory _$WhatsAppMessageCopyWith(_WhatsAppMessage value, $Res Function(_WhatsAppMessage) _then) = __$WhatsAppMessageCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'invoice_number') String? invoiceNumber,@JsonKey(name: 'phone_number') String phoneNumber,@JsonKey(name: 'message_text') String messageText,@JsonKey(name: 'invoice_link') String? invoiceLink,@JsonKey(name: 'delivery_status') String deliveryStatus,@JsonKey(name: 'error_message') String? errorMessage,@JsonKey(name: 'sent_at') DateTime? sentAt, DateTime? createdAt
});




}
/// @nodoc
class __$WhatsAppMessageCopyWithImpl<$Res>
    implements _$WhatsAppMessageCopyWith<$Res> {
  __$WhatsAppMessageCopyWithImpl(this._self, this._then);

  final _WhatsAppMessage _self;
  final $Res Function(_WhatsAppMessage) _then;

/// Create a copy of WhatsAppMessage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? invoiceNumber = freezed,Object? phoneNumber = null,Object? messageText = null,Object? invoiceLink = freezed,Object? deliveryStatus = null,Object? errorMessage = freezed,Object? sentAt = freezed,Object? createdAt = freezed,}) {
  return _then(_WhatsAppMessage(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,messageText: null == messageText ? _self.messageText : messageText // ignore: cast_nullable_to_non_nullable
as String,invoiceLink: freezed == invoiceLink ? _self.invoiceLink : invoiceLink // ignore: cast_nullable_to_non_nullable
as String?,deliveryStatus: null == deliveryStatus ? _self.deliveryStatus : deliveryStatus // ignore: cast_nullable_to_non_nullable
as String,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,sentAt: freezed == sentAt ? _self.sentAt : sentAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
