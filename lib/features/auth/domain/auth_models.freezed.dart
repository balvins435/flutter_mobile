// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SessionTokens {

 String get access; String get refresh;
/// Create a copy of SessionTokens
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SessionTokensCopyWith<SessionTokens> get copyWith => _$SessionTokensCopyWithImpl<SessionTokens>(this as SessionTokens, _$identity);

  /// Serializes this SessionTokens to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SessionTokens&&(identical(other.access, access) || other.access == access)&&(identical(other.refresh, refresh) || other.refresh == refresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access,refresh);

@override
String toString() {
  return 'SessionTokens(access: $access, refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class $SessionTokensCopyWith<$Res>  {
  factory $SessionTokensCopyWith(SessionTokens value, $Res Function(SessionTokens) _then) = _$SessionTokensCopyWithImpl;
@useResult
$Res call({
 String access, String refresh
});




}
/// @nodoc
class _$SessionTokensCopyWithImpl<$Res>
    implements $SessionTokensCopyWith<$Res> {
  _$SessionTokensCopyWithImpl(this._self, this._then);

  final SessionTokens _self;
  final $Res Function(SessionTokens) _then;

/// Create a copy of SessionTokens
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? access = null,Object? refresh = null,}) {
  return _then(_self.copyWith(
access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String,refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SessionTokens].
extension SessionTokensPatterns on SessionTokens {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SessionTokens value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SessionTokens() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SessionTokens value)  $default,){
final _that = this;
switch (_that) {
case _SessionTokens():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SessionTokens value)?  $default,){
final _that = this;
switch (_that) {
case _SessionTokens() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String access,  String refresh)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SessionTokens() when $default != null:
return $default(_that.access,_that.refresh);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String access,  String refresh)  $default,) {final _that = this;
switch (_that) {
case _SessionTokens():
return $default(_that.access,_that.refresh);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String access,  String refresh)?  $default,) {final _that = this;
switch (_that) {
case _SessionTokens() when $default != null:
return $default(_that.access,_that.refresh);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SessionTokens implements SessionTokens {
  const _SessionTokens({required this.access, required this.refresh});
  factory _SessionTokens.fromJson(Map<String, dynamic> json) => _$SessionTokensFromJson(json);

@override final  String access;
@override final  String refresh;

/// Create a copy of SessionTokens
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SessionTokensCopyWith<_SessionTokens> get copyWith => __$SessionTokensCopyWithImpl<_SessionTokens>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SessionTokensToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SessionTokens&&(identical(other.access, access) || other.access == access)&&(identical(other.refresh, refresh) || other.refresh == refresh));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,access,refresh);

@override
String toString() {
  return 'SessionTokens(access: $access, refresh: $refresh)';
}


}

