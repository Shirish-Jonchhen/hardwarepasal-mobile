// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponRequestModel _$CouponRequestModelFromJson(Map<String, dynamic> json) {
  return _CouponRequestModel.fromJson(json);
}

/// @nodoc
mixin _$CouponRequestModel {
  String get couponCode => throw _privateConstructorUsedError;
  List<CouponProduct> get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponRequestModelCopyWith<CouponRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponRequestModelCopyWith<$Res> {
  factory $CouponRequestModelCopyWith(
          CouponRequestModel value, $Res Function(CouponRequestModel) then) =
      _$CouponRequestModelCopyWithImpl<$Res, CouponRequestModel>;
  @useResult
  $Res call({String couponCode, List<CouponProduct> products});
}

/// @nodoc
class _$CouponRequestModelCopyWithImpl<$Res, $Val extends CouponRequestModel>
    implements $CouponRequestModelCopyWith<$Res> {
  _$CouponRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? products = null,
  }) {
    return _then(_value.copyWith(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CouponProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponRequestModelImplCopyWith<$Res>
    implements $CouponRequestModelCopyWith<$Res> {
  factory _$$CouponRequestModelImplCopyWith(_$CouponRequestModelImpl value,
          $Res Function(_$CouponRequestModelImpl) then) =
      __$$CouponRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String couponCode, List<CouponProduct> products});
}

/// @nodoc
class __$$CouponRequestModelImplCopyWithImpl<$Res>
    extends _$CouponRequestModelCopyWithImpl<$Res, _$CouponRequestModelImpl>
    implements _$$CouponRequestModelImplCopyWith<$Res> {
  __$$CouponRequestModelImplCopyWithImpl(_$CouponRequestModelImpl _value,
      $Res Function(_$CouponRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? couponCode = null,
    Object? products = null,
  }) {
    return _then(_$CouponRequestModelImpl(
      couponCode: null == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String,
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<CouponProduct>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CouponRequestModelImpl implements _CouponRequestModel {
  const _$CouponRequestModelImpl(
      {required this.couponCode, required final List<CouponProduct> products})
      : _products = products;

  factory _$CouponRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponRequestModelImplFromJson(json);

  @override
  final String couponCode;
  final List<CouponProduct> _products;
  @override
  List<CouponProduct> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'CouponRequestModel(couponCode: $couponCode, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponRequestModelImpl &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, couponCode, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponRequestModelImplCopyWith<_$CouponRequestModelImpl> get copyWith =>
      __$$CouponRequestModelImplCopyWithImpl<_$CouponRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponRequestModelImplToJson(
      this,
    );
  }
}

abstract class _CouponRequestModel implements CouponRequestModel {
  const factory _CouponRequestModel(
      {required final String couponCode,
      required final List<CouponProduct> products}) = _$CouponRequestModelImpl;

  factory _CouponRequestModel.fromJson(Map<String, dynamic> json) =
      _$CouponRequestModelImpl.fromJson;

  @override
  String get couponCode;
  @override
  List<CouponProduct> get products;
  @override
  @JsonKey(ignore: true)
  _$$CouponRequestModelImplCopyWith<_$CouponRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CouponProduct _$CouponProductFromJson(Map<String, dynamic> json) {
  return _CouponProduct.fromJson(json);
}

/// @nodoc
mixin _$CouponProduct {
  int get productId => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponProductCopyWith<CouponProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponProductCopyWith<$Res> {
  factory $CouponProductCopyWith(
          CouponProduct value, $Res Function(CouponProduct) then) =
      _$CouponProductCopyWithImpl<$Res, CouponProduct>;
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class _$CouponProductCopyWithImpl<$Res, $Val extends CouponProduct>
    implements $CouponProductCopyWith<$Res> {
  _$CouponProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponProductImplCopyWith<$Res>
    implements $CouponProductCopyWith<$Res> {
  factory _$$CouponProductImplCopyWith(
          _$CouponProductImpl value, $Res Function(_$CouponProductImpl) then) =
      __$$CouponProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, int quantity});
}

/// @nodoc
class __$$CouponProductImplCopyWithImpl<$Res>
    extends _$CouponProductCopyWithImpl<$Res, _$CouponProductImpl>
    implements _$$CouponProductImplCopyWith<$Res> {
  __$$CouponProductImplCopyWithImpl(
      _$CouponProductImpl _value, $Res Function(_$CouponProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? quantity = null,
  }) {
    return _then(_$CouponProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CouponProductImpl implements _CouponProduct {
  const _$CouponProductImpl({required this.productId, required this.quantity});

  factory _$CouponProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponProductImplFromJson(json);

  @override
  final int productId;
  @override
  final int quantity;

  @override
  String toString() {
    return 'CouponProduct(productId: $productId, quantity: $quantity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, productId, quantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponProductImplCopyWith<_$CouponProductImpl> get copyWith =>
      __$$CouponProductImplCopyWithImpl<_$CouponProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponProductImplToJson(
      this,
    );
  }
}

abstract class _CouponProduct implements CouponProduct {
  const factory _CouponProduct(
      {required final int productId,
      required final int quantity}) = _$CouponProductImpl;

  factory _CouponProduct.fromJson(Map<String, dynamic> json) =
      _$CouponProductImpl.fromJson;

  @override
  int get productId;
  @override
  int get quantity;
  @override
  @JsonKey(ignore: true)
  _$$CouponProductImplCopyWith<_$CouponProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
