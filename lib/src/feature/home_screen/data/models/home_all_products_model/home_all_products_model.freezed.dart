// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_all_products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeAllProductsModel _$HomeAllProductsModelFromJson(Map<String, dynamic> json) {
  return _HomeAllProductsModel.fromJson(json);
}

/// @nodoc
mixin _$HomeAllProductsModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HomeAllProductsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeAllProductsModelCopyWith<HomeAllProductsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAllProductsModelCopyWith<$Res> {
  factory $HomeAllProductsModelCopyWith(HomeAllProductsModel value,
          $Res Function(HomeAllProductsModel) then) =
      _$HomeAllProductsModelCopyWithImpl<$Res, HomeAllProductsModel>;
  @useResult
  $Res call({int? code, String? message, HomeAllProductsDataModel? data});

  $HomeAllProductsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeAllProductsModelCopyWithImpl<$Res,
        $Val extends HomeAllProductsModel>
    implements $HomeAllProductsModelCopyWith<$Res> {
  _$HomeAllProductsModelCopyWithImpl(this._value, this._then);

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
              as HomeAllProductsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeAllProductsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeAllProductsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeAllProductsModelImplCopyWith<$Res>
    implements $HomeAllProductsModelCopyWith<$Res> {
  factory _$$HomeAllProductsModelImplCopyWith(_$HomeAllProductsModelImpl value,
          $Res Function(_$HomeAllProductsModelImpl) then) =
      __$$HomeAllProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, HomeAllProductsDataModel? data});

  @override
  $HomeAllProductsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HomeAllProductsModelImplCopyWithImpl<$Res>
    extends _$HomeAllProductsModelCopyWithImpl<$Res, _$HomeAllProductsModelImpl>
    implements _$$HomeAllProductsModelImplCopyWith<$Res> {
  __$$HomeAllProductsModelImplCopyWithImpl(_$HomeAllProductsModelImpl _value,
      $Res Function(_$HomeAllProductsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HomeAllProductsModelImpl(
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
              as HomeAllProductsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HomeAllProductsModelImpl implements _HomeAllProductsModel {
  const _$HomeAllProductsModelImpl({this.code, this.message, this.data});

  factory _$HomeAllProductsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeAllProductsModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final HomeAllProductsDataModel? data;

  @override
  String toString() {
    return 'HomeAllProductsModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAllProductsModelImpl &&
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
  _$$HomeAllProductsModelImplCopyWith<_$HomeAllProductsModelImpl>
      get copyWith =>
          __$$HomeAllProductsModelImplCopyWithImpl<_$HomeAllProductsModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeAllProductsModelImplToJson(
      this,
    );
  }
}

abstract class _HomeAllProductsModel implements HomeAllProductsModel {
  const factory _HomeAllProductsModel(
      {final int? code,
      final String? message,
      final HomeAllProductsDataModel? data}) = _$HomeAllProductsModelImpl;

  factory _HomeAllProductsModel.fromJson(Map<String, dynamic> json) =
      _$HomeAllProductsModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  HomeAllProductsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeAllProductsModelImplCopyWith<_$HomeAllProductsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HomeAllProductsDataModel _$HomeAllProductsDataModelFromJson(
    Map<String, dynamic> json) {
  return _HomeAllProductsDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeAllProductsDataModel {
  HomeAllProductsDataProductsModel? get products =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeAllProductsDataModelCopyWith<HomeAllProductsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAllProductsDataModelCopyWith<$Res> {
  factory $HomeAllProductsDataModelCopyWith(HomeAllProductsDataModel value,
          $Res Function(HomeAllProductsDataModel) then) =
      _$HomeAllProductsDataModelCopyWithImpl<$Res, HomeAllProductsDataModel>;
  @useResult
  $Res call({HomeAllProductsDataProductsModel? products});

  $HomeAllProductsDataProductsModelCopyWith<$Res>? get products;
}

/// @nodoc
class _$HomeAllProductsDataModelCopyWithImpl<$Res,
        $Val extends HomeAllProductsDataModel>
    implements $HomeAllProductsDataModelCopyWith<$Res> {
  _$HomeAllProductsDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as HomeAllProductsDataProductsModel?,
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
abstract class _$$HomeAllProductsDataModelImplCopyWith<$Res>
    implements $HomeAllProductsDataModelCopyWith<$Res> {
  factory _$$HomeAllProductsDataModelImplCopyWith(
          _$HomeAllProductsDataModelImpl value,
          $Res Function(_$HomeAllProductsDataModelImpl) then) =
      __$$HomeAllProductsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeAllProductsDataProductsModel? products});

  @override
  $HomeAllProductsDataProductsModelCopyWith<$Res>? get products;
}

/// @nodoc
class __$$HomeAllProductsDataModelImplCopyWithImpl<$Res>
    extends _$HomeAllProductsDataModelCopyWithImpl<$Res,
        _$HomeAllProductsDataModelImpl>
    implements _$$HomeAllProductsDataModelImplCopyWith<$Res> {
  __$$HomeAllProductsDataModelImplCopyWithImpl(
      _$HomeAllProductsDataModelImpl _value,
      $Res Function(_$HomeAllProductsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$HomeAllProductsDataModelImpl(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as HomeAllProductsDataProductsModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HomeAllProductsDataModelImpl implements _HomeAllProductsDataModel {
  const _$HomeAllProductsDataModelImpl({this.products});

  factory _$HomeAllProductsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeAllProductsDataModelImplFromJson(json);

  @override
  final HomeAllProductsDataProductsModel? products;

  @override
  String toString() {
    return 'HomeAllProductsDataModel(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAllProductsDataModelImpl &&
            (identical(other.products, products) ||
                other.products == products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, products);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeAllProductsDataModelImplCopyWith<_$HomeAllProductsDataModelImpl>
      get copyWith => __$$HomeAllProductsDataModelImplCopyWithImpl<
          _$HomeAllProductsDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeAllProductsDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeAllProductsDataModel implements HomeAllProductsDataModel {
  const factory _HomeAllProductsDataModel(
          {final HomeAllProductsDataProductsModel? products}) =
      _$HomeAllProductsDataModelImpl;

  factory _HomeAllProductsDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeAllProductsDataModelImpl.fromJson;

  @override
  HomeAllProductsDataProductsModel? get products;
  @override
  @JsonKey(ignore: true)
  _$$HomeAllProductsDataModelImplCopyWith<_$HomeAllProductsDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HomeAllProductsDataProductsModel _$HomeAllProductsDataProductsModelFromJson(
    Map<String, dynamic> json) {
  return _HomeAllProductsDataProductsModel.fromJson(json);
}

/// @nodoc
mixin _$HomeAllProductsDataProductsModel {
  int? get current_page => throw _privateConstructorUsedError;
  List<ProductModel>? get data => throw _privateConstructorUsedError;
  String? get first_page_url => throw _privateConstructorUsedError;
  int? get from => throw _privateConstructorUsedError;
  int? get last_page => throw _privateConstructorUsedError;
  String? get last_page_url => throw _privateConstructorUsedError;
  List<RenderViewFrontLinkModel>? get links =>
      throw _privateConstructorUsedError;
  String? get next_page_url => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  int? get per_page => throw _privateConstructorUsedError;
  String? get prev_page_url => throw _privateConstructorUsedError;
  int? get to => throw _privateConstructorUsedError;
  int? get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeAllProductsDataProductsModelCopyWith<HomeAllProductsDataProductsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeAllProductsDataProductsModelCopyWith<$Res> {
  factory $HomeAllProductsDataProductsModelCopyWith(
          HomeAllProductsDataProductsModel value,
          $Res Function(HomeAllProductsDataProductsModel) then) =
      _$HomeAllProductsDataProductsModelCopyWithImpl<$Res,
          HomeAllProductsDataProductsModel>;
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<RenderViewFrontLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class _$HomeAllProductsDataProductsModelCopyWithImpl<$Res,
        $Val extends HomeAllProductsDataProductsModel>
    implements $HomeAllProductsDataProductsModelCopyWith<$Res> {
  _$HomeAllProductsDataProductsModelCopyWithImpl(this._value, this._then);

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
              as List<RenderViewFrontLinkModel>?,
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
abstract class _$$HomeAllProductsDataProductsModelImplCopyWith<$Res>
    implements $HomeAllProductsDataProductsModelCopyWith<$Res> {
  factory _$$HomeAllProductsDataProductsModelImplCopyWith(
          _$HomeAllProductsDataProductsModelImpl value,
          $Res Function(_$HomeAllProductsDataProductsModelImpl) then) =
      __$$HomeAllProductsDataProductsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? current_page,
      List<ProductModel>? data,
      String? first_page_url,
      int? from,
      int? last_page,
      String? last_page_url,
      List<RenderViewFrontLinkModel>? links,
      String? next_page_url,
      String? path,
      int? per_page,
      String? prev_page_url,
      int? to,
      int? total});
}

/// @nodoc
class __$$HomeAllProductsDataProductsModelImplCopyWithImpl<$Res>
    extends _$HomeAllProductsDataProductsModelCopyWithImpl<$Res,
        _$HomeAllProductsDataProductsModelImpl>
    implements _$$HomeAllProductsDataProductsModelImplCopyWith<$Res> {
  __$$HomeAllProductsDataProductsModelImplCopyWithImpl(
      _$HomeAllProductsDataProductsModelImpl _value,
      $Res Function(_$HomeAllProductsDataProductsModelImpl) _then)
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
    return _then(_$HomeAllProductsDataProductsModelImpl(
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
              as List<RenderViewFrontLinkModel>?,
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

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HomeAllProductsDataProductsModelImpl
    implements _HomeAllProductsDataProductsModel {
  const _$HomeAllProductsDataProductsModelImpl(
      {this.current_page,
      final List<ProductModel>? data,
      this.first_page_url,
      this.from,
      this.last_page,
      this.last_page_url,
      final List<RenderViewFrontLinkModel>? links,
      this.next_page_url,
      this.path,
      this.per_page,
      this.prev_page_url,
      this.to,
      this.total})
      : _data = data,
        _links = links;

  factory _$HomeAllProductsDataProductsModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$HomeAllProductsDataProductsModelImplFromJson(json);

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
  final List<RenderViewFrontLinkModel>? _links;
  @override
  List<RenderViewFrontLinkModel>? get links {
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
    return 'HomeAllProductsDataProductsModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, links: $links, next_page_url: $next_page_url, path: $path, per_page: $per_page, prev_page_url: $prev_page_url, to: $to, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeAllProductsDataProductsModelImpl &&
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
  _$$HomeAllProductsDataProductsModelImplCopyWith<
          _$HomeAllProductsDataProductsModelImpl>
      get copyWith => __$$HomeAllProductsDataProductsModelImplCopyWithImpl<
          _$HomeAllProductsDataProductsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeAllProductsDataProductsModelImplToJson(
      this,
    );
  }
}

abstract class _HomeAllProductsDataProductsModel
    implements HomeAllProductsDataProductsModel {
  const factory _HomeAllProductsDataProductsModel(
      {final int? current_page,
      final List<ProductModel>? data,
      final String? first_page_url,
      final int? from,
      final int? last_page,
      final String? last_page_url,
      final List<RenderViewFrontLinkModel>? links,
      final String? next_page_url,
      final String? path,
      final int? per_page,
      final String? prev_page_url,
      final int? to,
      final int? total}) = _$HomeAllProductsDataProductsModelImpl;

  factory _HomeAllProductsDataProductsModel.fromJson(
          Map<String, dynamic> json) =
      _$HomeAllProductsDataProductsModelImpl.fromJson;

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
  List<RenderViewFrontLinkModel>? get links;
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
  _$$HomeAllProductsDataProductsModelImplCopyWith<
          _$HomeAllProductsDataProductsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
