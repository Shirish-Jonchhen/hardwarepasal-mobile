// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandDetailsResponseModel _$BrandDetailsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BrandDetailsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BrandDetailsResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BrandDetailsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDetailsResponseModelCopyWith<BrandDetailsResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailsResponseModelCopyWith<$Res> {
  factory $BrandDetailsResponseModelCopyWith(BrandDetailsResponseModel value,
          $Res Function(BrandDetailsResponseModel) then) =
      _$BrandDetailsResponseModelCopyWithImpl<$Res, BrandDetailsResponseModel>;
  @useResult
  $Res call({int? id, String? message, BrandDetailsDataModel? data});

  $BrandDetailsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrandDetailsResponseModelCopyWithImpl<$Res,
        $Val extends BrandDetailsResponseModel>
    implements $BrandDetailsResponseModelCopyWith<$Res> {
  _$BrandDetailsResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BrandDetailsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandDetailsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BrandDetailsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandDetailsResponseModelImplCopyWith<$Res>
    implements $BrandDetailsResponseModelCopyWith<$Res> {
  factory _$$BrandDetailsResponseModelImplCopyWith(
          _$BrandDetailsResponseModelImpl value,
          $Res Function(_$BrandDetailsResponseModelImpl) then) =
      __$$BrandDetailsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? message, BrandDetailsDataModel? data});

  @override
  $BrandDetailsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BrandDetailsResponseModelImplCopyWithImpl<$Res>
    extends _$BrandDetailsResponseModelCopyWithImpl<$Res,
        _$BrandDetailsResponseModelImpl>
    implements _$$BrandDetailsResponseModelImplCopyWith<$Res> {
  __$$BrandDetailsResponseModelImplCopyWithImpl(
      _$BrandDetailsResponseModelImpl _value,
      $Res Function(_$BrandDetailsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BrandDetailsResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BrandDetailsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BrandDetailsResponseModelImpl implements _BrandDetailsResponseModel {
  const _$BrandDetailsResponseModelImpl({this.id, this.message, this.data});

  factory _$BrandDetailsResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDetailsResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? message;
  @override
  final BrandDetailsDataModel? data;

  @override
  String toString() {
    return 'BrandDetailsResponseModel(id: $id, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailsResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDetailsResponseModelImplCopyWith<_$BrandDetailsResponseModelImpl>
      get copyWith => __$$BrandDetailsResponseModelImplCopyWithImpl<
          _$BrandDetailsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDetailsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BrandDetailsResponseModel implements BrandDetailsResponseModel {
  const factory _BrandDetailsResponseModel(
      {final int? id,
      final String? message,
      final BrandDetailsDataModel? data}) = _$BrandDetailsResponseModelImpl;

  factory _BrandDetailsResponseModel.fromJson(Map<String, dynamic> json) =
      _$BrandDetailsResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get message;
  @override
  BrandDetailsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandDetailsResponseModelImplCopyWith<_$BrandDetailsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandDetailsDataModel _$BrandDetailsDataModelFromJson(
    Map<String, dynamic> json) {
  return _BrandDetailsDataModel.fromJson(json);
}

/// @nodoc
mixin _$BrandDetailsDataModel {
  BrandDetailsInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDetailsDataModelCopyWith<BrandDetailsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailsDataModelCopyWith<$Res> {
  factory $BrandDetailsDataModelCopyWith(BrandDetailsDataModel value,
          $Res Function(BrandDetailsDataModel) then) =
      _$BrandDetailsDataModelCopyWithImpl<$Res, BrandDetailsDataModel>;
  @useResult
  $Res call({BrandDetailsInnerDataModel? data});

  $BrandDetailsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrandDetailsDataModelCopyWithImpl<$Res,
        $Val extends BrandDetailsDataModel>
    implements $BrandDetailsDataModelCopyWith<$Res> {
  _$BrandDetailsDataModelCopyWithImpl(this._value, this._then);

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
              as BrandDetailsInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandDetailsInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BrandDetailsInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandDetailsDataModelImplCopyWith<$Res>
    implements $BrandDetailsDataModelCopyWith<$Res> {
  factory _$$BrandDetailsDataModelImplCopyWith(
          _$BrandDetailsDataModelImpl value,
          $Res Function(_$BrandDetailsDataModelImpl) then) =
      __$$BrandDetailsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BrandDetailsInnerDataModel? data});

  @override
  $BrandDetailsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BrandDetailsDataModelImplCopyWithImpl<$Res>
    extends _$BrandDetailsDataModelCopyWithImpl<$Res,
        _$BrandDetailsDataModelImpl>
    implements _$$BrandDetailsDataModelImplCopyWith<$Res> {
  __$$BrandDetailsDataModelImplCopyWithImpl(_$BrandDetailsDataModelImpl _value,
      $Res Function(_$BrandDetailsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BrandDetailsDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BrandDetailsInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BrandDetailsDataModelImpl implements _BrandDetailsDataModel {
  const _$BrandDetailsDataModelImpl({this.data});

  factory _$BrandDetailsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDetailsDataModelImplFromJson(json);

  @override
  final BrandDetailsInnerDataModel? data;

  @override
  String toString() {
    return 'BrandDetailsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailsDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDetailsDataModelImplCopyWith<_$BrandDetailsDataModelImpl>
      get copyWith => __$$BrandDetailsDataModelImplCopyWithImpl<
          _$BrandDetailsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDetailsDataModelImplToJson(
      this,
    );
  }
}

abstract class _BrandDetailsDataModel implements BrandDetailsDataModel {
  const factory _BrandDetailsDataModel(
      {final BrandDetailsInnerDataModel? data}) = _$BrandDetailsDataModelImpl;

  factory _BrandDetailsDataModel.fromJson(Map<String, dynamic> json) =
      _$BrandDetailsDataModelImpl.fromJson;

  @override
  BrandDetailsInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandDetailsDataModelImplCopyWith<_$BrandDetailsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandDetailsInnerDataModel _$BrandDetailsInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _BrandDetailsInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$BrandDetailsInnerDataModel {
  BrandDetailsProductsModel? get products => throw _privateConstructorUsedError;
  List<dynamic>? get brands => throw _privateConstructorUsedError;
  @JsonKey(name: 'filteredCategories')
  List<CategoryItemModel>? get filteredCategories =>
      throw _privateConstructorUsedError;
  List<CategoryItemModel>? get brand_sub_categories =>
      throw _privateConstructorUsedError;
  BrandsItemModel? get brand => throw _privateConstructorUsedError;
  bool? get is_brand => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDetailsInnerDataModelCopyWith<BrandDetailsInnerDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailsInnerDataModelCopyWith<$Res> {
  factory $BrandDetailsInnerDataModelCopyWith(BrandDetailsInnerDataModel value,
          $Res Function(BrandDetailsInnerDataModel) then) =
      _$BrandDetailsInnerDataModelCopyWithImpl<$Res,
          BrandDetailsInnerDataModel>;
  @useResult
  $Res call(
      {BrandDetailsProductsModel? products,
      List<dynamic>? brands,
      @JsonKey(name: 'filteredCategories')
      List<CategoryItemModel>? filteredCategories,
      List<CategoryItemModel>? brand_sub_categories,
      BrandsItemModel? brand,
      bool? is_brand});

  $BrandDetailsProductsModelCopyWith<$Res>? get products;
  $BrandsItemModelCopyWith<$Res>? get brand;
}

/// @nodoc
class _$BrandDetailsInnerDataModelCopyWithImpl<$Res,
        $Val extends BrandDetailsInnerDataModel>
    implements $BrandDetailsInnerDataModelCopyWith<$Res> {
  _$BrandDetailsInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? brands = freezed,
    Object? filteredCategories = freezed,
    Object? brand_sub_categories = freezed,
    Object? brand = freezed,
    Object? is_brand = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BrandDetailsProductsModel?,
      brands: freezed == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      filteredCategories: freezed == filteredCategories
          ? _value.filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
      brand_sub_categories: freezed == brand_sub_categories
          ? _value.brand_sub_categories
          : brand_sub_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandsItemModel?,
      is_brand: freezed == is_brand
          ? _value.is_brand
          : is_brand // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandDetailsProductsModelCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $BrandDetailsProductsModelCopyWith<$Res>(_value.products!, (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandsItemModelCopyWith<$Res>? get brand {
    if (_value.brand == null) {
      return null;
    }

    return $BrandsItemModelCopyWith<$Res>(_value.brand!, (value) {
      return _then(_value.copyWith(brand: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandDetailsInnerDataModelImplCopyWith<$Res>
    implements $BrandDetailsInnerDataModelCopyWith<$Res> {
  factory _$$BrandDetailsInnerDataModelImplCopyWith(
          _$BrandDetailsInnerDataModelImpl value,
          $Res Function(_$BrandDetailsInnerDataModelImpl) then) =
      __$$BrandDetailsInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BrandDetailsProductsModel? products,
      List<dynamic>? brands,
      @JsonKey(name: 'filteredCategories')
      List<CategoryItemModel>? filteredCategories,
      List<CategoryItemModel>? brand_sub_categories,
      BrandsItemModel? brand,
      bool? is_brand});

  @override
  $BrandDetailsProductsModelCopyWith<$Res>? get products;
  @override
  $BrandsItemModelCopyWith<$Res>? get brand;
}

/// @nodoc
class __$$BrandDetailsInnerDataModelImplCopyWithImpl<$Res>
    extends _$BrandDetailsInnerDataModelCopyWithImpl<$Res,
        _$BrandDetailsInnerDataModelImpl>
    implements _$$BrandDetailsInnerDataModelImplCopyWith<$Res> {
  __$$BrandDetailsInnerDataModelImplCopyWithImpl(
      _$BrandDetailsInnerDataModelImpl _value,
      $Res Function(_$BrandDetailsInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? brands = freezed,
    Object? filteredCategories = freezed,
    Object? brand_sub_categories = freezed,
    Object? brand = freezed,
    Object? is_brand = freezed,
  }) {
    return _then(_$BrandDetailsInnerDataModelImpl(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BrandDetailsProductsModel?,
      brands: freezed == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      filteredCategories: freezed == filteredCategories
          ? _value._filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
      brand_sub_categories: freezed == brand_sub_categories
          ? _value._brand_sub_categories
          : brand_sub_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryItemModel>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as BrandsItemModel?,
      is_brand: freezed == is_brand
          ? _value.is_brand
          : is_brand // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BrandDetailsInnerDataModelImpl implements _BrandDetailsInnerDataModel {
  const _$BrandDetailsInnerDataModelImpl(
      {this.products,
      final List<dynamic>? brands,
      @JsonKey(name: 'filteredCategories')
      final List<CategoryItemModel>? filteredCategories,
      final List<CategoryItemModel>? brand_sub_categories,
      this.brand,
      this.is_brand})
      : _brands = brands,
        _filteredCategories = filteredCategories,
        _brand_sub_categories = brand_sub_categories;

  factory _$BrandDetailsInnerDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BrandDetailsInnerDataModelImplFromJson(json);

  @override
  final BrandDetailsProductsModel? products;
  final List<dynamic>? _brands;
  @override
  List<dynamic>? get brands {
    final value = _brands;
    if (value == null) return null;
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryItemModel>? _filteredCategories;
  @override
  @JsonKey(name: 'filteredCategories')
  List<CategoryItemModel>? get filteredCategories {
    final value = _filteredCategories;
    if (value == null) return null;
    if (_filteredCategories is EqualUnmodifiableListView)
      return _filteredCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoryItemModel>? _brand_sub_categories;
  @override
  List<CategoryItemModel>? get brand_sub_categories {
    final value = _brand_sub_categories;
    if (value == null) return null;
    if (_brand_sub_categories is EqualUnmodifiableListView)
      return _brand_sub_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final BrandsItemModel? brand;
  @override
  final bool? is_brand;

  @override
  String toString() {
    return 'BrandDetailsInnerDataModel(products: $products, brands: $brands, filteredCategories: $filteredCategories, brand_sub_categories: $brand_sub_categories, brand: $brand, is_brand: $is_brand)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailsInnerDataModelImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            const DeepCollectionEquality()
                .equals(other._filteredCategories, _filteredCategories) &&
            const DeepCollectionEquality()
                .equals(other._brand_sub_categories, _brand_sub_categories) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.is_brand, is_brand) ||
                other.is_brand == is_brand));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      products,
      const DeepCollectionEquality().hash(_brands),
      const DeepCollectionEquality().hash(_filteredCategories),
      const DeepCollectionEquality().hash(_brand_sub_categories),
      brand,
      is_brand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDetailsInnerDataModelImplCopyWith<_$BrandDetailsInnerDataModelImpl>
      get copyWith => __$$BrandDetailsInnerDataModelImplCopyWithImpl<
          _$BrandDetailsInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDetailsInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _BrandDetailsInnerDataModel
    implements BrandDetailsInnerDataModel {
  const factory _BrandDetailsInnerDataModel(
      {final BrandDetailsProductsModel? products,
      final List<dynamic>? brands,
      @JsonKey(name: 'filteredCategories')
      final List<CategoryItemModel>? filteredCategories,
      final List<CategoryItemModel>? brand_sub_categories,
      final BrandsItemModel? brand,
      final bool? is_brand}) = _$BrandDetailsInnerDataModelImpl;

  factory _BrandDetailsInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$BrandDetailsInnerDataModelImpl.fromJson;

  @override
  BrandDetailsProductsModel? get products;
  @override
  List<dynamic>? get brands;
  @override
  @JsonKey(name: 'filteredCategories')
  List<CategoryItemModel>? get filteredCategories;
  @override
  List<CategoryItemModel>? get brand_sub_categories;
  @override
  BrandsItemModel? get brand;
  @override
  bool? get is_brand;
  @override
  @JsonKey(ignore: true)
  _$$BrandDetailsInnerDataModelImplCopyWith<_$BrandDetailsInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandDetailsProductsModel _$BrandDetailsProductsModelFromJson(
    Map<String, dynamic> json) {
  return _BrandDetailsProductsModel.fromJson(json);
}

/// @nodoc
mixin _$BrandDetailsProductsModel {
  int? get current_page => throw _privateConstructorUsedError;
  List<ProductModel>? get data => throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  String? get last_page_url => throw _privateConstructorUsedError;
  List<ClearanceSaleLinkModel>? get links => throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDetailsProductsModelCopyWith<BrandDetailsProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailsProductsModelCopyWith<$Res> {
  factory $BrandDetailsProductsModelCopyWith(BrandDetailsProductsModel value,
          $Res Function(BrandDetailsProductsModel) then) =
      _$BrandDetailsProductsModelCopyWithImpl<$Res, BrandDetailsProductsModel>;
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<ClearanceSaleLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class _$BrandDetailsProductsModelCopyWithImpl<$Res,
        $Val extends BrandDetailsProductsModel>
    implements $BrandDetailsProductsModelCopyWith<$Res> {
  _$BrandDetailsProductsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
    Object? first_page_url = freezed,
    Object? from = freezed,
    Object? last_page = freezed,
    Object? last_page_url = freezed,
    Object? links = freezed,
    Object? next_page_url = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? prev_page_url = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      first_page_url: freezed == first_page_url
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page: freezed == last_page
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page_url: freezed == last_page_url
          ? _value.last_page_url
          : last_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<ClearanceSaleLinkModel>?,
      next_page_url: freezed == next_page_url
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      per_page: freezed == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      prev_page_url: freezed == prev_page_url
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandDetailsProductsModelImplCopyWith<$Res>
    implements $BrandDetailsProductsModelCopyWith<$Res> {
  factory _$$BrandDetailsProductsModelImplCopyWith(
          _$BrandDetailsProductsModelImpl value,
          $Res Function(_$BrandDetailsProductsModelImpl) then) =
      __$$BrandDetailsProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<ClearanceSaleLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class __$$BrandDetailsProductsModelImplCopyWithImpl<$Res>
    extends _$BrandDetailsProductsModelCopyWithImpl<$Res,
        _$BrandDetailsProductsModelImpl>
    implements _$$BrandDetailsProductsModelImplCopyWith<$Res> {
  __$$BrandDetailsProductsModelImplCopyWithImpl(
      _$BrandDetailsProductsModelImpl _value,
      $Res Function(_$BrandDetailsProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? current_page = freezed,
    Object? data = freezed,
    Object? first_page_url = freezed,
    Object? from = freezed,
    Object? last_page = freezed,
    Object? last_page_url = freezed,
    Object? links = freezed,
    Object? next_page_url = freezed,
    Object? path = freezed,
    Object? per_page = freezed,
    Object? prev_page_url = freezed,
    Object? to = freezed,
    Object? total = freezed,
  }) {
    return _then(_$BrandDetailsProductsModelImpl(
      current_page: freezed == current_page
          ? _value.current_page
          : current_page // ignore: cast_nullable_to_non_nullable
              as int?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      first_page_url: freezed == first_page_url
          ? _value.first_page_url
          : first_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page: freezed == last_page
          ? _value.last_page
          : last_page // ignore: cast_nullable_to_non_nullable
              as int?,
      last_page_url: freezed == last_page_url
          ? _value.last_page_url
          : last_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      links: freezed == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<ClearanceSaleLinkModel>?,
      next_page_url: freezed == next_page_url
          ? _value.next_page_url
          : next_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      per_page: freezed == per_page
          ? _value.per_page
          : per_page // ignore: cast_nullable_to_non_nullable
              as int?,
      prev_page_url: freezed == prev_page_url
          ? _value.prev_page_url
          : prev_page_url // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as int?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BrandDetailsProductsModelImpl implements _BrandDetailsProductsModel {
  const _$BrandDetailsProductsModelImpl(
      {this.current_page,
      final List<ProductModel>? data,
      this.first_page_url,
      this.from,
      this.last_page,
      this.last_page_url,
      final List<ClearanceSaleLinkModel>? links,
      this.next_page_url,
      this.path,
      this.per_page,
      this.prev_page_url,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$BrandDetailsProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDetailsProductsModelImplFromJson(json);

  @override
  final int? current_page;
  final List<ProductModel>? _data;
  @override
  List<ProductModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? first_page_url;
  @override
  final int? from;
  @override
  final int? last_page;
  @override
  final String? last_page_url;
  final List<ClearanceSaleLinkModel>? _links;
  @override
  List<ClearanceSaleLinkModel>? get links {
    final value = _links;
    if (value == null) return null;
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? next_page_url;
  @override
  final String? path;
  @override
  final int? per_page;
  @override
  final String? prev_page_url;
  @override
  final int? to;
  @override
  final int? total;

  @override
  String toString() {
    return 'BrandDetailsProductsModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, links: $links, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailsProductsModelImpl &&
            (identical(other.current_page, current_page) ||
                other.current_page == current_page) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.first_page_url, first_page_url) ||
                other.first_page_url == first_page_url) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.last_page, last_page) ||
                other.last_page == last_page) &&
            (identical(other.last_page_url, last_page_url) ||
                other.last_page_url == last_page_url) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.next_page_url, next_page_url) ||
                other.next_page_url == next_page_url) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.per_page, per_page) ||
                other.per_page == per_page) &&
            (identical(other.prev_page_url, prev_page_url) ||
                other.prev_page_url == prev_page_url) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      current_page,
      const DeepCollectionEquality().hash(_data),
      first_page_url,
      from,
      last_page,
      last_page_url,
      const DeepCollectionEquality().hash(_links),
      next_page_url,
      path,
      per_page,
      prev_page_url,
      to,
      total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDetailsProductsModelImplCopyWith<_$BrandDetailsProductsModelImpl>
      get copyWith => __$$BrandDetailsProductsModelImplCopyWithImpl<
          _$BrandDetailsProductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDetailsProductsModelImplToJson(
      this,
    );
  }
}

abstract class _BrandDetailsProductsModel implements BrandDetailsProductsModel {
  const factory _BrandDetailsProductsModel(
      {final int? current_page,
      final List<ProductModel>? data,
      final String? first_page_url,
      final int? from,
      final int? last_page,
      final String? last_page_url,
      final List<ClearanceSaleLinkModel>? links,
      final String? next_page_url,
      final String? path,
      final int? per_page,
      final String? prev_page_url,
      final int? to,
      final int? total}) = _$BrandDetailsProductsModelImpl;

  factory _BrandDetailsProductsModel.fromJson(Map<String, dynamic> json) =
      _$BrandDetailsProductsModelImpl.fromJson;

  @override
  int? get current_page;
  @override
  List<ProductModel>? get data;
  @override
  String? get first_page_url;
  @override
  int? get from;
  @override
  int? get last_page;
  @override
  String? get last_page_url;
  @override
  List<ClearanceSaleLinkModel>? get links;
  @override
  String? get next_page_url;
  @override
  String? get path;
  @override
  int? get per_page;
  @override
  String? get prev_page_url;
  @override
  int? get to;
  @override
  int? get total;
  @override
  @JsonKey(ignore: true)
  _$$BrandDetailsProductsModelImplCopyWith<_$BrandDetailsProductsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
