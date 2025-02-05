// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_order_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceOrderModel _$PlaceOrderModelFromJson(Map<String, dynamic> json) {
  return _PlaceOrderModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderModel {
  String? get customer_name => throw _privateConstructorUsedError;
  String? get customer_address => throw _privateConstructorUsedError;
  String? get customer_email => throw _privateConstructorUsedError;
  String? get customer_number => throw _privateConstructorUsedError;
  double? get total_weight => throw _privateConstructorUsedError;
  String? get delivery => throw _privateConstructorUsedError;
  double? get delivery_charge => throw _privateConstructorUsedError;
  double? get totalCharge => throw _privateConstructorUsedError;
  String? get payment_id => throw _privateConstructorUsedError;
  String? get order_comments => throw _privateConstructorUsedError;
  List<PlaceOrderProductModel>? get products =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderModelCopyWith<PlaceOrderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderModelCopyWith<$Res> {
  factory $PlaceOrderModelCopyWith(
          PlaceOrderModel value, $Res Function(PlaceOrderModel) then) =
      _$PlaceOrderModelCopyWithImpl<$Res, PlaceOrderModel>;
  @useResult
  $Res call(
      {String? customer_name,
      String? customer_address,
      String? customer_email,
      String? customer_number,
      double? total_weight,
      String? delivery,
      double? delivery_charge,
      double? totalCharge,
      String? payment_id,
      String? order_comments,
      List<PlaceOrderProductModel>? products});
}

/// @nodoc
class _$PlaceOrderModelCopyWithImpl<$Res, $Val extends PlaceOrderModel>
    implements $PlaceOrderModelCopyWith<$Res> {
  _$PlaceOrderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_name = freezed,
    Object? customer_address = freezed,
    Object? customer_email = freezed,
    Object? customer_number = freezed,
    Object? total_weight = freezed,
    Object? delivery = freezed,
    Object? delivery_charge = freezed,
    Object? totalCharge = freezed,
    Object? payment_id = freezed,
    Object? order_comments = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_address: freezed == customer_address
          ? _value.customer_address
          : customer_address // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_email: freezed == customer_email
          ? _value.customer_email
          : customer_email // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_number: freezed == customer_number
          ? _value.customer_number
          : customer_number // ignore: cast_nullable_to_non_nullable
              as String?,
      total_weight: freezed == total_weight
          ? _value.total_weight
          : total_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_charge: freezed == delivery_charge
          ? _value.delivery_charge
          : delivery_charge // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCharge: freezed == totalCharge
          ? _value.totalCharge
          : totalCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      order_comments: freezed == order_comments
          ? _value.order_comments
          : order_comments // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PlaceOrderProductModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderModelImplCopyWith<$Res>
    implements $PlaceOrderModelCopyWith<$Res> {
  factory _$$PlaceOrderModelImplCopyWith(_$PlaceOrderModelImpl value,
          $Res Function(_$PlaceOrderModelImpl) then) =
      __$$PlaceOrderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? customer_name,
      String? customer_address,
      String? customer_email,
      String? customer_number,
      double? total_weight,
      String? delivery,
      double? delivery_charge,
      double? totalCharge,
      String? payment_id,
      String? order_comments,
      List<PlaceOrderProductModel>? products});
}

