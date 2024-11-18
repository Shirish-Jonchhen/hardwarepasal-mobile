// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetailModel _$ProductDetailModelFromJson(Map<String, dynamic> json) {
  return _ProductDetailModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailModel {
  int? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ProductDetailDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailModelCopyWith<ProductDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailModelCopyWith<$Res> {
  factory $ProductDetailModelCopyWith(
          ProductDetailModel value, $Res Function(ProductDetailModel) then) =
      _$ProductDetailModelCopyWithImpl<$Res, ProductDetailModel>;
  @useResult
  $Res call({int? status, String? message, ProductDetailDataModel? data});

  $ProductDetailDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailModelCopyWithImpl<$Res, $Val extends ProductDetailModel>
    implements $ProductDetailModelCopyWith<$Res> {
  _$ProductDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDetailDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailModelImplCopyWith<$Res>
    implements $ProductDetailModelCopyWith<$Res> {
  factory _$$ProductDetailModelImplCopyWith(_$ProductDetailModelImpl value,
          $Res Function(_$ProductDetailModelImpl) then) =
      __$$ProductDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? status, String? message, ProductDetailDataModel? data});

  @override
  $ProductDetailDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductDetailModelImplCopyWithImpl<$Res>
    extends _$ProductDetailModelCopyWithImpl<$Res, _$ProductDetailModelImpl>
    implements _$$ProductDetailModelImplCopyWith<$Res> {
  __$$ProductDetailModelImplCopyWithImpl(_$ProductDetailModelImpl _value,
      $Res Function(_$ProductDetailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProductDetailModelImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProductDetailModelImpl implements _ProductDetailModel {
  const _$ProductDetailModelImpl({this.status, this.message, this.data});

  factory _$ProductDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailModelImplFromJson(json);

  @override
  final int? status;
  @override
  final String? message;
  @override
  final ProductDetailDataModel? data;

  @override
  String toString() {
    return 'ProductDetailModel(status: $status, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailModelImplCopyWith<_$ProductDetailModelImpl> get copyWith =>
      __$$ProductDetailModelImplCopyWithImpl<_$ProductDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailModel implements ProductDetailModel {
  const factory _ProductDetailModel(
      {final int? status,
      final String? message,
      final ProductDetailDataModel? data}) = _$ProductDetailModelImpl;

  factory _ProductDetailModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailModelImpl.fromJson;

  @override
  int? get status;
  @override
  String? get message;
  @override
  ProductDetailDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailModelImplCopyWith<_$ProductDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailDataModel _$ProductDetailDataModelFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailDataModel {
  ProductDetailInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailDataModelCopyWith<ProductDetailDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailDataModelCopyWith<$Res> {
  factory $ProductDetailDataModelCopyWith(ProductDetailDataModel value,
          $Res Function(ProductDetailDataModel) then) =
      _$ProductDetailDataModelCopyWithImpl<$Res, ProductDetailDataModel>;
  @useResult
  $Res call({ProductDetailInnerDataModel? data});

  $ProductDetailInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ProductDetailDataModelCopyWithImpl<$Res,
        $Val extends ProductDetailDataModel>
    implements $ProductDetailDataModelCopyWith<$Res> {
  _$ProductDetailDataModelCopyWithImpl(this._value, this._then);

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
              as ProductDetailInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDetailInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ProductDetailInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailDataModelImplCopyWith<$Res>
    implements $ProductDetailDataModelCopyWith<$Res> {
  factory _$$ProductDetailDataModelImplCopyWith(
          _$ProductDetailDataModelImpl value,
          $Res Function(_$ProductDetailDataModelImpl) then) =
      __$$ProductDetailDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ProductDetailInnerDataModel? data});

  @override
  $ProductDetailInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ProductDetailDataModelImplCopyWithImpl<$Res>
    extends _$ProductDetailDataModelCopyWithImpl<$Res,
        _$ProductDetailDataModelImpl>
    implements _$$ProductDetailDataModelImplCopyWith<$Res> {
  __$$ProductDetailDataModelImplCopyWithImpl(
      _$ProductDetailDataModelImpl _value,
      $Res Function(_$ProductDetailDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ProductDetailDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProductDetailInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProductDetailDataModelImpl implements _ProductDetailDataModel {
  const _$ProductDetailDataModelImpl({this.data});

  factory _$ProductDetailDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailDataModelImplFromJson(json);

  @override
  final ProductDetailInnerDataModel? data;

  @override
  String toString() {
    return 'ProductDetailDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailDataModelImplCopyWith<_$ProductDetailDataModelImpl>
      get copyWith => __$$ProductDetailDataModelImplCopyWithImpl<
          _$ProductDetailDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailDataModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailDataModel implements ProductDetailDataModel {
  const factory _ProductDetailDataModel(
      {final ProductDetailInnerDataModel? data}) = _$ProductDetailDataModelImpl;

  factory _ProductDetailDataModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailDataModelImpl.fromJson;

  @override
  ProductDetailInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailDataModelImplCopyWith<_$ProductDetailDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductDetailInnerDataModel _$ProductDetailInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _ProductDetailInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailInnerDataModel {
  ActualProductModel? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'productYouMightLike')
  List<ProductModel>? get productYouMightLike =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'customersAreAlsoViewing')
  List<ProductModel>? get customersAreAlsoViewing =>
      throw _privateConstructorUsedError;
  List<ProductModel>? get recently_viewed_products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'voucherlist')
  List<VoucherModel>? get voucherList => throw _privateConstructorUsedError;
  List<ProductModel>? get brand_product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailInnerDataModelCopyWith<ProductDetailInnerDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailInnerDataModelCopyWith<$Res> {
  factory $ProductDetailInnerDataModelCopyWith(
          ProductDetailInnerDataModel value,
          $Res Function(ProductDetailInnerDataModel) then) =
      _$ProductDetailInnerDataModelCopyWithImpl<$Res,
          ProductDetailInnerDataModel>;
  @useResult
  $Res call(
      {ActualProductModel? product,
      @JsonKey(name: 'productYouMightLike')
      List<ProductModel>? productYouMightLike,
      @JsonKey(name: 'customersAreAlsoViewing')
      List<ProductModel>? customersAreAlsoViewing,
      List<ProductModel>? recently_viewed_products,
      @JsonKey(name: 'voucherlist') List<VoucherModel>? voucherList,
      List<ProductModel>? brand_product});

  $ActualProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class _$ProductDetailInnerDataModelCopyWithImpl<$Res,
        $Val extends ProductDetailInnerDataModel>
    implements $ProductDetailInnerDataModelCopyWith<$Res> {
  _$ProductDetailInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? productYouMightLike = freezed,
    Object? customersAreAlsoViewing = freezed,
    Object? recently_viewed_products = freezed,
    Object? voucherList = freezed,
    Object? brand_product = freezed,
  }) {
    return _then(_value.copyWith(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ActualProductModel?,
      productYouMightLike: freezed == productYouMightLike
          ? _value.productYouMightLike
          : productYouMightLike // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      customersAreAlsoViewing: freezed == customersAreAlsoViewing
          ? _value.customersAreAlsoViewing
          : customersAreAlsoViewing // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      recently_viewed_products: freezed == recently_viewed_products
          ? _value.recently_viewed_products
          : recently_viewed_products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      voucherList: freezed == voucherList
          ? _value.voucherList
          : voucherList // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>?,
      brand_product: freezed == brand_product
          ? _value.brand_product
          : brand_product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActualProductModelCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ActualProductModelCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailInnerDataModelImplCopyWith<$Res>
    implements $ProductDetailInnerDataModelCopyWith<$Res> {
  factory _$$ProductDetailInnerDataModelImplCopyWith(
          _$ProductDetailInnerDataModelImpl value,
          $Res Function(_$ProductDetailInnerDataModelImpl) then) =
      __$$ProductDetailInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActualProductModel? product,
      @JsonKey(name: 'productYouMightLike')
      List<ProductModel>? productYouMightLike,
      @JsonKey(name: 'customersAreAlsoViewing')
      List<ProductModel>? customersAreAlsoViewing,
      List<ProductModel>? recently_viewed_products,
      @JsonKey(name: 'voucherlist') List<VoucherModel>? voucherList,
      List<ProductModel>? brand_product});

  @override
  $ActualProductModelCopyWith<$Res>? get product;
}

/// @nodoc
class __$$ProductDetailInnerDataModelImplCopyWithImpl<$Res>
    extends _$ProductDetailInnerDataModelCopyWithImpl<$Res,
        _$ProductDetailInnerDataModelImpl>
    implements _$$ProductDetailInnerDataModelImplCopyWith<$Res> {
  __$$ProductDetailInnerDataModelImplCopyWithImpl(
      _$ProductDetailInnerDataModelImpl _value,
      $Res Function(_$ProductDetailInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = freezed,
    Object? productYouMightLike = freezed,
    Object? customersAreAlsoViewing = freezed,
    Object? recently_viewed_products = freezed,
    Object? voucherList = freezed,
    Object? brand_product = freezed,
  }) {
    return _then(_$ProductDetailInnerDataModelImpl(
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ActualProductModel?,
      productYouMightLike: freezed == productYouMightLike
          ? _value._productYouMightLike
          : productYouMightLike // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      customersAreAlsoViewing: freezed == customersAreAlsoViewing
          ? _value._customersAreAlsoViewing
          : customersAreAlsoViewing // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      recently_viewed_products: freezed == recently_viewed_products
          ? _value._recently_viewed_products
          : recently_viewed_products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      voucherList: freezed == voucherList
          ? _value._voucherList
          : voucherList // ignore: cast_nullable_to_non_nullable
              as List<VoucherModel>?,
      brand_product: freezed == brand_product
          ? _value._brand_product
          : brand_product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProductDetailInnerDataModelImpl
    implements _ProductDetailInnerDataModel {
  const _$ProductDetailInnerDataModelImpl(
      {this.product,
      @JsonKey(name: 'productYouMightLike')
      final List<ProductModel>? productYouMightLike,
      @JsonKey(name: 'customersAreAlsoViewing')
      final List<ProductModel>? customersAreAlsoViewing,
      final List<ProductModel>? recently_viewed_products,
      @JsonKey(name: 'voucherlist') final List<VoucherModel>? voucherList,
      final List<ProductModel>? brand_product})
      : _productYouMightLike = productYouMightLike,
        _customersAreAlsoViewing = customersAreAlsoViewing,
        _recently_viewed_products = recently_viewed_products,
        _voucherList = voucherList,
        _brand_product = brand_product;

  factory _$ProductDetailInnerDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProductDetailInnerDataModelImplFromJson(json);

  @override
  final ActualProductModel? product;
  final List<ProductModel>? _productYouMightLike;
  @override
  @JsonKey(name: 'productYouMightLike')
  List<ProductModel>? get productYouMightLike {
    final value = _productYouMightLike;
    if (value == null) return null;
    if (_productYouMightLike is EqualUnmodifiableListView)
      return _productYouMightLike;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _customersAreAlsoViewing;
  @override
  @JsonKey(name: 'customersAreAlsoViewing')
  List<ProductModel>? get customersAreAlsoViewing {
    final value = _customersAreAlsoViewing;
    if (value == null) return null;
    if (_customersAreAlsoViewing is EqualUnmodifiableListView)
      return _customersAreAlsoViewing;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _recently_viewed_products;
  @override
  List<ProductModel>? get recently_viewed_products {
    final value = _recently_viewed_products;
    if (value == null) return null;
    if (_recently_viewed_products is EqualUnmodifiableListView)
      return _recently_viewed_products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VoucherModel>? _voucherList;
  @override
  @JsonKey(name: 'voucherlist')
  List<VoucherModel>? get voucherList {
    final value = _voucherList;
    if (value == null) return null;
    if (_voucherList is EqualUnmodifiableListView) return _voucherList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _brand_product;
  @override
  List<ProductModel>? get brand_product {
    final value = _brand_product;
    if (value == null) return null;
    if (_brand_product is EqualUnmodifiableListView) return _brand_product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductDetailInnerDataModel(product: $product, productYouMightLike: $productYouMightLike, customersAreAlsoViewing: $customersAreAlsoViewing, recently_viewed_products: $recently_viewed_products, voucherList: $voucherList, brand_product: $brand_product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailInnerDataModelImpl &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._productYouMightLike, _productYouMightLike) &&
            const DeepCollectionEquality().equals(
                other._customersAreAlsoViewing, _customersAreAlsoViewing) &&
            const DeepCollectionEquality().equals(
                other._recently_viewed_products, _recently_viewed_products) &&
            const DeepCollectionEquality()
                .equals(other._voucherList, _voucherList) &&
            const DeepCollectionEquality()
                .equals(other._brand_product, _brand_product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      const DeepCollectionEquality().hash(_productYouMightLike),
      const DeepCollectionEquality().hash(_customersAreAlsoViewing),
      const DeepCollectionEquality().hash(_recently_viewed_products),
      const DeepCollectionEquality().hash(_voucherList),
      const DeepCollectionEquality().hash(_brand_product));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailInnerDataModelImplCopyWith<_$ProductDetailInnerDataModelImpl>
      get copyWith => __$$ProductDetailInnerDataModelImplCopyWithImpl<
          _$ProductDetailInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailInnerDataModel
    implements ProductDetailInnerDataModel {
  const factory _ProductDetailInnerDataModel(
          {final ActualProductModel? product,
          @JsonKey(name: 'productYouMightLike')
          final List<ProductModel>? productYouMightLike,
          @JsonKey(name: 'customersAreAlsoViewing')
          final List<ProductModel>? customersAreAlsoViewing,
          final List<ProductModel>? recently_viewed_products,
          @JsonKey(name: 'voucherlist') final List<VoucherModel>? voucherList,
          final List<ProductModel>? brand_product}) =
      _$ProductDetailInnerDataModelImpl;

  factory _ProductDetailInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$ProductDetailInnerDataModelImpl.fromJson;

  @override
  ActualProductModel? get product;
  @override
  @JsonKey(name: 'productYouMightLike')
  List<ProductModel>? get productYouMightLike;
  @override
  @JsonKey(name: 'customersAreAlsoViewing')
  List<ProductModel>? get customersAreAlsoViewing;
  @override
  List<ProductModel>? get recently_viewed_products;
  @override
  @JsonKey(name: 'voucherlist')
  List<VoucherModel>? get voucherList;
  @override
  List<ProductModel>? get brand_product;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailInnerDataModelImplCopyWith<_$ProductDetailInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
