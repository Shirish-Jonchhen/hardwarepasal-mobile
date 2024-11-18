// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeInnerDataModel _$HomeInnerDataModelFromJson(Map<String, dynamic> json) {
  return _HomeInnerDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeInnerDataModel {
  BannerModel? get banner => throw _privateConstructorUsedError;
  RenderViewFrontModel? get render_view_front =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'featuredProducts1')
  List<ProductModel>? get featuredProducts1 =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'featuredProducts2')
  List<ProductModel>? get featuredProducts2 =>
      throw _privateConstructorUsedError;
  List<CategoriesHomeModel>? get categories_home =>
      throw _privateConstructorUsedError;
  List<ProductModel>? get recently_view_product =>
      throw _privateConstructorUsedError;
  ClearanceSaleModel? get clearance_sale =>
      throw _privateConstructorUsedError; // AdsModel? ads,
// List<AdsDataModel>? ads,
  List<AdsDataModel>? get noticead => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeInnerDataModelCopyWith<HomeInnerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeInnerDataModelCopyWith<$Res> {
  factory $HomeInnerDataModelCopyWith(
          HomeInnerDataModel value, $Res Function(HomeInnerDataModel) then) =
      _$HomeInnerDataModelCopyWithImpl<$Res, HomeInnerDataModel>;
  @useResult
  $Res call(
      {BannerModel? banner,
      RenderViewFrontModel? render_view_front,
      @JsonKey(name: 'featuredProducts1') List<ProductModel>? featuredProducts1,
      @JsonKey(name: 'featuredProducts2') List<ProductModel>? featuredProducts2,
      List<CategoriesHomeModel>? categories_home,
      List<ProductModel>? recently_view_product,
      ClearanceSaleModel? clearance_sale,
      List<AdsDataModel>? noticead});

  $BannerModelCopyWith<$Res>? get banner;
  $RenderViewFrontModelCopyWith<$Res>? get render_view_front;
  $ClearanceSaleModelCopyWith<$Res>? get clearance_sale;
}