/// @nodoc
abstract mixin class _$SessionTokensCopyWith<$Res> implements $SessionTokensCopyWith<$Res> {
  factory _$SessionTokensCopyWith(_SessionTokens value, $Res Function(_SessionTokens) _then) = __$SessionTokensCopyWithImpl;
@override @useResult
$Res call({
 String access, String refresh
});




}
/// @nodoc
class __$SessionTokensCopyWithImpl<$Res>
    implements _$SessionTokensCopyWith<$Res> {
  __$SessionTokensCopyWithImpl(this._self, this._then);

  final _SessionTokens _self;
  final $Res Function(_SessionTokens) _then;

/// Create a copy of SessionTokens
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? access = null,Object? refresh = null,}) {
  return _then(_SessionTokens(
access: null == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String,refresh: null == refresh ? _self.refresh : refresh // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$UserProfile {

 int get id; String get email;@JsonKey(name: 'full_name') String get fullName;@JsonKey(name: 'email_invoice_updates') bool get emailInvoiceUpdates;@JsonKey(name: 'email_weekly_summary') bool get emailWeeklySummary;@JsonKey(name: 'email_marketing') bool get emailMarketing; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserProfileCopyWith<UserProfile> get copyWith => _$UserProfileCopyWithImpl<UserProfile>(this as UserProfile, _$identity);

  /// Serializes this UserProfile to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.emailInvoiceUpdates, emailInvoiceUpdates) || other.emailInvoiceUpdates == emailInvoiceUpdates)&&(identical(other.emailWeeklySummary, emailWeeklySummary) || other.emailWeeklySummary == emailWeeklySummary)&&(identical(other.emailMarketing, emailMarketing) || other.emailMarketing == emailMarketing)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,fullName,emailInvoiceUpdates,emailWeeklySummary,emailMarketing,createdAt,updatedAt);

@override
String toString() {
  return 'UserProfile(id: $id, email: $email, fullName: $fullName, emailInvoiceUpdates: $emailInvoiceUpdates, emailWeeklySummary: $emailWeeklySummary, emailMarketing: $emailMarketing, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $UserProfileCopyWith<$Res>  {
  factory $UserProfileCopyWith(UserProfile value, $Res Function(UserProfile) _then) = _$UserProfileCopyWithImpl;
@useResult
$Res call({
 int id, String email,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'email_invoice_updates') bool emailInvoiceUpdates,@JsonKey(name: 'email_weekly_summary') bool emailWeeklySummary,@JsonKey(name: 'email_marketing') bool emailMarketing, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._self, this._then);

  final UserProfile _self;
  final $Res Function(UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? email = null,Object? fullName = null,Object? emailInvoiceUpdates = null,Object? emailWeeklySummary = null,Object? emailMarketing = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,emailInvoiceUpdates: null == emailInvoiceUpdates ? _self.emailInvoiceUpdates : emailInvoiceUpdates // ignore: cast_nullable_to_non_nullable
as bool,emailWeeklySummary: null == emailWeeklySummary ? _self.emailWeeklySummary : emailWeeklySummary // ignore: cast_nullable_to_non_nullable
as bool,emailMarketing: null == emailMarketing ? _self.emailMarketing : emailMarketing // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserProfile].
extension UserProfilePatterns on UserProfile {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserProfile value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserProfile value)  $default,){
final _that = this;
switch (_that) {
case _UserProfile():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserProfile value)?  $default,){
final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String email, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'email_invoice_updates')  bool emailInvoiceUpdates, @JsonKey(name: 'email_weekly_summary')  bool emailWeeklySummary, @JsonKey(name: 'email_marketing')  bool emailMarketing,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.email,_that.fullName,_that.emailInvoiceUpdates,_that.emailWeeklySummary,_that.emailMarketing,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String email, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'email_invoice_updates')  bool emailInvoiceUpdates, @JsonKey(name: 'email_weekly_summary')  bool emailWeeklySummary, @JsonKey(name: 'email_marketing')  bool emailMarketing,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _UserProfile():
return $default(_that.id,_that.email,_that.fullName,_that.emailInvoiceUpdates,_that.emailWeeklySummary,_that.emailMarketing,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String email, @JsonKey(name: 'full_name')  String fullName, @JsonKey(name: 'email_invoice_updates')  bool emailInvoiceUpdates, @JsonKey(name: 'email_weekly_summary')  bool emailWeeklySummary, @JsonKey(name: 'email_marketing')  bool emailMarketing,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _UserProfile() when $default != null:
return $default(_that.id,_that.email,_that.fullName,_that.emailInvoiceUpdates,_that.emailWeeklySummary,_that.emailMarketing,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserProfile implements UserProfile {
  const _UserProfile({required this.id, required this.email, @JsonKey(name: 'full_name') required this.fullName, @JsonKey(name: 'email_invoice_updates') this.emailInvoiceUpdates = true, @JsonKey(name: 'email_weekly_summary') this.emailWeeklySummary = true, @JsonKey(name: 'email_marketing') this.emailMarketing = false, this.createdAt, this.updatedAt});
  factory _UserProfile.fromJson(Map<String, dynamic> json) => _$UserProfileFromJson(json);

@override final  int id;
@override final  String email;
@override@JsonKey(name: 'full_name') final  String fullName;
@override@JsonKey(name: 'email_invoice_updates') final  bool emailInvoiceUpdates;
@override@JsonKey(name: 'email_weekly_summary') final  bool emailWeeklySummary;
@override@JsonKey(name: 'email_marketing') final  bool emailMarketing;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserProfileCopyWith<_UserProfile> get copyWith => __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserProfileToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserProfile&&(identical(other.id, id) || other.id == id)&&(identical(other.email, email) || other.email == email)&&(identical(other.fullName, fullName) || other.fullName == fullName)&&(identical(other.emailInvoiceUpdates, emailInvoiceUpdates) || other.emailInvoiceUpdates == emailInvoiceUpdates)&&(identical(other.emailWeeklySummary, emailWeeklySummary) || other.emailWeeklySummary == emailWeeklySummary)&&(identical(other.emailMarketing, emailMarketing) || other.emailMarketing == emailMarketing)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,email,fullName,emailInvoiceUpdates,emailWeeklySummary,emailMarketing,createdAt,updatedAt);

@override
String toString() {
  return 'UserProfile(id: $id, email: $email, fullName: $fullName, emailInvoiceUpdates: $emailInvoiceUpdates, emailWeeklySummary: $emailWeeklySummary, emailMarketing: $emailMarketing, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$UserProfileCopyWith<$Res> implements $UserProfileCopyWith<$Res> {
  factory _$UserProfileCopyWith(_UserProfile value, $Res Function(_UserProfile) _then) = __$UserProfileCopyWithImpl;
@override @useResult
$Res call({
 int id, String email,@JsonKey(name: 'full_name') String fullName,@JsonKey(name: 'email_invoice_updates') bool emailInvoiceUpdates,@JsonKey(name: 'email_weekly_summary') bool emailWeeklySummary,@JsonKey(name: 'email_marketing') bool emailMarketing, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$UserProfileCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(this._self, this._then);

  final _UserProfile _self;
  final $Res Function(_UserProfile) _then;

/// Create a copy of UserProfile
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? email = null,Object? fullName = null,Object? emailInvoiceUpdates = null,Object? emailWeeklySummary = null,Object? emailMarketing = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_UserProfile(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,fullName: null == fullName ? _self.fullName : fullName // ignore: cast_nullable_to_non_nullable
as String,emailInvoiceUpdates: null == emailInvoiceUpdates ? _self.emailInvoiceUpdates : emailInvoiceUpdates // ignore: cast_nullable_to_non_nullable
as bool,emailWeeklySummary: null == emailWeeklySummary ? _self.emailWeeklySummary : emailWeeklySummary // ignore: cast_nullable_to_non_nullable
as bool,emailMarketing: null == emailMarketing ? _self.emailMarketing : emailMarketing // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Unauthenticated value)?  unauthenticated,TResult Function( _Authenticated value)?  authenticated,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Unauthenticated value)  unauthenticated,required TResult Function( _Authenticated value)  authenticated,}){
final _that = this;
switch (_that) {
case _Unauthenticated():
return unauthenticated(_that);case _Authenticated():
return authenticated(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Unauthenticated value)?  unauthenticated,TResult? Function( _Authenticated value)?  authenticated,}){
final _that = this;
switch (_that) {
case _Unauthenticated() when unauthenticated != null:
return unauthenticated(_that);case _Authenticated() when authenticated != null:
return authenticated(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  unauthenticated,TResult Function( UserProfile user)?  authenticated,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Authenticated() when authenticated != null:
return authenticated(_that.user);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  unauthenticated,required TResult Function( UserProfile user)  authenticated,}) {final _that = this;
switch (_that) {
case _Unauthenticated():
return unauthenticated();case _Authenticated():
return authenticated(_that.user);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  unauthenticated,TResult? Function( UserProfile user)?  authenticated,}) {final _that = this;
switch (_that) {
case _Unauthenticated() when unauthenticated != null:
return unauthenticated();case _Authenticated() when authenticated != null:
return authenticated(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _Unauthenticated implements AuthState {
  const _Unauthenticated();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Unauthenticated);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.unauthenticated()';
}


}




/// @nodoc


class _Authenticated implements AuthState {
  const _Authenticated({required this.user});
  

 final  UserProfile user;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatedCopyWith<_Authenticated> get copyWith => __$AuthenticatedCopyWithImpl<_Authenticated>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Authenticated&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'AuthState.authenticated(user: $user)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatedCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthenticatedCopyWith(_Authenticated value, $Res Function(_Authenticated) _then) = __$AuthenticatedCopyWithImpl;
@useResult
$Res call({
 UserProfile user
});


$UserProfileCopyWith<$Res> get user;

}
/// @nodoc
class __$AuthenticatedCopyWithImpl<$Res>
    implements _$AuthenticatedCopyWith<$Res> {
  __$AuthenticatedCopyWithImpl(this._self, this._then);

  final _Authenticated _self;
  final $Res Function(_Authenticated) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_Authenticated(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserProfile,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserProfileCopyWith<$Res> get user {
  
  return $UserProfileCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