/// @nodoc
class __$$PlaceOrderModelImplCopyWithImpl<$Res>
    extends _$PlaceOrderModelCopyWithImpl<$Res, _$PlaceOrderModelImpl>
    implements _$$PlaceOrderModelImplCopyWith<$Res> {
  __$$PlaceOrderModelImplCopyWithImpl(
      _$PlaceOrderModelImpl _value, $Res Function(_$PlaceOrderModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customer_name = freezed,
    Object? customer_address = freezed,
    Object? customer_email = freezed,
    Object? customer_number = freezed,
    Object? total_weight = freezed,
    Object? delivery = freezed,
    Object? delivery_charge = freezed,
    Object? totalCharge = freezed,
    Object? payment_id = freezed,
    Object? order_comments = freezed,
    Object? products = freezed,
  }) {
    return _then(_$PlaceOrderModelImpl(
      customer_name: freezed == customer_name
          ? _value.customer_name
          : customer_name // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_address: freezed == customer_address
          ? _value.customer_address
          : customer_address // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_email: freezed == customer_email
          ? _value.customer_email
          : customer_email // ignore: cast_nullable_to_non_nullable
              as String?,
      customer_number: freezed == customer_number
          ? _value.customer_number
          : customer_number // ignore: cast_nullable_to_non_nullable
              as String?,
      total_weight: freezed == total_weight
          ? _value.total_weight
          : total_weight // ignore: cast_nullable_to_non_nullable
              as double?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_charge: freezed == delivery_charge
          ? _value.delivery_charge
          : delivery_charge // ignore: cast_nullable_to_non_nullable
              as double?,
      totalCharge: freezed == totalCharge
          ? _value.totalCharge
          : totalCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      payment_id: freezed == payment_id
          ? _value.payment_id
          : payment_id // ignore: cast_nullable_to_non_nullable
              as String?,
      order_comments: freezed == order_comments
          ? _value.order_comments
          : order_comments // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<PlaceOrderProductModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlaceOrderModelImpl implements _PlaceOrderModel {
  const _$PlaceOrderModelImpl(
      {this.customer_name,
      this.customer_address,
      this.customer_email,
      this.customer_number,
      this.total_weight,
      this.delivery,
      this.delivery_charge,
      this.totalCharge,
      this.payment_id,
      this.order_comments,
      final List<PlaceOrderProductModel>? products})
      : _products = products;

  factory _$PlaceOrderModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderModelImplFromJson(json);

  @override
  final String? customer_name;
  @override
  final String? customer_address;
  @override
  final String? customer_email;
  @override
  final String? customer_number;
  @override
  final double? total_weight;
  @override
  final String? delivery;
  @override
  final double? delivery_charge;
  @override
  final double? totalCharge;
  @override
  final String? payment_id;
  @override
  final String? order_comments;
  final List<PlaceOrderProductModel>? _products;
  @override
  List<PlaceOrderProductModel>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PlaceOrderModel(customer_name: $customer_name, customer_address: $customer_address, customer_email: $customer_email, customer_number: $customer_number, total_weight: $total_weight, delivery: $delivery, delivery_charge: $delivery_charge, totalCharge: $totalCharge, payment_id: $payment_id, order_comments: $order_comments, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderModelImpl &&
            (identical(other.customer_name, customer_name) ||
                other.customer_name == customer_name) &&
            (identical(other.customer_address, customer_address) ||
                other.customer_address == customer_address) &&
            (identical(other.customer_email, customer_email) ||
                other.customer_email == customer_email) &&
            (identical(other.customer_number, customer_number) ||
                other.customer_number == customer_number) &&
            (identical(other.total_weight, total_weight) ||
                other.total_weight == total_weight) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.delivery_charge, delivery_charge) ||
                other.delivery_charge == delivery_charge) &&
            (identical(other.totalCharge, totalCharge) ||
                other.totalCharge == totalCharge) &&
            (identical(other.payment_id, payment_id) ||
                other.payment_id == payment_id) &&
            (identical(other.order_comments, order_comments) ||
                other.order_comments == order_comments) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      customer_name,
      customer_address,
      customer_email,
      customer_number,
      total_weight,
      delivery,
      delivery_charge,
      totalCharge,
      payment_id,
      order_comments,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderModelImplCopyWith<_$PlaceOrderModelImpl> get copyWith =>
      __$$PlaceOrderModelImplCopyWithImpl<_$PlaceOrderModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderModel implements PlaceOrderModel {
  const factory _PlaceOrderModel(
      {final String? customer_name,
      final String? customer_address,
      final String? customer_email,
      final String? customer_number,
      final double? total_weight,
      final String? delivery,
      final double? delivery_charge,
      final double? totalCharge,
      final String? payment_id,
      final String? order_comments,
      final List<PlaceOrderProductModel>? products}) = _$PlaceOrderModelImpl;

  factory _PlaceOrderModel.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderModelImpl.fromJson;

  @override
  String? get customer_name;
  @override
  String? get customer_address;
  @override
  String? get customer_email;
  @override
  String? get customer_number;
  @override
  double? get total_weight;
  @override
  String? get delivery;
  @override
  double? get delivery_charge;
  @override
  double? get totalCharge;
  @override
  String? get payment_id;
  @override
  String? get order_comments;
  @override
  List<PlaceOrderProductModel>? get products;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderModelImplCopyWith<_$PlaceOrderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceOrderProductModel _$PlaceOrderProductModelFromJson(
    Map<String, dynamic> json) {
  return _PlaceOrderProductModel.fromJson(json);
}

/// @nodoc
mixin _$PlaceOrderProductModel {
  int? get product_id => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaceOrderProductModelCopyWith<PlaceOrderProductModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceOrderProductModelCopyWith<$Res> {
  factory $PlaceOrderProductModelCopyWith(PlaceOrderProductModel value,
          $Res Function(PlaceOrderProductModel) then) =
      _$PlaceOrderProductModelCopyWithImpl<$Res, PlaceOrderProductModel>;
  @useResult
  $Res call({int? product_id, int? quantity});
}

/// @nodoc
class _$PlaceOrderProductModelCopyWithImpl<$Res,
        $Val extends PlaceOrderProductModel>
    implements $PlaceOrderProductModelCopyWith<$Res> {
  _$PlaceOrderProductModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_value.copyWith(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceOrderProductModelImplCopyWith<$Res>
    implements $PlaceOrderProductModelCopyWith<$Res> {
  factory _$$PlaceOrderProductModelImplCopyWith(
          _$PlaceOrderProductModelImpl value,
          $Res Function(_$PlaceOrderProductModelImpl) then) =
      __$$PlaceOrderProductModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? product_id, int? quantity});
}

/// @nodoc
class __$$PlaceOrderProductModelImplCopyWithImpl<$Res>
    extends _$PlaceOrderProductModelCopyWithImpl<$Res,
        _$PlaceOrderProductModelImpl>
    implements _$$PlaceOrderProductModelImplCopyWith<$Res> {
  __$$PlaceOrderProductModelImplCopyWithImpl(
      _$PlaceOrderProductModelImpl _value,
      $Res Function(_$PlaceOrderProductModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product_id = freezed,
    Object? quantity = freezed,
  }) {
    return _then(_$PlaceOrderProductModelImpl(
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlaceOrderProductModelImpl implements _PlaceOrderProductModel {
  const _$PlaceOrderProductModelImpl({this.product_id, this.quantity});

  factory _$PlaceOrderProductModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceOrderProductModelImplFromJson(json);

  @override
  final int? product_id;
  @override
  final int? quantity;

  @override
  String toString() {
    return 'PlaceOrderProductModel(product_id: $product_id, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceOrderProductModelImpl &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, product_id, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceOrderProductModelImplCopyWith<_$PlaceOrderProductModelImpl>
      get copyWith => __$$PlaceOrderProductModelImplCopyWithImpl<
          _$PlaceOrderProductModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceOrderProductModelImplToJson(
      this,
    );
  }
}

abstract class _PlaceOrderProductModel implements PlaceOrderProductModel {
  const factory _PlaceOrderProductModel(
      {final int? product_id,
      final int? quantity}) = _$PlaceOrderProductModelImpl;

  factory _PlaceOrderProductModel.fromJson(Map<String, dynamic> json) =
      _$PlaceOrderProductModelImpl.fromJson;

  @override
  int? get product_id;
  @override
  int? get quantity;
  @override
  @JsonKey(ignore: true)
  _$$PlaceOrderProductModelImplCopyWith<_$PlaceOrderProductModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
