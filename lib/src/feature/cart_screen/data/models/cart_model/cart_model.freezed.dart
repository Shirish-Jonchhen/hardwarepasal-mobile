// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartModel _$CartModelFromJson(Map<String, dynamic> json) {
  return _CartModel.fromJson(json);
}

/// @nodoc
mixin _$CartModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CartDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartModelCopyWith<CartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartModelCopyWith<$Res> {
  factory $CartModelCopyWith(CartModel value, $Res Function(CartModel) then) =
      _$CartModelCopyWithImpl<$Res, CartModel>;
  @useResult
  $Res call({int? code, String? message, CartDataModel? data});

  $CartDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CartModelCopyWithImpl<$Res, $Val extends CartModel>
    implements $CartModelCopyWith<$Res> {
  _$CartModelCopyWithImpl(this._value, this._then);

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
              as CartDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CartDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CartDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartModelImplCopyWith<$Res>
    implements $CartModelCopyWith<$Res> {
  factory _$$CartModelImplCopyWith(
          _$CartModelImpl value, $Res Function(_$CartModelImpl) then) =
      __$$CartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, CartDataModel? data});

  @override
  $CartDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CartModelImplCopyWithImpl<$Res>
    extends _$CartModelCopyWithImpl<$Res, _$CartModelImpl>
    implements _$$CartModelImplCopyWith<$Res> {
  __$$CartModelImplCopyWithImpl(
      _$CartModelImpl _value, $Res Function(_$CartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CartModelImpl(
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
              as CartDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$CartModelImpl implements _CartModel {
  const _$CartModelImpl({this.code, this.message, this.data});

  factory _$CartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final CartDataModel? data;

  @override
  String toString() {
    return 'CartModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartModelImpl &&
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
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      __$$CartModelImplCopyWithImpl<_$CartModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartModelImplToJson(
      this,
    );
  }
}

abstract class _CartModel implements CartModel {
  const factory _CartModel(
      {final int? code,
      final String? message,
      final CartDataModel? data}) = _$CartModelImpl;

  factory _CartModel.fromJson(Map<String, dynamic> json) =
      _$CartModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  CartDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CartModelImplCopyWith<_$CartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartDataModel _$CartDataModelFromJson(Map<String, dynamic> json) {
  return _CartDataModel.fromJson(json);
}

/// @nodoc
mixin _$CartDataModel {
  List<ProductModel>? get cartdata => throw _privateConstructorUsedError;
  List<ProductModel>? get recently_viewed_product =>
      throw _privateConstructorUsedError;
  List<dynamic>? get voucher => throw _privateConstructorUsedError;
  List<VoucherModel>? get voucherlist => throw _privateConstructorUsedError;
  List<AdsDataModel>? get adslist => throw _privateConstructorUsedError;
  ProductModel? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartDataModelCopyWith<CartDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartDataModelCopyWith<$Res> {
  factory $CartDataModelCopyWith(
          CartDataModel value, $Res Function(CartDataModel) then) =
      _$CartDataModelCopyWithImpl<$Res, CartDataModel>;
  @useResult
  $Res call(
      {List<ProductModel>? cartdata,
      List<ProductModel>? recently_viewed_product,
      List<dynamic>? voucher,
      List<VoucherModel>? voucherlist,
      List<AdsDataModel>? adslist,
      ProductModel? product});

  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartDataModelCopyWithImpl<$Res, $Val extends CartDataModel>
    implements $CartDataModelCopyWith<$Res> {
  _$CartDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartdata = freezed,
    Object? recently_viewed_product = freezed,
    Object? voucher = freezed,
    Object? voucherlist = freezed,
    Object? adslist = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      cartdata: freezed == cartdata
          ? _value.cartdata
          : cartdata // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      recently_viewed_product: freezed == recently_viewed_product
          ? _value.recently_viewed_product
          : recently_viewed_product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      voucher: freezed == voucher
          ? _value.voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      voucherlist: freezed == voucherlist
          ? _value.voucherlist
          : voucherlist // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>?,
      adslist: freezed == adslist
          ? _value.adslist
          : adslist // ignore: cast_nullable_to_non_nullable
              as List<AdsDataModel>?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartDataModelImplCopyWith<$Res>
    implements $CartDataModelCopyWith<$Res> {
  factory _$$CartDataModelImplCopyWith(
          _$CartDataModelImpl value, $Res Function(_$CartDataModelImpl) then) =
      __$$CartDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProductModel>? cartdata,
      List<ProductModel>? recently_viewed_product,
      List<dynamic>? voucher,
      List<VoucherModel>? voucherlist,
      List<AdsDataModel>? adslist,
      ProductModel? product});

  @override
  $ProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartDataModelImplCopyWithImpl<$Res>
    extends _$CartDataModelCopyWithImpl<$Res, _$CartDataModelImpl>
    implements _$$CartDataModelImplCopyWith<$Res> {
  __$$CartDataModelImplCopyWithImpl(
      _$CartDataModelImpl _value, $Res Function(_$CartDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartdata = freezed,
    Object? recently_viewed_product = freezed,
    Object? voucher = freezed,
    Object? voucherlist = freezed,
    Object? adslist = freezed,
    Object? product = freezed,
  }) {
    return _then(_$CartDataModelImpl(
      cartdata: freezed == cartdata
          ? _value._cartdata
          : cartdata // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      recently_viewed_product: freezed == recently_viewed_product
          ? _value._recently_viewed_product
          : recently_viewed_product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      voucher: freezed == voucher
          ? _value._voucher
          : voucher // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      voucherlist: freezed == voucherlist
          ? _value._voucherlist
          : voucherlist // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>?,
      adslist: freezed == adslist
          ? _value._adslist
          : adslist // ignore: cast_nullable_to_non_nullable
              as List<AdsDataModel>?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$CartDataModelImpl implements _CartDataModel {
  const _$CartDataModelImpl(
      {final List<ProductModel>? cartdata,
      final List<ProductModel>? recently_viewed_product,
      final List<dynamic>? voucher,
      final List<VoucherModel>? voucherlist,
      final List<AdsDataModel>? adslist,
      this.product})
      : _cartdata = cartdata,
        _recently_viewed_product = recently_viewed_product,
        _voucher = voucher,
        _voucherlist = voucherlist,
        _adslist = adslist;

  factory _$CartDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartDataModelImplFromJson(json);

  final List<ProductModel>? _cartdata;
  @override
  List<ProductModel>? get cartdata {
    final value = _cartdata;
    if (value == null) return null;
    if (_cartdata is EqualUnmodifiableListView) return _cartdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _recently_viewed_product;
  @override
  List<ProductModel>? get recently_viewed_product {
    final value = _recently_viewed_product;
    if (value == null) return null;
    if (_recently_viewed_product is EqualUnmodifiableListView)
      return _recently_viewed_product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _voucher;
  @override
  List<dynamic>? get voucher {
    final value = _voucher;
    if (value == null) return null;
    if (_voucher is EqualUnmodifiableListView) return _voucher;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VoucherModel>? _voucherlist;
  @override
  List<VoucherModel>? get voucherlist {
    final value = _voucherlist;
    if (value == null) return null;
    if (_voucherlist is EqualUnmodifiableListView) return _voucherlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AdsDataModel>? _adslist;
  @override
  List<AdsDataModel>? get adslist {
    final value = _adslist;
    if (value == null) return null;
    if (_adslist is EqualUnmodifiableListView) return _adslist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ProductModel? product;

  @override
  String toString() {
    return 'CartDataModel(cartdata: $cartdata, recently_viewed_product: $recently_viewed_product, voucher: $voucher, voucherlist: $voucherlist, adslist: $adslist, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartDataModelImpl &&
            const DeepCollectionEquality().equals(other._cartdata, _cartdata) &&
            const DeepCollectionEquality().equals(
                other._recently_viewed_product, _recently_viewed_product) &&
            const DeepCollectionEquality().equals(other._voucher, _voucher) &&
            const DeepCollectionEquality()
                .equals(other._voucherlist, _voucherlist) &&
            const DeepCollectionEquality().equals(other._adslist, _adslist) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_cartdata),
      const DeepCollectionEquality().hash(_recently_viewed_product),
      const DeepCollectionEquality().hash(_voucher),
      const DeepCollectionEquality().hash(_voucherlist),
      const DeepCollectionEquality().hash(_adslist),
      product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartDataModelImplCopyWith<_$CartDataModelImpl> get copyWith =>
      __$$CartDataModelImplCopyWithImpl<_$CartDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartDataModelImplToJson(
      this,
    );
  }
}

abstract class _CartDataModel implements CartDataModel {
  const factory _CartDataModel(
      {final List<ProductModel>? cartdata,
      final List<ProductModel>? recently_viewed_product,
      final List<dynamic>? voucher,
      final List<VoucherModel>? voucherlist,
      final List<AdsDataModel>? adslist,
      final ProductModel? product}) = _$CartDataModelImpl;

  factory _CartDataModel.fromJson(Map<String, dynamic> json) =
      _$CartDataModelImpl.fromJson;

  @override
  List<ProductModel>? get cartdata;
  @override
  List<ProductModel>? get recently_viewed_product;
  @override
  List<dynamic>? get voucher;
  @override
  List<VoucherModel>? get voucherlist;
  @override
  List<AdsDataModel>? get adslist;
  @override
  ProductModel? get product;
  @override
  @JsonKey(ignore: true)
  _$$CartDataModelImplCopyWith<_$CartDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RemoveFromCartModel _$RemoveFromCartModelFromJson(Map<String, dynamic> json) {
  return _RemoveFromCartModel.fromJson(json);
}

/// @nodoc
mixin _$RemoveFromCartModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<dynamic>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemoveFromCartModelCopyWith<RemoveFromCartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFromCartModelCopyWith<$Res> {
  factory $RemoveFromCartModelCopyWith(
          RemoveFromCartModel value, $Res Function(RemoveFromCartModel) then) =
      _$RemoveFromCartModelCopyWithImpl<$Res, RemoveFromCartModel>;
  @useResult
  $Res call({int? code, String? message, List<dynamic>? data});
}

/// @nodoc
class _$RemoveFromCartModelCopyWithImpl<$Res, $Val extends RemoveFromCartModel>
    implements $RemoveFromCartModelCopyWith<$Res> {
  _$RemoveFromCartModelCopyWithImpl(this._value, this._then);

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
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemoveFromCartModelImplCopyWith<$Res>
    implements $RemoveFromCartModelCopyWith<$Res> {
  factory _$$RemoveFromCartModelImplCopyWith(_$RemoveFromCartModelImpl value,
          $Res Function(_$RemoveFromCartModelImpl) then) =
      __$$RemoveFromCartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, List<dynamic>? data});
}

/// @nodoc
class __$$RemoveFromCartModelImplCopyWithImpl<$Res>
    extends _$RemoveFromCartModelCopyWithImpl<$Res, _$RemoveFromCartModelImpl>
    implements _$$RemoveFromCartModelImplCopyWith<$Res> {
  __$$RemoveFromCartModelImplCopyWithImpl(_$RemoveFromCartModelImpl _value,
      $Res Function(_$RemoveFromCartModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$RemoveFromCartModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$RemoveFromCartModelImpl implements _RemoveFromCartModel {
  const _$RemoveFromCartModelImpl(
      {this.code, this.message, final List<dynamic>? data})
      : _data = data;

  factory _$RemoveFromCartModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveFromCartModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  final List<dynamic>? _data;
  @override
  List<dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RemoveFromCartModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFromCartModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, message, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFromCartModelImplCopyWith<_$RemoveFromCartModelImpl> get copyWith =>
      __$$RemoveFromCartModelImplCopyWithImpl<_$RemoveFromCartModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveFromCartModelImplToJson(
      this,
    );
  }
}

abstract class _RemoveFromCartModel implements RemoveFromCartModel {
  const factory _RemoveFromCartModel(
      {final int? code,
      final String? message,
      final List<dynamic>? data}) = _$RemoveFromCartModelImpl;

  factory _RemoveFromCartModel.fromJson(Map<String, dynamic> json) =
      _$RemoveFromCartModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  List<dynamic>? get data;
  @override
  @JsonKey(ignore: true)
  _$$RemoveFromCartModelImplCopyWith<_$RemoveFromCartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