/// @nodoc
class _$HomeInnerDataModelCopyWithImpl<$Res, $Val extends HomeInnerDataModel>
    implements $HomeInnerDataModelCopyWith<$Res> {
  _$HomeInnerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? render_view_front = freezed,
    Object? featuredProducts1 = freezed,
    Object? featuredProducts2 = freezed,
    Object? categories_home = freezed,
    Object? recently_view_product = freezed,
    Object? clearance_sale = freezed,
    Object? noticead = freezed,
  }) {
    return _then(_value.copyWith(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as BannerModel?,
      render_view_front: freezed == render_view_front
          ? _value.render_view_front
          : render_view_front // ignore: cast_nullable_to_non_nullable
              as RenderViewFrontModel?,
      featuredProducts1: freezed == featuredProducts1
          ? _value.featuredProducts1
          : featuredProducts1 // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      featuredProducts2: freezed == featuredProducts2
          ? _value.featuredProducts2
          : featuredProducts2 // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      categories_home: freezed == categories_home
          ? _value.categories_home
          : categories_home // ignore: cast_nullable_to_non_nullable
              as List<CategoriesHomeModel>?,
      recently_view_product: freezed == recently_view_product
          ? _value.recently_view_product
          : recently_view_product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      clearance_sale: freezed == clearance_sale
          ? _value.clearance_sale
          : clearance_sale // ignore: cast_nullable_to_non_nullable
              as ClearanceSaleModel?,
      noticead: freezed == noticead
          ? _value.noticead
          : noticead // ignore: cast_nullable_to_non_nullable
              as List<AdsDataModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BannerModelCopyWith<$Res>? get banner {
    if (_value.banner == null) {
      return null;
    }

    return $BannerModelCopyWith<$Res>(_value.banner!, (value) {
      return _then(_value.copyWith(banner: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RenderViewFrontModelCopyWith<$Res>? get render_view_front {
    if (_value.render_view_front == null) {
      return null;
    }

    return $RenderViewFrontModelCopyWith<$Res>(_value.render_view_front!,
        (value) {
      return _then(_value.copyWith(render_view_front: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ClearanceSaleModelCopyWith<$Res>? get clearance_sale {
    if (_value.clearance_sale == null) {
      return null;
    }

    return $ClearanceSaleModelCopyWith<$Res>(_value.clearance_sale!, (value) {
      return _then(_value.copyWith(clearance_sale: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeInnerDataModelImplCopyWith<$Res>
    implements $HomeInnerDataModelCopyWith<$Res> {
  factory _$$HomeInnerDataModelImplCopyWith(_$HomeInnerDataModelImpl value,
          $Res Function(_$HomeInnerDataModelImpl) then) =
      __$$HomeInnerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BannerModel? banner,
      RenderViewFrontModel? render_view_front,
      @JsonKey(name: 'featuredProducts1') List<ProductModel>? featuredProducts1,
      @JsonKey(name: 'featuredProducts2') List<ProductModel>? featuredProducts2,
      List<CategoriesHomeModel>? categories_home,
      List<ProductModel>? recently_view_product,
      ClearanceSaleModel? clearance_sale,
      List<AdsDataModel>? noticead});

  @override
  $BannerModelCopyWith<$Res>? get banner;
  @override
  $RenderViewFrontModelCopyWith<$Res>? get render_view_front;
  @override
  $ClearanceSaleModelCopyWith<$Res>? get clearance_sale;
}

/// @nodoc
class __$$HomeInnerDataModelImplCopyWithImpl<$Res>
    extends _$HomeInnerDataModelCopyWithImpl<$Res, _$HomeInnerDataModelImpl>
    implements _$$HomeInnerDataModelImplCopyWith<$Res> {
  __$$HomeInnerDataModelImplCopyWithImpl(_$HomeInnerDataModelImpl _value,
      $Res Function(_$HomeInnerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? banner = freezed,
    Object? render_view_front = freezed,
    Object? featuredProducts1 = freezed,
    Object? featuredProducts2 = freezed,
    Object? categories_home = freezed,
    Object? recently_view_product = freezed,
    Object? clearance_sale = freezed,
    Object? noticead = freezed,
  }) {
    return _then(_$HomeInnerDataModelImpl(
      banner: freezed == banner
          ? _value.banner
          : banner // ignore: cast_nullable_to_non_nullable
              as BannerModel?,
      render_view_front: freezed == render_view_front
          ? _value.render_view_front
          : render_view_front // ignore: cast_nullable_to_non_nullable
              as RenderViewFrontModel?,
      featuredProducts1: freezed == featuredProducts1
          ? _value._featuredProducts1
          : featuredProducts1 // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      featuredProducts2: freezed == featuredProducts2
          ? _value._featuredProducts2
          : featuredProducts2 // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      categories_home: freezed == categories_home
          ? _value._categories_home
          : categories_home // ignore: cast_nullable_to_non_nullable
              as List<CategoriesHomeModel>?,
      recently_view_product: freezed == recently_view_product
          ? _value._recently_view_product
          : recently_view_product // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>?,
      clearance_sale: freezed == clearance_sale
          ? _value.clearance_sale
          : clearance_sale // ignore: cast_nullable_to_non_nullable
              as ClearanceSaleModel?,
      noticead: freezed == noticead
          ? _value._noticead
          : noticead // ignore: cast_nullable_to_non_nullable
              as List<AdsDataModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HomeInnerDataModelImpl implements _HomeInnerDataModel {
  const _$HomeInnerDataModelImpl(
      {this.banner,
      this.render_view_front,
      @JsonKey(name: 'featuredProducts1')
      final List<ProductModel>? featuredProducts1,
      @JsonKey(name: 'featuredProducts2')
      final List<ProductModel>? featuredProducts2,
      final List<CategoriesHomeModel>? categories_home,
      final List<ProductModel>? recently_view_product,
      this.clearance_sale,
      final List<AdsDataModel>? noticead})
      : _featuredProducts1 = featuredProducts1,
        _featuredProducts2 = featuredProducts2,
        _categories_home = categories_home,
        _recently_view_product = recently_view_product,
        _noticead = noticead;

  factory _$HomeInnerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeInnerDataModelImplFromJson(json);

  @override
  final BannerModel? banner;
  @override
  final RenderViewFrontModel? render_view_front;
  final List<ProductModel>? _featuredProducts1;
  @override
  @JsonKey(name: 'featuredProducts1')
  List<ProductModel>? get featuredProducts1 {
    final value = _featuredProducts1;
    if (value == null) return null;
    if (_featuredProducts1 is EqualUnmodifiableListView)
      return _featuredProducts1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _featuredProducts2;
  @override
  @JsonKey(name: 'featuredProducts2')
  List<ProductModel>? get featuredProducts2 {
    final value = _featuredProducts2;
    if (value == null) return null;
    if (_featuredProducts2 is EqualUnmodifiableListView)
      return _featuredProducts2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CategoriesHomeModel>? _categories_home;
  @override
  List<CategoriesHomeModel>? get categories_home {
    final value = _categories_home;
    if (value == null) return null;
    if (_categories_home is EqualUnmodifiableListView) return _categories_home;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ProductModel>? _recently_view_product;
  @override
  List<ProductModel>? get recently_view_product {
    final value = _recently_view_product;
    if (value == null) return null;
    if (_recently_view_product is EqualUnmodifiableListView)
      return _recently_view_product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ClearanceSaleModel? clearance_sale;
// AdsModel? ads,
// List<AdsDataModel>? ads,
  final List<AdsDataModel>? _noticead;
// AdsModel? ads,
// List<AdsDataModel>? ads,
  @override
  List<AdsDataModel>? get noticead {
    final value = _noticead;
    if (value == null) return null;
    if (_noticead is EqualUnmodifiableListView) return _noticead;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HomeInnerDataModel(banner: $banner, render_view_front: $render_view_front, featuredProducts1: $featuredProducts1, featuredProducts2: $featuredProducts2, categories_home: $categories_home, recently_view_product: $recently_view_product, clearance_sale: $clearance_sale, noticead: $noticead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeInnerDataModelImpl &&
            (identical(other.banner, banner) || other.banner == banner) &&
            (identical(other.render_view_front, render_view_front) ||
                other.render_view_front == render_view_front) &&
            const DeepCollectionEquality()
                .equals(other._featuredProducts1, _featuredProducts1) &&
            const DeepCollectionEquality()
                .equals(other._featuredProducts2, _featuredProducts2) &&
            const DeepCollectionEquality()
                .equals(other._categories_home, _categories_home) &&
            const DeepCollectionEquality()
                .equals(other._recently_view_product, _recently_view_product) &&
            (identical(other.clearance_sale, clearance_sale) ||
                other.clearance_sale == clearance_sale) &&
            const DeepCollectionEquality().equals(other._noticead, _noticead));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      banner,
      render_view_front,
      const DeepCollectionEquality().hash(_featuredProducts1),
      const DeepCollectionEquality().hash(_featuredProducts2),
      const DeepCollectionEquality().hash(_categories_home),
      const DeepCollectionEquality().hash(_recently_view_product),
      clearance_sale,
      const DeepCollectionEquality().hash(_noticead));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeInnerDataModelImplCopyWith<_$HomeInnerDataModelImpl> get copyWith =>
      __$$HomeInnerDataModelImplCopyWithImpl<_$HomeInnerDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeInnerDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeInnerDataModel implements HomeInnerDataModel {
  const factory _HomeInnerDataModel(
      {final BannerModel? banner,
      final RenderViewFrontModel? render_view_front,
      @JsonKey(name: 'featuredProducts1')
      final List<ProductModel>? featuredProducts1,
      @JsonKey(name: 'featuredProducts2')
      final List<ProductModel>? featuredProducts2,
      final List<CategoriesHomeModel>? categories_home,
      final List<ProductModel>? recently_view_product,
      final ClearanceSaleModel? clearance_sale,
      final List<AdsDataModel>? noticead}) = _$HomeInnerDataModelImpl;

  factory _HomeInnerDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeInnerDataModelImpl.fromJson;

  @override
  BannerModel? get banner;
  @override
  RenderViewFrontModel? get render_view_front;
  @override
  @JsonKey(name: 'featuredProducts1')
  List<ProductModel>? get featuredProducts1;
  @override
  @JsonKey(name: 'featuredProducts2')
  List<ProductModel>? get featuredProducts2;
  @override
  List<CategoriesHomeModel>? get categories_home;
  @override
  List<ProductModel>? get recently_view_product;
  @override
  ClearanceSaleModel? get clearance_sale;
  @override // AdsModel? ads,
// List<AdsDataModel>? ads,
  List<AdsDataModel>? get noticead;
  @override
  @JsonKey(ignore: true)
  _$$HomeInnerDataModelImplCopyWith<_$HomeInnerDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeDataModel _$HomeDataModelFromJson(Map<String, dynamic> json) {
  return _HomeDataModel.fromJson(json);
}

/// @nodoc
mixin _$HomeDataModel {
  HomeInnerDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeDataModelCopyWith<HomeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeDataModelCopyWith<$Res> {
  factory $HomeDataModelCopyWith(
          HomeDataModel value, $Res Function(HomeDataModel) then) =
      _$HomeDataModelCopyWithImpl<$Res, HomeDataModel>;
  @useResult
  $Res call({HomeInnerDataModel? data});

  $HomeInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeDataModelCopyWithImpl<$Res, $Val extends HomeDataModel>
    implements $HomeDataModelCopyWith<$Res> {
  _$HomeDataModelCopyWithImpl(this._value, this._then);

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
              as HomeInnerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeInnerDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeInnerDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeDataModelImplCopyWith<$Res>
    implements $HomeDataModelCopyWith<$Res> {
  factory _$$HomeDataModelImplCopyWith(
          _$HomeDataModelImpl value, $Res Function(_$HomeDataModelImpl) then) =
      __$$HomeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeInnerDataModel? data});

  @override
  $HomeInnerDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HomeDataModelImplCopyWithImpl<$Res>
    extends _$HomeDataModelCopyWithImpl<$Res, _$HomeDataModelImpl>
    implements _$$HomeDataModelImplCopyWith<$Res> {
  __$$HomeDataModelImplCopyWithImpl(
      _$HomeDataModelImpl _value, $Res Function(_$HomeDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$HomeDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HomeInnerDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HomeDataModelImpl implements _HomeDataModel {
  const _$HomeDataModelImpl({this.data});

  factory _$HomeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeDataModelImplFromJson(json);

  @override
  final HomeInnerDataModel? data;

  @override
  String toString() {
    return 'HomeDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      __$$HomeDataModelImplCopyWithImpl<_$HomeDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeDataModelImplToJson(
      this,
    );
  }
}

abstract class _HomeDataModel implements HomeDataModel {
  const factory _HomeDataModel({final HomeInnerDataModel? data}) =
      _$HomeDataModelImpl;

  factory _HomeDataModel.fromJson(Map<String, dynamic> json) =
      _$HomeDataModelImpl.fromJson;

  @override
  HomeInnerDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeDataModelImplCopyWith<_$HomeDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HomeModel _$HomeModelFromJson(Map<String, dynamic> json) {
  return _HomeModel.fromJson(json);
}

/// @nodoc
mixin _$HomeModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  HomeDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeModelCopyWith<HomeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeModelCopyWith<$Res> {
  factory $HomeModelCopyWith(HomeModel value, $Res Function(HomeModel) then) =
      _$HomeModelCopyWithImpl<$Res, HomeModel>;
  @useResult
  $Res call({int? code, String? message, HomeDataModel? data});

  $HomeDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$HomeModelCopyWithImpl<$Res, $Val extends HomeModel>
    implements $HomeModelCopyWith<$Res> {
  _$HomeModelCopyWithImpl(this._value, this._then);

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
              as HomeDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HomeDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $HomeDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeModelImplCopyWith<$Res>
    implements $HomeModelCopyWith<$Res> {
  factory _$$HomeModelImplCopyWith(
          _$HomeModelImpl value, $Res Function(_$HomeModelImpl) then) =
      __$$HomeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, HomeDataModel? data});

  @override
  $HomeDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$HomeModelImplCopyWithImpl<$Res>
    extends _$HomeModelCopyWithImpl<$Res, _$HomeModelImpl>
    implements _$$HomeModelImplCopyWith<$Res> {
  __$$HomeModelImplCopyWithImpl(
      _$HomeModelImpl _value, $Res Function(_$HomeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$HomeModelImpl(
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
              as HomeDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$HomeModelImpl implements _HomeModel {
  const _$HomeModelImpl({this.code, this.message, this.data});

  factory _$HomeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final HomeDataModel? data;

  @override
  String toString() {
    return 'HomeModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeModelImpl &&
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
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      __$$HomeModelImplCopyWithImpl<_$HomeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeModelImplToJson(
      this,
    );
  }
}

abstract class _HomeModel implements HomeModel {
  const factory _HomeModel(
      {final int? code,
      final String? message,
      final HomeDataModel? data}) = _$HomeModelImpl;

  factory _HomeModel.fromJson(Map<String, dynamic> json) =
      _$HomeModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  HomeDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$HomeModelImplCopyWith<_$HomeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
