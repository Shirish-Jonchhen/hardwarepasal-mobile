// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  SearchResultData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
          SearchResult value, $Res Function(SearchResult) then) =
      _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call({int? code, String? message, SearchResultData? data});

  $SearchResultDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

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
              as SearchResultData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchResultDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
          _$SearchResultImpl value, $Res Function(_$SearchResultImpl) then) =
      __$$SearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, SearchResultData? data});

  @override
  $SearchResultDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
      _$SearchResultImpl _value, $Res Function(_$SearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$SearchResultImpl(
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
              as SearchResultData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl({this.code, this.message, this.data});

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final SearchResultData? data;

  @override
  String toString() {
    return 'SearchResult(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
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
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(
      this,
    );
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult(
      {final int? code,
      final String? message,
      final SearchResultData? data}) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  SearchResultData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) {
  return _SearchResultData.fromJson(json);
}

/// @nodoc
mixin _$SearchResultData {
  SearchResultInnerData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultDataCopyWith<SearchResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultDataCopyWith<$Res> {
  factory $SearchResultDataCopyWith(
          SearchResultData value, $Res Function(SearchResultData) then) =
      _$SearchResultDataCopyWithImpl<$Res, SearchResultData>;
  @useResult
  $Res call({SearchResultInnerData? data});

  $SearchResultInnerDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$SearchResultDataCopyWithImpl<$Res, $Val extends SearchResultData>
    implements $SearchResultDataCopyWith<$Res> {
  _$SearchResultDataCopyWithImpl(this._value, this._then);

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
              as SearchResultInnerData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SearchResultInnerDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $SearchResultInnerDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultDataImplCopyWith<$Res>
    implements $SearchResultDataCopyWith<$Res> {
  factory _$$SearchResultDataImplCopyWith(_$SearchResultDataImpl value,
          $Res Function(_$SearchResultDataImpl) then) =
      __$$SearchResultDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SearchResultInnerData? data});

  @override
  $SearchResultInnerDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$SearchResultDataImplCopyWithImpl<$Res>
    extends _$SearchResultDataCopyWithImpl<$Res, _$SearchResultDataImpl>
    implements _$$SearchResultDataImplCopyWith<$Res> {
  __$$SearchResultDataImplCopyWithImpl(_$SearchResultDataImpl _value,
      $Res Function(_$SearchResultDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$SearchResultDataImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SearchResultInnerData?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchResultDataImpl implements _SearchResultData {
  const _$SearchResultDataImpl({this.data});

  factory _$SearchResultDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultDataImplFromJson(json);

  @override
  final SearchResultInnerData? data;

  @override
  String toString() {
    return 'SearchResultData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultDataImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultDataImplCopyWith<_$SearchResultDataImpl> get copyWith =>
      __$$SearchResultDataImplCopyWithImpl<_$SearchResultDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultDataImplToJson(
      this,
    );
  }
}

abstract class _SearchResultData implements SearchResultData {
  const factory _SearchResultData({final SearchResultInnerData? data}) =
      _$SearchResultDataImpl;

  factory _SearchResultData.fromJson(Map<String, dynamic> json) =
      _$SearchResultDataImpl.fromJson;

  @override
  SearchResultInnerData? get data;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultDataImplCopyWith<_$SearchResultDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SearchResultInnerData _$SearchResultInnerDataFromJson(
    Map<String, dynamic> json) {
  return _SearchResultInnerData.fromJson(json);
}

/// @nodoc
mixin _$SearchResultInnerData {
  HomeAllProductsDataProductsModel? get products =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "filteredCategories")
  List<CategoriesHomeSubCategorySubCategoriesModel>? get filteredCategories =>
      throw _privateConstructorUsedError;
  List<CategoriesHomeSubCategorySubCategoriesModel>? get sub_categories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SearchResultInnerDataCopyWith<SearchResultInnerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultInnerDataCopyWith<$Res> {
  factory $SearchResultInnerDataCopyWith(SearchResultInnerData value,
          $Res Function(SearchResultInnerData) then) =
      _$SearchResultInnerDataCopyWithImpl<$Res, SearchResultInnerData>;
  @useResult
  $Res call(
      {HomeAllProductsDataProductsModel? products,
      @JsonKey(name: "filteredCategories")
      List<CategoriesHomeSubCategorySubCategoriesModel>? filteredCategories,
      List<CategoriesHomeSubCategorySubCategoriesModel>? sub_categories});

  $HomeAllProductsDataProductsModelCopyWith<$Res>? get products;
}

/// @nodoc
class _$SearchResultInnerDataCopyWithImpl<$Res,
        $Val extends SearchResultInnerData>
    implements $SearchResultInnerDataCopyWith<$Res> {
  _$SearchResultInnerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? filteredCategories = freezed,
    Object? sub_categories = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as HomeAllProductsDataProductsModel?,
      filteredCategories: freezed == filteredCategories
          ? _value.filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesHomeSubCategorySubCategoriesModel>?,
      sub_categories: freezed == sub_categories
          ? _value.sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesHomeSubCategorySubCategoriesModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeAllProductsDataProductsModelCopyWith<$Res>? get products {
    if (_value.products == null) {
      return null;
    }

    return $HomeAllProductsDataProductsModelCopyWith<$Res>(_value.products!,
        (value) {
      return _then(_value.copyWith(products: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchResultInnerDataImplCopyWith<$Res>
    implements $SearchResultInnerDataCopyWith<$Res> {
  factory _$$SearchResultInnerDataImplCopyWith(
          _$SearchResultInnerDataImpl value,
          $Res Function(_$SearchResultInnerDataImpl) then) =
      __$$SearchResultInnerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HomeAllProductsDataProductsModel? products,
      @JsonKey(name: "filteredCategories")
      List<CategoriesHomeSubCategorySubCategoriesModel>? filteredCategories,
      List<CategoriesHomeSubCategorySubCategoriesModel>? sub_categories});

  @override
  $HomeAllProductsDataProductsModelCopyWith<$Res>? get products;
}

/// @nodoc
class __$$SearchResultInnerDataImplCopyWithImpl<$Res>
    extends _$SearchResultInnerDataCopyWithImpl<$Res,
        _$SearchResultInnerDataImpl>
    implements _$$SearchResultInnerDataImplCopyWith<$Res> {
  __$$SearchResultInnerDataImplCopyWithImpl(_$SearchResultInnerDataImpl _value,
      $Res Function(_$SearchResultInnerDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
    Object? filteredCategories = freezed,
    Object? sub_categories = freezed,
  }) {
    return _then(_$SearchResultInnerDataImpl(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as HomeAllProductsDataProductsModel?,
      filteredCategories: freezed == filteredCategories
          ? _value._filteredCategories
          : filteredCategories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesHomeSubCategorySubCategoriesModel>?,
      sub_categories: freezed == sub_categories
          ? _value._sub_categories
          : sub_categories // ignore: cast_nullable_to_non_nullable
              as List<CategoriesHomeSubCategorySubCategoriesModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$SearchResultInnerDataImpl implements _SearchResultInnerData {
  const _$SearchResultInnerDataImpl(
      {this.products,
      @JsonKey(name: "filteredCategories")
      final List<CategoriesHomeSubCategorySubCategoriesModel>?
          filteredCategories,
      final List<CategoriesHomeSubCategorySubCategoriesModel>? sub_categories})
      : _filteredCategories = filteredCategories,
        _sub_categories = sub_categories;

  factory _$SearchResultInnerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultInnerDataImplFromJson(json);

  @override
  final HomeAllProductsDataProductsModel? products;
  final List<CategoriesHomeSubCategorySubCategoriesModel>? _filteredCategories;
  @override
  @JsonKey(name: "filteredCategories")
  List<CategoriesHomeSubCategorySubCategoriesModel>? get filteredCategories {
    final value = _filteredCategories;
    if (value == null) return null;
    if (_filteredCategories is EqualUnmodifiableListView)
      return _filteredCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoriesHomeSubCategorySubCategoriesModel>? _sub_categories;
  @override
  List<CategoriesHomeSubCategorySubCategoriesModel>? get sub_categories {
    final value = _sub_categories;
    if (value == null) return null;
    if (_sub_categories is EqualUnmodifiableListView) return _sub_categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SearchResultInnerData(products: $products, filteredCategories: $filteredCategories, sub_categories: $sub_categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultInnerDataImpl &&
            (identical(other.products, products) ||
                other.products == products) &&
            const DeepCollectionEquality()
                .equals(other._filteredCategories, _filteredCategories) &&
            const DeepCollectionEquality()
                .equals(other._sub_categories, _sub_categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      products,
      const DeepCollectionEquality().hash(_filteredCategories),
      const DeepCollectionEquality().hash(_sub_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultInnerDataImplCopyWith<_$SearchResultInnerDataImpl>
      get copyWith => __$$SearchResultInnerDataImplCopyWithImpl<
          _$SearchResultInnerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultInnerDataImplToJson(
      this,
    );
  }
}

abstract class _SearchResultInnerData implements SearchResultInnerData {
  const factory _SearchResultInnerData(
      {final HomeAllProductsDataProductsModel? products,
      @JsonKey(name: "filteredCategories")
      final List<CategoriesHomeSubCategorySubCategoriesModel>?
          filteredCategories,
      final List<CategoriesHomeSubCategorySubCategoriesModel>?
          sub_categories}) = _$SearchResultInnerDataImpl;

  factory _SearchResultInnerData.fromJson(Map<String, dynamic> json) =
      _$SearchResultInnerDataImpl.fromJson;

  @override
  HomeAllProductsDataProductsModel? get products;
  @override
  @JsonKey(name: "filteredCategories")
  List<CategoriesHomeSubCategorySubCategoriesModel>? get filteredCategories;
  @override
  List<CategoriesHomeSubCategorySubCategoriesModel>? get sub_categories;
  @override
  @JsonKey(ignore: true)
  _$$SearchResultInnerDataImplCopyWith<_$SearchResultInnerDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
