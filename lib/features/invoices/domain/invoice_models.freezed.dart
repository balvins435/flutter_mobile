// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceItem {

 int? get id; String get description; int get quantity;@JsonKey(name: 'unit_price') double get unitPrice; double get total;
/// Create a copy of InvoiceItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceItemCopyWith<InvoiceItem> get copyWith => _$InvoiceItemCopyWithImpl<InvoiceItem>(this as InvoiceItem, _$identity);

  /// Serializes this InvoiceItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,quantity,unitPrice,total);

@override
String toString() {
  return 'InvoiceItem(id: $id, description: $description, quantity: $quantity, unitPrice: $unitPrice, total: $total)';
}


}

/// @nodoc
abstract mixin class $InvoiceItemCopyWith<$Res>  {
  factory $InvoiceItemCopyWith(InvoiceItem value, $Res Function(InvoiceItem) _then) = _$InvoiceItemCopyWithImpl;
@useResult
$Res call({
 int? id, String description, int quantity,@JsonKey(name: 'unit_price') double unitPrice, double total
});




}
/// @nodoc
class _$InvoiceItemCopyWithImpl<$Res>
    implements $InvoiceItemCopyWith<$Res> {
  _$InvoiceItemCopyWithImpl(this._self, this._then);

  final InvoiceItem _self;
  final $Res Function(InvoiceItem) _then;

/// Create a copy of InvoiceItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? description = null,Object? quantity = null,Object? unitPrice = null,Object? total = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceItem].
extension InvoiceItemPatterns on InvoiceItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceItem value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceItem value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String description,  int quantity, @JsonKey(name: 'unit_price')  double unitPrice,  double total)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceItem() when $default != null:
return $default(_that.id,_that.description,_that.quantity,_that.unitPrice,_that.total);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String description,  int quantity, @JsonKey(name: 'unit_price')  double unitPrice,  double total)  $default,) {final _that = this;
switch (_that) {
case _InvoiceItem():
return $default(_that.id,_that.description,_that.quantity,_that.unitPrice,_that.total);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String description,  int quantity, @JsonKey(name: 'unit_price')  double unitPrice,  double total)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceItem() when $default != null:
return $default(_that.id,_that.description,_that.quantity,_that.unitPrice,_that.total);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceItem implements InvoiceItem {
  const _InvoiceItem({this.id, this.description = '', this.quantity = 1, @JsonKey(name: 'unit_price') this.unitPrice = 0, this.total = 0});
  factory _InvoiceItem.fromJson(Map<String, dynamic> json) => _$InvoiceItemFromJson(json);

@override final  int? id;
@override@JsonKey() final  String description;
@override@JsonKey() final  int quantity;
@override@JsonKey(name: 'unit_price') final  double unitPrice;
@override@JsonKey() final  double total;

/// Create a copy of InvoiceItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceItemCopyWith<_InvoiceItem> get copyWith => __$InvoiceItemCopyWithImpl<_InvoiceItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceItem&&(identical(other.id, id) || other.id == id)&&(identical(other.description, description) || other.description == description)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.unitPrice, unitPrice) || other.unitPrice == unitPrice)&&(identical(other.total, total) || other.total == total));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,description,quantity,unitPrice,total);

@override
String toString() {
  return 'InvoiceItem(id: $id, description: $description, quantity: $quantity, unitPrice: $unitPrice, total: $total)';
}


}

/// @nodoc
abstract mixin class _$InvoiceItemCopyWith<$Res> implements $InvoiceItemCopyWith<$Res> {
  factory _$InvoiceItemCopyWith(_InvoiceItem value, $Res Function(_InvoiceItem) _then) = __$InvoiceItemCopyWithImpl;
@override @useResult
$Res call({
 int? id, String description, int quantity,@JsonKey(name: 'unit_price') double unitPrice, double total
});




}
/// @nodoc
class __$InvoiceItemCopyWithImpl<$Res>
    implements _$InvoiceItemCopyWith<$Res> {
  __$InvoiceItemCopyWithImpl(this._self, this._then);

  final _InvoiceItem _self;
  final $Res Function(_InvoiceItem) _then;

/// Create a copy of InvoiceItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? description = null,Object? quantity = null,Object? unitPrice = null,Object? total = null,}) {
  return _then(_InvoiceItem(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,unitPrice: null == unitPrice ? _self.unitPrice : unitPrice // ignore: cast_nullable_to_non_nullable
as double,total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$Invoice {

 int? get id;@JsonKey(name: 'business_id') int? get businessId;@JsonKey(name: 'invoice_number') String get invoiceNumber;@JsonKey(name: 'client_name') String get clientName;@JsonKey(name: 'client_email') String get clientEmail;@JsonKey(name: 'issue_date') DateTime? get issueDate;@JsonKey(name: 'due_date') DateTime? get dueDate;@JsonKey(name: 'subtotal') double get subtotal;@JsonKey(name: 'tax_amount') double get taxAmount;@JsonKey(name: 'total_amount') double get totalAmount; String get currency;@JsonKey(name: 'tax_invoice_number') String? get taxInvoiceNumber;@JsonKey(name: 'etims_synced_at') DateTime? get etimsSyncedAt; String get status;@JsonKey(name: 'paid_at') DateTime? get paidAt; List<InvoiceItem> get items;@JsonKey(name: 'has_receipt') bool get hasReceipt;@JsonKey(name: 'receipt_number') String? get receiptNumber;@JsonKey(name: 'amount_paid') double get amountPaid;@JsonKey(name: 'balance_due') double get balanceDue; DateTime? get createdAt; DateTime? get updatedAt; String get syncState;
/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceCopyWith<Invoice> get copyWith => _$InvoiceCopyWithImpl<Invoice>(this as Invoice, _$identity);

  /// Serializes this Invoice to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Invoice&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.clientEmail, clientEmail) || other.clientEmail == clientEmail)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.taxInvoiceNumber, taxInvoiceNumber) || other.taxInvoiceNumber == taxInvoiceNumber)&&(identical(other.etimsSyncedAt, etimsSyncedAt) || other.etimsSyncedAt == etimsSyncedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.hasReceipt, hasReceipt) || other.hasReceipt == hasReceipt)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.balanceDue, balanceDue) || other.balanceDue == balanceDue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.syncState, syncState) || other.syncState == syncState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,businessId,invoiceNumber,clientName,clientEmail,issueDate,dueDate,subtotal,taxAmount,totalAmount,currency,taxInvoiceNumber,etimsSyncedAt,status,paidAt,const DeepCollectionEquality().hash(items),hasReceipt,receiptNumber,amountPaid,balanceDue,createdAt,updatedAt,syncState]);

@override
String toString() {
  return 'Invoice(id: $id, businessId: $businessId, invoiceNumber: $invoiceNumber, clientName: $clientName, clientEmail: $clientEmail, issueDate: $issueDate, dueDate: $dueDate, subtotal: $subtotal, taxAmount: $taxAmount, totalAmount: $totalAmount, currency: $currency, taxInvoiceNumber: $taxInvoiceNumber, etimsSyncedAt: $etimsSyncedAt, status: $status, paidAt: $paidAt, items: $items, hasReceipt: $hasReceipt, receiptNumber: $receiptNumber, amountPaid: $amountPaid, balanceDue: $balanceDue, createdAt: $createdAt, updatedAt: $updatedAt, syncState: $syncState)';
}


}

/// @nodoc
abstract mixin class $InvoiceCopyWith<$Res>  {
  factory $InvoiceCopyWith(Invoice value, $Res Function(Invoice) _then) = _$InvoiceCopyWithImpl;
@useResult
$Res call({
 int? id,@JsonKey(name: 'business_id') int? businessId,@JsonKey(name: 'invoice_number') String invoiceNumber,@JsonKey(name: 'client_name') String clientName,@JsonKey(name: 'client_email') String clientEmail,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'subtotal') double subtotal,@JsonKey(name: 'tax_amount') double taxAmount,@JsonKey(name: 'total_amount') double totalAmount, String currency,@JsonKey(name: 'tax_invoice_number') String? taxInvoiceNumber,@JsonKey(name: 'etims_synced_at') DateTime? etimsSyncedAt, String status,@JsonKey(name: 'paid_at') DateTime? paidAt, List<InvoiceItem> items,@JsonKey(name: 'has_receipt') bool hasReceipt,@JsonKey(name: 'receipt_number') String? receiptNumber,@JsonKey(name: 'amount_paid') double amountPaid,@JsonKey(name: 'balance_due') double balanceDue, DateTime? createdAt, DateTime? updatedAt, String syncState
});




}
/// @nodoc
class _$InvoiceCopyWithImpl<$Res>
    implements $InvoiceCopyWith<$Res> {
  _$InvoiceCopyWithImpl(this._self, this._then);

  final Invoice _self;
  final $Res Function(Invoice) _then;

/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? businessId = freezed,Object? invoiceNumber = null,Object? clientName = null,Object? clientEmail = null,Object? issueDate = freezed,Object? dueDate = freezed,Object? subtotal = null,Object? taxAmount = null,Object? totalAmount = null,Object? currency = null,Object? taxInvoiceNumber = freezed,Object? etimsSyncedAt = freezed,Object? status = null,Object? paidAt = freezed,Object? items = null,Object? hasReceipt = null,Object? receiptNumber = freezed,Object? amountPaid = null,Object? balanceDue = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? syncState = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int?,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,clientEmail: null == clientEmail ? _self.clientEmail : clientEmail // ignore: cast_nullable_to_non_nullable
as String,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,taxInvoiceNumber: freezed == taxInvoiceNumber ? _self.taxInvoiceNumber : taxInvoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,etimsSyncedAt: freezed == etimsSyncedAt ? _self.etimsSyncedAt : etimsSyncedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<InvoiceItem>,hasReceipt: null == hasReceipt ? _self.hasReceipt : hasReceipt // ignore: cast_nullable_to_non_nullable
as bool,receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,balanceDue: null == balanceDue ? _self.balanceDue : balanceDue // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncState: null == syncState ? _self.syncState : syncState // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Invoice].
extension InvoicePatterns on Invoice {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Invoice value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Invoice() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Invoice value)  $default,){
final _that = this;
switch (_that) {
case _Invoice():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Invoice value)?  $default,){
final _that = this;
switch (_that) {
case _Invoice() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'business_id')  int? businessId, @JsonKey(name: 'invoice_number')  String invoiceNumber, @JsonKey(name: 'client_name')  String clientName, @JsonKey(name: 'client_email')  String clientEmail, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'subtotal')  double subtotal, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'total_amount')  double totalAmount,  String currency, @JsonKey(name: 'tax_invoice_number')  String? taxInvoiceNumber, @JsonKey(name: 'etims_synced_at')  DateTime? etimsSyncedAt,  String status, @JsonKey(name: 'paid_at')  DateTime? paidAt,  List<InvoiceItem> items, @JsonKey(name: 'has_receipt')  bool hasReceipt, @JsonKey(name: 'receipt_number')  String? receiptNumber, @JsonKey(name: 'amount_paid')  double amountPaid, @JsonKey(name: 'balance_due')  double balanceDue,  DateTime? createdAt,  DateTime? updatedAt,  String syncState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Invoice() when $default != null:
return $default(_that.id,_that.businessId,_that.invoiceNumber,_that.clientName,_that.clientEmail,_that.issueDate,_that.dueDate,_that.subtotal,_that.taxAmount,_that.totalAmount,_that.currency,_that.taxInvoiceNumber,_that.etimsSyncedAt,_that.status,_that.paidAt,_that.items,_that.hasReceipt,_that.receiptNumber,_that.amountPaid,_that.balanceDue,_that.createdAt,_that.updatedAt,_that.syncState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id, @JsonKey(name: 'business_id')  int? businessId, @JsonKey(name: 'invoice_number')  String invoiceNumber, @JsonKey(name: 'client_name')  String clientName, @JsonKey(name: 'client_email')  String clientEmail, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'subtotal')  double subtotal, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'total_amount')  double totalAmount,  String currency, @JsonKey(name: 'tax_invoice_number')  String? taxInvoiceNumber, @JsonKey(name: 'etims_synced_at')  DateTime? etimsSyncedAt,  String status, @JsonKey(name: 'paid_at')  DateTime? paidAt,  List<InvoiceItem> items, @JsonKey(name: 'has_receipt')  bool hasReceipt, @JsonKey(name: 'receipt_number')  String? receiptNumber, @JsonKey(name: 'amount_paid')  double amountPaid, @JsonKey(name: 'balance_due')  double balanceDue,  DateTime? createdAt,  DateTime? updatedAt,  String syncState)  $default,) {final _that = this;
switch (_that) {
case _Invoice():
return $default(_that.id,_that.businessId,_that.invoiceNumber,_that.clientName,_that.clientEmail,_that.issueDate,_that.dueDate,_that.subtotal,_that.taxAmount,_that.totalAmount,_that.currency,_that.taxInvoiceNumber,_that.etimsSyncedAt,_that.status,_that.paidAt,_that.items,_that.hasReceipt,_that.receiptNumber,_that.amountPaid,_that.balanceDue,_that.createdAt,_that.updatedAt,_that.syncState);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id, @JsonKey(name: 'business_id')  int? businessId, @JsonKey(name: 'invoice_number')  String invoiceNumber, @JsonKey(name: 'client_name')  String clientName, @JsonKey(name: 'client_email')  String clientEmail, @JsonKey(name: 'issue_date')  DateTime? issueDate, @JsonKey(name: 'due_date')  DateTime? dueDate, @JsonKey(name: 'subtotal')  double subtotal, @JsonKey(name: 'tax_amount')  double taxAmount, @JsonKey(name: 'total_amount')  double totalAmount,  String currency, @JsonKey(name: 'tax_invoice_number')  String? taxInvoiceNumber, @JsonKey(name: 'etims_synced_at')  DateTime? etimsSyncedAt,  String status, @JsonKey(name: 'paid_at')  DateTime? paidAt,  List<InvoiceItem> items, @JsonKey(name: 'has_receipt')  bool hasReceipt, @JsonKey(name: 'receipt_number')  String? receiptNumber, @JsonKey(name: 'amount_paid')  double amountPaid, @JsonKey(name: 'balance_due')  double balanceDue,  DateTime? createdAt,  DateTime? updatedAt,  String syncState)?  $default,) {final _that = this;
switch (_that) {
case _Invoice() when $default != null:
return $default(_that.id,_that.businessId,_that.invoiceNumber,_that.clientName,_that.clientEmail,_that.issueDate,_that.dueDate,_that.subtotal,_that.taxAmount,_that.totalAmount,_that.currency,_that.taxInvoiceNumber,_that.etimsSyncedAt,_that.status,_that.paidAt,_that.items,_that.hasReceipt,_that.receiptNumber,_that.amountPaid,_that.balanceDue,_that.createdAt,_that.updatedAt,_that.syncState);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Invoice extends Invoice {
  const _Invoice({this.id, @JsonKey(name: 'business_id') this.businessId, @JsonKey(name: 'invoice_number') this.invoiceNumber = 'Draft', @JsonKey(name: 'client_name') this.clientName = '', @JsonKey(name: 'client_email') this.clientEmail = '', @JsonKey(name: 'issue_date') this.issueDate, @JsonKey(name: 'due_date') this.dueDate, @JsonKey(name: 'subtotal') this.subtotal = 0, @JsonKey(name: 'tax_amount') this.taxAmount = 0, @JsonKey(name: 'total_amount') this.totalAmount = 0, this.currency = 'KES', @JsonKey(name: 'tax_invoice_number') this.taxInvoiceNumber, @JsonKey(name: 'etims_synced_at') this.etimsSyncedAt, this.status = 'draft', @JsonKey(name: 'paid_at') this.paidAt, final  List<InvoiceItem> items = const <InvoiceItem>[], @JsonKey(name: 'has_receipt') this.hasReceipt = false, @JsonKey(name: 'receipt_number') this.receiptNumber, @JsonKey(name: 'amount_paid') this.amountPaid = 0, @JsonKey(name: 'balance_due') this.balanceDue = 0, this.createdAt, this.updatedAt, this.syncState = 'synced'}): _items = items,super._();
  factory _Invoice.fromJson(Map<String, dynamic> json) => _$InvoiceFromJson(json);

@override final  int? id;
@override@JsonKey(name: 'business_id') final  int? businessId;
@override@JsonKey(name: 'invoice_number') final  String invoiceNumber;
@override@JsonKey(name: 'client_name') final  String clientName;
@override@JsonKey(name: 'client_email') final  String clientEmail;
@override@JsonKey(name: 'issue_date') final  DateTime? issueDate;
@override@JsonKey(name: 'due_date') final  DateTime? dueDate;
@override@JsonKey(name: 'subtotal') final  double subtotal;
@override@JsonKey(name: 'tax_amount') final  double taxAmount;
@override@JsonKey(name: 'total_amount') final  double totalAmount;
@override@JsonKey() final  String currency;
@override@JsonKey(name: 'tax_invoice_number') final  String? taxInvoiceNumber;
@override@JsonKey(name: 'etims_synced_at') final  DateTime? etimsSyncedAt;
@override@JsonKey() final  String status;
@override@JsonKey(name: 'paid_at') final  DateTime? paidAt;
 final  List<InvoiceItem> _items;
@override@JsonKey() List<InvoiceItem> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey(name: 'has_receipt') final  bool hasReceipt;
@override@JsonKey(name: 'receipt_number') final  String? receiptNumber;
@override@JsonKey(name: 'amount_paid') final  double amountPaid;
@override@JsonKey(name: 'balance_due') final  double balanceDue;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;
@override@JsonKey() final  String syncState;

/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceCopyWith<_Invoice> get copyWith => __$InvoiceCopyWithImpl<_Invoice>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Invoice&&(identical(other.id, id) || other.id == id)&&(identical(other.businessId, businessId) || other.businessId == businessId)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.clientName, clientName) || other.clientName == clientName)&&(identical(other.clientEmail, clientEmail) || other.clientEmail == clientEmail)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.dueDate, dueDate) || other.dueDate == dueDate)&&(identical(other.subtotal, subtotal) || other.subtotal == subtotal)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.taxInvoiceNumber, taxInvoiceNumber) || other.taxInvoiceNumber == taxInvoiceNumber)&&(identical(other.etimsSyncedAt, etimsSyncedAt) || other.etimsSyncedAt == etimsSyncedAt)&&(identical(other.status, status) || other.status == status)&&(identical(other.paidAt, paidAt) || other.paidAt == paidAt)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.hasReceipt, hasReceipt) || other.hasReceipt == hasReceipt)&&(identical(other.receiptNumber, receiptNumber) || other.receiptNumber == receiptNumber)&&(identical(other.amountPaid, amountPaid) || other.amountPaid == amountPaid)&&(identical(other.balanceDue, balanceDue) || other.balanceDue == balanceDue)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&(identical(other.syncState, syncState) || other.syncState == syncState));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,businessId,invoiceNumber,clientName,clientEmail,issueDate,dueDate,subtotal,taxAmount,totalAmount,currency,taxInvoiceNumber,etimsSyncedAt,status,paidAt,const DeepCollectionEquality().hash(_items),hasReceipt,receiptNumber,amountPaid,balanceDue,createdAt,updatedAt,syncState]);

