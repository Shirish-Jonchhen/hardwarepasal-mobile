// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_wise_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryWiseProductsResponseModel _$CategoryWiseProductsResponseModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryWiseProductsResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryWiseProductsResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CategoryWiseProductsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryWiseProductsResponseModelCopyWith<CategoryWiseProductsResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWiseProductsResponseModelCopyWith<$Res> {
  factory $CategoryWiseProductsResponseModelCopyWith(
          CategoryWiseProductsResponseModel value,
          $Res Function(CategoryWiseProductsResponseModel) then) =
      _$CategoryWiseProductsResponseModelCopyWithImpl<$Res,
          CategoryWiseProductsResponseModel>;
  @useResult
  $Res call({int? id, String? message, CategoryWiseProductsDataModel? data});

  $CategoryWiseProductsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryWiseProductsResponseModelCopyWithImpl<$Res,
        $Val extends CategoryWiseProductsResponseModel>
    implements $CategoryWiseProductsResponseModelCopyWith<$Res> {
  _$CategoryWiseProductsResponseModelCopyWithImpl(this._value, this._then);

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
              as CategoryWiseProductsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryWiseProductsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CategoryWiseProductsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryWiseProductsResponseModelImplCopyWith<$Res>
    implements $CategoryWiseProductsResponseModelCopyWith<$Res> {
  factory _$$CategoryWiseProductsResponseModelImplCopyWith(
          _$CategoryWiseProductsResponseModelImpl value,
          $Res Function(_$CategoryWiseProductsResponseModelImpl) then) =
      __$$CategoryWiseProductsResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? message, CategoryWiseProductsDataModel? data});

  @override
  $CategoryWiseProductsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoryWiseProductsResponseModelImplCopyWithImpl<$Res>
    extends _$CategoryWiseProductsResponseModelCopyWithImpl<$Res,
        _$CategoryWiseProductsResponseModelImpl>
    implements _$$CategoryWiseProductsResponseModelImplCopyWith<$Res> {
  __$$CategoryWiseProductsResponseModelImplCopyWithImpl(
      _$CategoryWiseProductsResponseModelImpl _value,
      $Res Function(_$CategoryWiseProductsResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CategoryWiseProductsResponseModelImpl(
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
              as CategoryWiseProductsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CategoryWiseProductsResponseModelImpl
    implements _CategoryWiseProductsResponseModel {
  const _$CategoryWiseProductsResponseModelImpl(
      {this.id, this.message, this.data});

  factory _$CategoryWiseProductsResponseModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoryWiseProductsResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? message;
  @override
  final CategoryWiseProductsDataModel? data;

  @override
  String toString() {
    return 'CategoryWiseProductsResponseModel(id: $id, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWiseProductsResponseModelImpl &&
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
  _$$CategoryWiseProductsResponseModelImplCopyWith<
          _$CategoryWiseProductsResponseModelImpl>
      get copyWith => __$$CategoryWiseProductsResponseModelImplCopyWithImpl<
          _$CategoryWiseProductsResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWiseProductsResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryWiseProductsResponseModel
    implements CategoryWiseProductsResponseModel {
  const factory _CategoryWiseProductsResponseModel(
          {final int? id,
          final String? message,
          final CategoryWiseProductsDataModel? data}) =
      _$CategoryWiseProductsResponseModelImpl;

  factory _CategoryWiseProductsResponseModel.fromJson(
          Map<String, dynamic> json) =
      _$CategoryWiseProductsResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get message;
  @override
  CategoryWiseProductsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWiseProductsResponseModelImplCopyWith<
          _$CategoryWiseProductsResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryWiseProductsDataModel _$CategoryWiseProductsDataModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryWiseProductsDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryWiseProductsDataModel {
  CategoryWiseProductsInnerDataModel? get data =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryWiseProductsDataModelCopyWith<CategoryWiseProductsDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWiseProductsDataModelCopyWith<$Res> {
  factory $CategoryWiseProductsDataModelCopyWith(
          CategoryWiseProductsDataModel value,
          $Res Function(CategoryWiseProductsDataModel) then) =
      _$CategoryWiseProductsDataModelCopyWithImpl<$Res,
          CategoryWiseProductsDataModel>;
  @useResult
  $Res call({CategoryWiseProductsInnerDataModel? data});

  $CategoryWiseProductsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryWiseProductsDataModelCopyWithImpl<$Res,
        $Val extends CategoryWiseProductsDataModel>
    implements $CategoryWiseProductsDataModelCopyWith<$Res> {
  _$CategoryWiseProductsDataModelCopyWithImpl(this._value, this._then);

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
              as CategoryWiseProductsInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryWiseProductsInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CategoryWiseProductsInnerDataModelCopyWith<$Res>(_value.data!,
        (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryWiseProductsDataModelImplCopyWith<$Res>
    implements $CategoryWiseProductsDataModelCopyWith<$Res> {
  factory _$$CategoryWiseProductsDataModelImplCopyWith(
          _$CategoryWiseProductsDataModelImpl value,
          $Res Function(_$CategoryWiseProductsDataModelImpl) then) =
      __$$CategoryWiseProductsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CategoryWiseProductsInnerDataModel? data});

  @override
  $CategoryWiseProductsInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoryWiseProductsDataModelImplCopyWithImpl<$Res>
    extends _$CategoryWiseProductsDataModelCopyWithImpl<$Res,
        _$CategoryWiseProductsDataModelImpl>
    implements _$$CategoryWiseProductsDataModelImplCopyWith<$Res> {
  __$$CategoryWiseProductsDataModelImplCopyWithImpl(
      _$CategoryWiseProductsDataModelImpl _value,
      $Res Function(_$CategoryWiseProductsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CategoryWiseProductsDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CategoryWiseProductsInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CategoryWiseProductsDataModelImpl
    implements _CategoryWiseProductsDataModel {
  const _$CategoryWiseProductsDataModelImpl({this.data});

  factory _$CategoryWiseProductsDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoryWiseProductsDataModelImplFromJson(json);

  @override
  final CategoryWiseProductsInnerDataModel? data;

  @override
  String toString() {
    return 'CategoryWiseProductsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWiseProductsDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWiseProductsDataModelImplCopyWith<
          _$CategoryWiseProductsDataModelImpl>
      get copyWith => __$$CategoryWiseProductsDataModelImplCopyWithImpl<
          _$CategoryWiseProductsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWiseProductsDataModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryWiseProductsDataModel
    implements CategoryWiseProductsDataModel {
  const factory _CategoryWiseProductsDataModel(
          {final CategoryWiseProductsInnerDataModel? data}) =
      _$CategoryWiseProductsDataModelImpl;

  factory _CategoryWiseProductsDataModel.fromJson(Map<String, dynamic> json) =
      _$CategoryWiseProductsDataModelImpl.fromJson;

  @override
  CategoryWiseProductsInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWiseProductsDataModelImplCopyWith<
          _$CategoryWiseProductsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CategoryWiseProductsInnerDataModel _$CategoryWiseProductsInnerDataModelFromJson(
    Map<String, dynamic> json) {
  return _CategoryWiseProductsInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryWiseProductsInnerDataModel {
  BrandDetailsProductsModel? get products => throw _privateConstructorUsedError;
  CategoryItemModel? get category => throw _privateConstructorUsedError;
  List<CategoryModel>? get filteredCategories =>
      throw _privateConstructorUsedError;
  List<BrandListModel>? get brand_list => throw _privateConstructorUsedError;
  List<dynamic>? get colorList => throw _privateConstructorUsedError;
  List<dynamic>? get grouping_catlist => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryWiseProductsInnerDataModelCopyWith<
          CategoryWiseProductsInnerDataModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWiseProductsInnerDataModelCopyWith<$Res> {
  factory $CategoryWiseProductsInnerDataModelCopyWith(
          CategoryWiseProductsInnerDataModel value,
          $Res Function(CategoryWiseProductsInnerDataModel) then) =
      _$CategoryWiseProductsInnerDataModelCopyWithImpl<$Res,
          CategoryWiseProductsInnerDataModel>;
  @useResult
  $Res call(
      {BrandDetailsProductsModel? products,
      CategoryItemModel? category,
      List<CategoryModel>? filteredCategories,
      List<BrandListModel>? brand_list,
      List<dynamic>? colorList,
      List<dynamic>? grouping_catlist});

  $BrandDetailsProductsModelCopyWith<$Res>? get products;
  $CategoryItemModelCopyWith<$Res>? get category;
}

/// @nodoc
class _$CategoryWiseProductsInnerDataModelCopyWithImpl<$Res,
        $Val extends CategoryWiseProductsInnerDataModel>
    implements $CategoryWiseProductsInnerDataModelCopyWith<$Res> {
  _$CategoryWiseProductsInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? category = freezed,
    Object? filteredCategories = freezed,
    Object? brand_list = freezed,
    Object? colorList = freezed,
    Object? grouping_catlist = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BrandDetailsProductsModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryItemModel?,
      filteredCategories: freezed == filteredCategories
          ? _value.filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      brand_list: freezed == brand_list
          ? _value.brand_list
          : brand_list // ignore: cast_nullable_to_non_nullable
              as List<BrandListModel>?,
      colorList: freezed == colorList
          ? _value.colorList
          : colorList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      grouping_catlist: freezed == grouping_catlist
          ? _value.grouping_catlist
          : grouping_catlist // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
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
  $CategoryItemModelCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryItemModelCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryWiseProductsInnerDataModelImplCopyWith<$Res>
    implements $CategoryWiseProductsInnerDataModelCopyWith<$Res> {
  factory _$$CategoryWiseProductsInnerDataModelImplCopyWith(
          _$CategoryWiseProductsInnerDataModelImpl value,
          $Res Function(_$CategoryWiseProductsInnerDataModelImpl) then) =
      __$$CategoryWiseProductsInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BrandDetailsProductsModel? products,
      CategoryItemModel? category,
      List<CategoryModel>? filteredCategories,
      List<BrandListModel>? brand_list,
      List<dynamic>? colorList,
      List<dynamic>? grouping_catlist});

  @override
  $BrandDetailsProductsModelCopyWith<$Res>? get products;
  @override
  $CategoryItemModelCopyWith<$Res>? get category;
}

/// @nodoc
class __$$CategoryWiseProductsInnerDataModelImplCopyWithImpl<$Res>
    extends _$CategoryWiseProductsInnerDataModelCopyWithImpl<$Res,
        _$CategoryWiseProductsInnerDataModelImpl>
    implements _$$CategoryWiseProductsInnerDataModelImplCopyWith<$Res> {
  __$$CategoryWiseProductsInnerDataModelImplCopyWithImpl(
      _$CategoryWiseProductsInnerDataModelImpl _value,
      $Res Function(_$CategoryWiseProductsInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? category = freezed,
    Object? filteredCategories = freezed,
    Object? brand_list = freezed,
    Object? colorList = freezed,
    Object? grouping_catlist = freezed,
  }) {
    return _then(_$CategoryWiseProductsInnerDataModelImpl(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as BrandDetailsProductsModel?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as CategoryItemModel?,
      filteredCategories: freezed == filteredCategories
          ? _value._filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoryModel>?,
      brand_list: freezed == brand_list
          ? _value._brand_list
          : brand_list // ignore: cast_nullable_to_non_nullable
              as List<BrandListModel>?,
      colorList: freezed == colorList
          ? _value._colorList
          : colorList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      grouping_catlist: freezed == grouping_catlist
          ? _value._grouping_catlist
          : grouping_catlist // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$CategoryWiseProductsInnerDataModelImpl
    implements _CategoryWiseProductsInnerDataModel {
  const _$CategoryWiseProductsInnerDataModelImpl(
      {this.products,
      this.category,
      final List<CategoryModel>? filteredCategories,
      final List<BrandListModel>? brand_list,
      final List<dynamic>? colorList,
      final List<dynamic>? grouping_catlist})
      : _filteredCategories = filteredCategories,
        _brand_list = brand_list,
        _colorList = colorList,
        _grouping_catlist = grouping_catlist;

  factory _$CategoryWiseProductsInnerDataModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CategoryWiseProductsInnerDataModelImplFromJson(json);

  @override
  final BrandDetailsProductsModel? products;
  @override
  final CategoryItemModel? category;
  final List<CategoryModel>? _filteredCategories;
  @override
  List<CategoryModel>? get filteredCategories {
    final value = _filteredCategories;
    if (value == null) return null;
    if (_filteredCategories is EqualUnmodifiableListView)
      return _filteredCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<BrandListModel>? _brand_list;
  @override
  List<BrandListModel>? get brand_list {
    final value = _brand_list;
    if (value == null) return null;
    if (_brand_list is EqualUnmodifiableListView) return _brand_list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _colorList;
  @override
  List<dynamic>? get colorList {
    final value = _colorList;
    if (value == null) return null;
    if (_colorList is EqualUnmodifiableListView) return _colorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _grouping_catlist;
  @override
  List<dynamic>? get grouping_catlist {
    final value = _grouping_catlist;
    if (value == null) return null;
    if (_grouping_catlist is EqualUnmodifiableListView)
      return _grouping_catlist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoryWiseProductsInnerDataModel(products: $products, category: $category, filteredCategories: $filteredCategories, brand_list: $brand_list, colorList: $colorList, grouping_catlist: $grouping_catlist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWiseProductsInnerDataModelImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality()
                .equals(other._filteredCategories, _filteredCategories) &&
            const DeepCollectionEquality()
                .equals(other._brand_list, _brand_list) &&
            const DeepCollectionEquality()
                .equals(other._colorList, _colorList) &&
            const DeepCollectionEquality()
                .equals(other._grouping_catlist, _grouping_catlist));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      products,
      category,
      const DeepCollectionEquality().hash(_filteredCategories),
      const DeepCollectionEquality().hash(_brand_list),
      const DeepCollectionEquality().hash(_colorList),
      const DeepCollectionEquality().hash(_grouping_catlist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWiseProductsInnerDataModelImplCopyWith<
          _$CategoryWiseProductsInnerDataModelImpl>
      get copyWith => __$$CategoryWiseProductsInnerDataModelImplCopyWithImpl<
          _$CategoryWiseProductsInnerDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWiseProductsInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryWiseProductsInnerDataModel
    implements CategoryWiseProductsInnerDataModel {
  const factory _CategoryWiseProductsInnerDataModel(
          {final BrandDetailsProductsModel? products,
          final CategoryItemModel? category,
          final List<CategoryModel>? filteredCategories,
          final List<BrandListModel>? brand_list,
          final List<dynamic>? colorList,
          final List<dynamic>? grouping_catlist}) =
      _$CategoryWiseProductsInnerDataModelImpl;

  factory _CategoryWiseProductsInnerDataModel.fromJson(
          Map<String, dynamic> json) =
      _$CategoryWiseProductsInnerDataModelImpl.fromJson;

  @override
  BrandDetailsProductsModel? get products;
  @override
  CategoryItemModel? get category;
  @override
  List<CategoryModel>? get filteredCategories;
  @override
  List<BrandListModel>? get brand_list;
  @override
  List<dynamic>? get colorList;
  @override
  List<dynamic>? get grouping_catlist;
  @override
  @JsonKey(ignore: true)
  _$$CategoryWiseProductsInnerDataModelImplCopyWith<
          _$CategoryWiseProductsInnerDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandListModel _$BrandListModelFromJson(Map<String, dynamic> json) {
  return _BrandListModel.fromJson(json);
}

/// @nodoc
mixin _$BrandListModel {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandListModelCopyWith<BrandListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandListModelCopyWith<$Res> {
  factory $BrandListModelCopyWith(
          BrandListModel value, $Res Function(BrandListModel) then) =
      _$BrandListModelCopyWithImpl<$Res, BrandListModel>;
  @useResult
  $Res call({String? name, int? id, String? image, String? slug});
}

/// @nodoc
class _$BrandListModelCopyWithImpl<$Res, $Val extends BrandListModel>
    implements $BrandListModelCopyWith<$Res> {
  _$BrandListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandListModelImplCopyWith<$Res>
    implements $BrandListModelCopyWith<$Res> {
  factory _$$BrandListModelImplCopyWith(_$BrandListModelImpl value,
          $Res Function(_$BrandListModelImpl) then) =
      __$$BrandListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id, String? image, String? slug});
}

/// @nodoc
class __$$BrandListModelImplCopyWithImpl<$Res>
    extends _$BrandListModelCopyWithImpl<$Res, _$BrandListModelImpl>
    implements _$$BrandListModelImplCopyWith<$Res> {
  __$$BrandListModelImplCopyWithImpl(
      _$BrandListModelImpl _value, $Res Function(_$BrandListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$BrandListModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$BrandListModelImpl implements _BrandListModel {
  const _$BrandListModelImpl({this.name, this.id, this.image, this.slug});

  factory _$BrandListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandListModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'BrandListModel(name: $name, id: $id, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandListModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandListModelImplCopyWith<_$BrandListModelImpl> get copyWith =>
      __$$BrandListModelImplCopyWithImpl<_$BrandListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandListModelImplToJson(
      this,
    );
  }
}

abstract class _BrandListModel implements BrandListModel {
  const factory _BrandListModel(
      {final String? name,
      final int? id,
      final String? image,
      final String? slug}) = _$BrandListModelImpl;

  factory _BrandListModel.fromJson(Map<String, dynamic> json) =
      _$BrandListModelImpl.fromJson;

  @override
  String? get name;
  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$BrandListModelImplCopyWith<_$BrandListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
