// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_order_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceOrderResponseModel _$PlaceOrderResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  PlaceOrderDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderResponseModelCopyWith<PlaceOrderResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderResponseModelCopyWith<$Res> {
  factory $PlaceOrderResponseModelCopyWith(PlaceOrderResponseModel value,
          $Res Function(PlaceOrderResponseModel) then) =
      _$PlaceOrderResponseModelCopyWithImpl<$Res, PlaceOrderResponseModel>;
  @useResult
  $Res call({int? code, String? message, PlaceOrderDataModel? data});

  $PlaceOrderDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PlaceOrderResponseModelCopyWithImpl<$Res,
        $Val extends PlaceOrderResponseModel>
    implements $PlaceOrderResponseModelCopyWith<$Res> {
  _$PlaceOrderResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaceOrderDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceOrderDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PlaceOrderDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceOrderResponseModelImplCopyWith<$Res>
    implements $PlaceOrderResponseModelCopyWith<$Res> {
  factory _$$PlaceOrderResponseModelImplCopyWith(
          _$PlaceOrderResponseModelImpl value,
          $Res Function(_$PlaceOrderResponseModelImpl) then) =
      __$$PlaceOrderResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, PlaceOrderDataModel? data});

  @override
  $PlaceOrderDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PlaceOrderResponseModelImplCopyWithImpl<$Res>
    extends _$PlaceOrderResponseModelCopyWithImpl<$Res,
        _$PlaceOrderResponseModelImpl>
    implements _$$PlaceOrderResponseModelImplCopyWith<$Res> {
  __$$PlaceOrderResponseModelImplCopyWithImpl(
      _$PlaceOrderResponseModelImpl _value,
      $Res Function(_$PlaceOrderResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PlaceOrderResponseModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaceOrderDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlaceOrderResponseModelImpl implements _PlaceOrderResponseModel {
  const _$PlaceOrderResponseModelImpl({this.code, this.message, this.data});

  factory _$PlaceOrderResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final PlaceOrderDataModel? data;

  @override
  String toString() {
    return 'PlaceOrderResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderResponseModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderResponseModelImplCopyWith<_$PlaceOrderResponseModelImpl>
      get copyWith => __$$PlaceOrderResponseModelImplCopyWithImpl<
          _$PlaceOrderResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderResponseModel implements PlaceOrderResponseModel {
  const factory _PlaceOrderResponseModel(
      {final int? code,
      final String? message,
      final PlaceOrderDataModel? data}) = _$PlaceOrderResponseModelImpl;

  factory _PlaceOrderResponseModel.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  PlaceOrderDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderResponseModelImplCopyWith<_$PlaceOrderResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PlaceOrderDataModel _$PlaceOrderDataModelFromJson(Map<String, dynamic> json) {
  return _PlaceOrderDataModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderDataModel {
  PlaceOrderInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderDataModelCopyWith<PlaceOrderDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderDataModelCopyWith<$Res> {
  factory $PlaceOrderDataModelCopyWith(
          PlaceOrderDataModel value, $Res Function(PlaceOrderDataModel) then) =
      _$PlaceOrderDataModelCopyWithImpl<$Res, PlaceOrderDataModel>;
  @useResult
  $Res call({PlaceOrderInnerDataModel? data});

  $PlaceOrderInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PlaceOrderDataModelCopyWithImpl<$Res, $Val extends PlaceOrderDataModel>
    implements $PlaceOrderDataModelCopyWith<$Res> {
  _$PlaceOrderDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaceOrderInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PlaceOrderInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $PlaceOrderInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaceOrderDataModelImplCopyWith<$Res>
    implements $PlaceOrderDataModelCopyWith<$Res> {
  factory _$$PlaceOrderDataModelImplCopyWith(_$PlaceOrderDataModelImpl value,
          $Res Function(_$PlaceOrderDataModelImpl) then) =
      __$$PlaceOrderDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PlaceOrderInnerDataModel? data});

  @override
  $PlaceOrderInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PlaceOrderDataModelImplCopyWithImpl<$Res>
    extends _$PlaceOrderDataModelCopyWithImpl<$Res, _$PlaceOrderDataModelImpl>
    implements _$$PlaceOrderDataModelImplCopyWith<$Res> {
  __$$PlaceOrderDataModelImplCopyWithImpl(_$PlaceOrderDataModelImpl _value,
      $Res Function(_$PlaceOrderDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PlaceOrderDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PlaceOrderInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlaceOrderDataModelImpl implements _PlaceOrderDataModel {
  const _$PlaceOrderDataModelImpl({this.data});

  factory _$PlaceOrderDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderDataModelImplFromJson(json);

  @override
  final PlaceOrderInnerDataModel? data;

  @override
  String toString() {
    return 'PlaceOrderDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderDataModelImplCopyWith<_$PlaceOrderDataModelImpl> get copyWith =>
      __$$PlaceOrderDataModelImplCopyWithImpl<_$PlaceOrderDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderDataModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderDataModel implements PlaceOrderDataModel {
  const factory _PlaceOrderDataModel({final PlaceOrderInnerDataModel? data}) =
      _$PlaceOrderDataModelImpl;

  factory _PlaceOrderDataModel.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderDataModelImpl.fromJson;

  @override
  PlaceOrderInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderDataModelImplCopyWith<_$PlaceOrderDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceOrderInnerDataModel _$PlaceOrderInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderInnerDataModel {
  String? get order_id => throw _privateConstructorUsedError;
  String? get session_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get district => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  String? get order_note => throw _privateConstructorUsedError;
  double? get totalWeight => throw _privateConstructorUsedError;
  int? get express => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get payment_id => throw _privateConstructorUsedError;
  int? get payment_status => throw _privateConstructorUsedError;
  int? get is_customize => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  double? get totalQuantityCharge => throw _privateConstructorUsedError;
  double? get deliveryCharge => throw _privateConstructorUsedError;
  double? get coupon_discount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderInnerDataModelCopyWith<PlaceOrderInnerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderInnerDataModelCopyWith<$Res> {
  factory $PlaceOrderInnerDataModelCopyWith(PlaceOrderInnerDataModel value,
          $Res Function(PlaceOrderInnerDataModel) then) =
      _$PlaceOrderInnerDataModelCopyWithImpl<$Res, PlaceOrderInnerDataModel>;
  @useResult
  $Res call(
      {String? order_id,
      String? session_id,
      String? name,
      String? address,
      String? district,
      String? city,
      String? contact,
      String? delivery,
      String? order_note,
      double? totalWeight,
      int? express,
      String? status,
      String? payment_id,
      int? payment_status,
      int? is_customize,
      int? user_id,
      String? updated_at,
      String? created_at,
      int? id,
      double? totalQuantityCharge,
      double? deliveryCharge,
      double? coupon_discount});
}

/// @nodoc
class _$PlaceOrderInnerDataModelCopyWithImpl<$Res,
        $Val extends PlaceOrderInnerDataModel>
    implements $PlaceOrderInnerDataModelCopyWith<$Res> {
  _$PlaceOrderInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = freezed,
    Object? session_id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? contact = freezed,
    Object? delivery = freezed,
    Object? order_note = freezed,
    Object? totalWeight = freezed,
    Object? express = freezed,
    Object? status = freezed,
    Object? payment_id = freezed,
    Object? payment_status = freezed,
    Object? is_customize = freezed,
    Object? user_id = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
    Object? totalQuantityCharge = freezed,
    Object? deliveryCharge = freezed,
    Object? coupon_discount = freezed,
  }) {
    return _then(_value.copyWith(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as String?,
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      order_note: freezed == order_note
          ? _value.order_note
          : order_note // ignore: cast_nullable_to_non_nullable
              as String?,
      totalWeight: freezed == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      express: freezed == express
          ? _value.express
          : express // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_status: freezed == payment_status
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as int?,
      is_customize: freezed == is_customize
          ? _value.is_customize
          : is_customize // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuantityCharge: freezed == totalQuantityCharge
          ? _value.totalQuantityCharge
          : totalQuantityCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      coupon_discount: freezed == coupon_discount
          ? _value.coupon_discount
          : coupon_discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderInnerDataModelImplCopyWith<$Res>
    implements $PlaceOrderInnerDataModelCopyWith<$Res> {
  factory _$$PlaceOrderInnerDataModelImplCopyWith(
          _$PlaceOrderInnerDataModelImpl value,
          $Res Function(_$PlaceOrderInnerDataModelImpl) then) =
      __$$PlaceOrderInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? order_id,
      String? session_id,
      String? name,
      String? address,
      String? district,
      String? city,
      String? contact,
      String? delivery,
      String? order_note,
      double? totalWeight,
      int? express,
      String? status,
      String? payment_id,
      int? payment_status,
      int? is_customize,
      int? user_id,
      String? updated_at,
      String? created_at,
      int? id,
      double? totalQuantityCharge,
      double? deliveryCharge,
      double? coupon_discount});
}

/// @nodoc
class __$$PlaceOrderInnerDataModelImplCopyWithImpl<$Res>
    extends _$PlaceOrderInnerDataModelCopyWithImpl<$Res,
        _$PlaceOrderInnerDataModelImpl>
    implements _$$PlaceOrderInnerDataModelImplCopyWith<$Res> {
  __$$PlaceOrderInnerDataModelImplCopyWithImpl(
      _$PlaceOrderInnerDataModelImpl _value,
      $Res Function(_$PlaceOrderInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order_id = freezed,
    Object? session_id = freezed,
    Object? name = freezed,
    Object? address = freezed,
    Object? district = freezed,
    Object? city = freezed,
    Object? contact = freezed,
    Object? delivery = freezed,
    Object? order_note = freezed,
    Object? totalWeight = freezed,
    Object? express = freezed,
    Object? status = freezed,
    Object? payment_id = freezed,
    Object? payment_status = freezed,
    Object? is_customize = freezed,
    Object? user_id = freezed,
    Object? updated_at = freezed,
    Object? created_at = freezed,
    Object? id = freezed,
    Object? totalQuantityCharge = freezed,
    Object? deliveryCharge = freezed,
    Object? coupon_discount = freezed,
  }) {
    return _then(_$PlaceOrderInnerDataModelImpl(
      order_id: freezed == order_id
          ? _value.order_id
          : order_id // ignore: cast_nullable_to_non_nullable
              as String?,
      session_id: freezed == session_id
          ? _value.session_id
          : session_id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      district: freezed == district
          ? _value.district
          : district // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      order_note: freezed == order_note
          ? _value.order_note
          : order_note // ignore: cast_nullable_to_non_nullable
              as String?,
      totalWeight: freezed == totalWeight
          ? _value.totalWeight
          : totalWeight // ignore: cast_nullable_to_non_nullable
              as double?,
      express: freezed == express
          ? _value.express
          : express // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      payment_status: freezed == payment_status
          ? _value.payment_status
          : payment_status // ignore: cast_nullable_to_non_nullable
              as int?,
      is_customize: freezed == is_customize
          ? _value.is_customize
          : is_customize // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      totalQuantityCharge: freezed == totalQuantityCharge
          ? _value.totalQuantityCharge
          : totalQuantityCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      deliveryCharge: freezed == deliveryCharge
          ? _value.deliveryCharge
          : deliveryCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      coupon_discount: freezed == coupon_discount
          ? _value.coupon_discount
          : coupon_discount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlaceOrderInnerDataModelImpl implements _PlaceOrderInnerDataModel {
  const _$PlaceOrderInnerDataModelImpl(
      {this.order_id,
      this.session_id,
      this.name,
      this.address,
      this.district,
      this.city,
      this.contact,
      this.delivery,
      this.order_note,
      this.totalWeight,
      this.express,
      this.status,
      this.payment_id,
      this.payment_status,
      this.is_customize,
      this.user_id,
      this.updated_at,
      this.created_at,
      this.id,
      this.totalQuantityCharge,
      this.deliveryCharge,
      this.coupon_discount});

  factory _$PlaceOrderInnerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderInnerDataModelImplFromJson(json);

  @override
  final String? order_id;
  @override
  final String? session_id;
  @override
  final String? name;
  @override
  final String? address;
  @override
  final String? district;
  @override
  final String? city;
  @override
  final String? contact;
  @override
  final String? delivery;
  @override
  final String? order_note;
  @override
  final double? totalWeight;
  @override
  final int? express;
  @override
  final String? status;
  @override
  final String? payment_id;
  @override
  final int? payment_status;
  @override
  final int? is_customize;
  @override
  final int? user_id;
  @override
  final String? updated_at;
  @override
  final String? created_at;
  @override
  final int? id;
  @override
  final double? totalQuantityCharge;
  @override
  final double? deliveryCharge;
  @override
  final double? coupon_discount;

  @override
  String toString() {
    return 'PlaceOrderInnerDataModel(order_id: $order_id, session_id: $session_id, name: $name, address: $address, district: $district, city: $city, contact: $contact, delivery: $delivery, order_note: $order_note, totalWeight: $totalWeight, express: $express, status: $status, payment_id: $payment_id, payment_status: $payment_status, is_customize: $is_customize, user_id: $user_id, updated_at: $updated_at, created_at: $created_at, id: $id, totalQuantityCharge: $totalQuantityCharge, deliveryCharge: $deliveryCharge, coupon_discount: $coupon_discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderInnerDataModelImpl &&
            (identical(other.order_id, order_id) ||
                other.order_id == order_id) &&
            (identical(other.session_id, session_id) ||
                other.session_id == session_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.district, district) ||
                other.district == district) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.order_note, order_note) ||
                other.order_note == order_note) &&
            (identical(other.totalWeight, totalWeight) ||
                other.totalWeight == totalWeight) &&
            (identical(other.express, express) || other.express == express) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payment_id, payment_id) ||
                other.payment_id == payment_id) &&
            (identical(other.payment_status, payment_status) ||
                other.payment_status == payment_status) &&
            (identical(other.is_customize, is_customize) ||
                other.is_customize == is_customize) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.totalQuantityCharge, totalQuantityCharge) ||
                other.totalQuantityCharge == totalQuantityCharge) &&
            (identical(other.deliveryCharge, deliveryCharge) ||
                other.deliveryCharge == deliveryCharge) &&
            (identical(other.coupon_discount, coupon_discount) ||
                other.coupon_discount == coupon_discount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        order_id,
        session_id,
        name,
        address,
        district,
        city,
        contact,
        delivery,
        order_note,
        totalWeight,
        express,
        status,
        payment_id,
        payment_status,
        is_customize,
        user_id,
        updated_at,
        created_at,
        id,
        totalQuantityCharge,
        deliveryCharge,
        coupon_discount
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderInnerDataModelImplCopyWith<_$PlaceOrderInnerDataModelImpl>
      get copyWith => __$$PlaceOrderInnerDataModelImplCopyWithImpl<
          _$PlaceOrderInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderInnerDataModel implements PlaceOrderInnerDataModel {
  const factory _PlaceOrderInnerDataModel(
      {final String? order_id,
      final String? session_id,
      final String? name,
      final String? address,
      final String? district,
      final String? city,
      final String? contact,
      final String? delivery,
      final String? order_note,
      final double? totalWeight,
      final int? express,
      final String? status,
      final String? payment_id,
      final int? payment_status,
      final int? is_customize,
      final int? user_id,
      final String? updated_at,
      final String? created_at,
      final int? id,
      final double? totalQuantityCharge,
      final double? deliveryCharge,
      final double? coupon_discount}) = _$PlaceOrderInnerDataModelImpl;

  factory _PlaceOrderInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderInnerDataModelImpl.fromJson;

  @override
  String? get order_id;
  @override
  String? get session_id;
  @override
  String? get name;
  @override
  String? get address;
  @override
  String? get district;
  @override
  String? get city;
  @override
  String? get contact;
  @override
  String? get delivery;
  @override
  String? get order_note;
  @override
  double? get totalWeight;
  @override
  int? get express;
  @override
  String? get status;
  @override
  String? get payment_id;
  @override
  int? get payment_status;
  @override
  int? get is_customize;
  @override
  int? get user_id;
  @override
  String? get updated_at;
  @override
  String? get created_at;
  @override
  int? get id;
  @override
  double? get totalQuantityCharge;
  @override
  double? get deliveryCharge;
  @override
  double? get coupon_discount;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderInnerDataModelImplCopyWith<_$PlaceOrderInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