@override
String toString() {
  return 'Invoice(id: $id, businessId: $businessId, invoiceNumber: $invoiceNumber, clientName: $clientName, clientEmail: $clientEmail, issueDate: $issueDate, dueDate: $dueDate, subtotal: $subtotal, taxAmount: $taxAmount, totalAmount: $totalAmount, currency: $currency, taxInvoiceNumber: $taxInvoiceNumber, etimsSyncedAt: $etimsSyncedAt, status: $status, paidAt: $paidAt, items: $items, hasReceipt: $hasReceipt, receiptNumber: $receiptNumber, amountPaid: $amountPaid, balanceDue: $balanceDue, createdAt: $createdAt, updatedAt: $updatedAt, syncState: $syncState)';
}


}

/// @nodoc
abstract mixin class _$InvoiceCopyWith<$Res> implements $InvoiceCopyWith<$Res> {
  factory _$InvoiceCopyWith(_Invoice value, $Res Function(_Invoice) _then) = __$InvoiceCopyWithImpl;
@override @useResult
$Res call({
 int? id,@JsonKey(name: 'business_id') int? businessId,@JsonKey(name: 'invoice_number') String invoiceNumber,@JsonKey(name: 'client_name') String clientName,@JsonKey(name: 'client_email') String clientEmail,@JsonKey(name: 'issue_date') DateTime? issueDate,@JsonKey(name: 'due_date') DateTime? dueDate,@JsonKey(name: 'subtotal') double subtotal,@JsonKey(name: 'tax_amount') double taxAmount,@JsonKey(name: 'total_amount') double totalAmount, String currency,@JsonKey(name: 'tax_invoice_number') String? taxInvoiceNumber,@JsonKey(name: 'etims_synced_at') DateTime? etimsSyncedAt, String status,@JsonKey(name: 'paid_at') DateTime? paidAt, List<InvoiceItem> items,@JsonKey(name: 'has_receipt') bool hasReceipt,@JsonKey(name: 'receipt_number') String? receiptNumber,@JsonKey(name: 'amount_paid') double amountPaid,@JsonKey(name: 'balance_due') double balanceDue, DateTime? createdAt, DateTime? updatedAt, String syncState
});




}
/// @nodoc
class __$InvoiceCopyWithImpl<$Res>
    implements _$InvoiceCopyWith<$Res> {
  __$InvoiceCopyWithImpl(this._self, this._then);

  final _Invoice _self;
  final $Res Function(_Invoice) _then;

/// Create a copy of Invoice
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? businessId = freezed,Object? invoiceNumber = null,Object? clientName = null,Object? clientEmail = null,Object? issueDate = freezed,Object? dueDate = freezed,Object? subtotal = null,Object? taxAmount = null,Object? totalAmount = null,Object? currency = null,Object? taxInvoiceNumber = freezed,Object? etimsSyncedAt = freezed,Object? status = null,Object? paidAt = freezed,Object? items = null,Object? hasReceipt = null,Object? receiptNumber = freezed,Object? amountPaid = null,Object? balanceDue = null,Object? createdAt = freezed,Object? updatedAt = freezed,Object? syncState = null,}) {
  return _then(_Invoice(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,businessId: freezed == businessId ? _self.businessId : businessId // ignore: cast_nullable_to_non_nullable
as int?,invoiceNumber: null == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String,clientName: null == clientName ? _self.clientName : clientName // ignore: cast_nullable_to_non_nullable
as String,clientEmail: null == clientEmail ? _self.clientEmail : clientEmail // ignore: cast_nullable_to_non_nullable
as String,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,dueDate: freezed == dueDate ? _self.dueDate : dueDate // ignore: cast_nullable_to_non_nullable
as DateTime?,subtotal: null == subtotal ? _self.subtotal : subtotal // ignore: cast_nullable_to_non_nullable
as double,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as double,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as double,currency: null == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String,taxInvoiceNumber: freezed == taxInvoiceNumber ? _self.taxInvoiceNumber : taxInvoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,etimsSyncedAt: freezed == etimsSyncedAt ? _self.etimsSyncedAt : etimsSyncedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,paidAt: freezed == paidAt ? _self.paidAt : paidAt // ignore: cast_nullable_to_non_nullable
as DateTime?,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<InvoiceItem>,hasReceipt: null == hasReceipt ? _self.hasReceipt : hasReceipt // ignore: cast_nullable_to_non_nullable
as bool,receiptNumber: freezed == receiptNumber ? _self.receiptNumber : receiptNumber // ignore: cast_nullable_to_non_nullable
as String?,amountPaid: null == amountPaid ? _self.amountPaid : amountPaid // ignore: cast_nullable_to_non_nullable
as double,balanceDue: null == balanceDue ? _self.balanceDue : balanceDue // ignore: cast_nullable_to_non_nullable
as double,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,syncState: null == syncState ? _self.syncState : syncState // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
