// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandsCategoryModel _$BrandsCategoryModelFromJson(Map<String, dynamic> json) {
  return _BrandsCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsCategoryModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BrandsCategoryDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsCategoryModelCopyWith<BrandsCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsCategoryModelCopyWith<$Res> {
  factory $BrandsCategoryModelCopyWith(
          BrandsCategoryModel value, $Res Function(BrandsCategoryModel) then) =
      _$BrandsCategoryModelCopyWithImpl<$Res, BrandsCategoryModel>;
  @useResult
  $Res call({int? code, String? message, BrandsCategoryDataModel? data});

  $BrandsCategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrandsCategoryModelCopyWithImpl<$Res, $Val extends BrandsCategoryModel>
    implements $BrandsCategoryModelCopyWith<$Res> {
  _$BrandsCategoryModelCopyWithImpl(this._value, this._then);

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
              as BrandsCategoryDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandsCategoryDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BrandsCategoryDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandsCategoryModelImplCopyWith<$Res>
    implements $BrandsCategoryModelCopyWith<$Res> {
  factory _$$BrandsCategoryModelImplCopyWith(_$BrandsCategoryModelImpl value,
          $Res Function(_$BrandsCategoryModelImpl) then) =
      __$$BrandsCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, BrandsCategoryDataModel? data});

  @override
  $BrandsCategoryDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BrandsCategoryModelImplCopyWithImpl<$Res>
    extends _$BrandsCategoryModelCopyWithImpl<$Res, _$BrandsCategoryModelImpl>
    implements _$$BrandsCategoryModelImplCopyWith<$Res> {
  __$$BrandsCategoryModelImplCopyWithImpl(_$BrandsCategoryModelImpl _value,
      $Res Function(_$BrandsCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BrandsCategoryModelImpl(
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
              as BrandsCategoryDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsCategoryModelImpl implements _BrandsCategoryModel {
  const _$BrandsCategoryModelImpl({this.code, this.message, this.data});

  factory _$BrandsCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsCategoryModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final BrandsCategoryDataModel? data;

  @override
  String toString() {
    return 'BrandsCategoryModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsCategoryModelImpl &&
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
  _$$BrandsCategoryModelImplCopyWith<_$BrandsCategoryModelImpl> get copyWith =>
      __$$BrandsCategoryModelImplCopyWithImpl<_$BrandsCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsCategoryModel implements BrandsCategoryModel {
  const factory _BrandsCategoryModel(
      {final int? code,
      final String? message,
      final BrandsCategoryDataModel? data}) = _$BrandsCategoryModelImpl;

  factory _BrandsCategoryModel.fromJson(Map<String, dynamic> json) =
      _$BrandsCategoryModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  BrandsCategoryDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandsCategoryModelImplCopyWith<_$BrandsCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandsCategoryDataModel _$BrandsCategoryDataModelFromJson(
    Map<String, dynamic> json) {
  return _BrandsCategoryDataModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsCategoryDataModel {
  List<BrandsItemCategoryModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsCategoryDataModelCopyWith<BrandsCategoryDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsCategoryDataModelCopyWith<$Res> {
  factory $BrandsCategoryDataModelCopyWith(BrandsCategoryDataModel value,
          $Res Function(BrandsCategoryDataModel) then) =
      _$BrandsCategoryDataModelCopyWithImpl<$Res, BrandsCategoryDataModel>;
  @useResult
  $Res call({List<BrandsItemCategoryModel>? data});
}

/// @nodoc
class _$BrandsCategoryDataModelCopyWithImpl<$Res,
        $Val extends BrandsCategoryDataModel>
    implements $BrandsCategoryDataModelCopyWith<$Res> {
  _$BrandsCategoryDataModelCopyWithImpl(this._value, this._then);

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
              as List<BrandsItemCategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsCategoryDataModelImplCopyWith<$Res>
    implements $BrandsCategoryDataModelCopyWith<$Res> {
  factory _$$BrandsCategoryDataModelImplCopyWith(
          _$BrandsCategoryDataModelImpl value,
          $Res Function(_$BrandsCategoryDataModelImpl) then) =
      __$$BrandsCategoryDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandsItemCategoryModel>? data});
}

/// @nodoc
class __$$BrandsCategoryDataModelImplCopyWithImpl<$Res>
    extends _$BrandsCategoryDataModelCopyWithImpl<$Res,
        _$BrandsCategoryDataModelImpl>
    implements _$$BrandsCategoryDataModelImplCopyWith<$Res> {
  __$$BrandsCategoryDataModelImplCopyWithImpl(
      _$BrandsCategoryDataModelImpl _value,
      $Res Function(_$BrandsCategoryDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BrandsCategoryDataModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandsItemCategoryModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsCategoryDataModelImpl implements _BrandsCategoryDataModel {
  const _$BrandsCategoryDataModelImpl(
      {final List<BrandsItemCategoryModel>? data})
      : _data = data;

  factory _$BrandsCategoryDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsCategoryDataModelImplFromJson(json);

  final List<BrandsItemCategoryModel>? _data;
  @override
  List<BrandsItemCategoryModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrandsCategoryDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsCategoryDataModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsCategoryDataModelImplCopyWith<_$BrandsCategoryDataModelImpl>
      get copyWith => __$$BrandsCategoryDataModelImplCopyWithImpl<
          _$BrandsCategoryDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsCategoryDataModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsCategoryDataModel implements BrandsCategoryDataModel {
  const factory _BrandsCategoryDataModel(
          {final List<BrandsItemCategoryModel>? data}) =
      _$BrandsCategoryDataModelImpl;

  factory _BrandsCategoryDataModel.fromJson(Map<String, dynamic> json) =
      _$BrandsCategoryDataModelImpl.fromJson;

  @override
  List<BrandsItemCategoryModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandsCategoryDataModelImplCopyWith<_$BrandsCategoryDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandsItemCategoryModel _$BrandsItemCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _BrandsItemCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsItemCategoryModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  List<BrandsItemModel>? get brands => throw _privateConstructorUsedError;
  String? get public_path => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsItemCategoryModelCopyWith<BrandsItemCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsItemCategoryModelCopyWith<$Res> {
  factory $BrandsItemCategoryModelCopyWith(BrandsItemCategoryModel value,
          $Res Function(BrandsItemCategoryModel) then) =
      _$BrandsItemCategoryModelCopyWithImpl<$Res, BrandsItemCategoryModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<BrandsItemModel>? brands,
      String? public_path,
      String? image_url});
}

/// @nodoc
class _$BrandsItemCategoryModelCopyWithImpl<$Res,
        $Val extends BrandsItemCategoryModel>
    implements $BrandsItemCategoryModelCopyWith<$Res> {
  _$BrandsItemCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brands = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      brands: freezed == brands
          ? _value.brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandsItemModel>?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsItemCategoryModelImplCopyWith<$Res>
    implements $BrandsItemCategoryModelCopyWith<$Res> {
  factory _$$BrandsItemCategoryModelImplCopyWith(
          _$BrandsItemCategoryModelImpl value,
          $Res Function(_$BrandsItemCategoryModelImpl) then) =
      __$$BrandsItemCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      List<BrandsItemModel>? brands,
      String? public_path,
      String? image_url});
}

/// @nodoc
class __$$BrandsItemCategoryModelImplCopyWithImpl<$Res>
    extends _$BrandsItemCategoryModelCopyWithImpl<$Res,
        _$BrandsItemCategoryModelImpl>
    implements _$$BrandsItemCategoryModelImplCopyWith<$Res> {
  __$$BrandsItemCategoryModelImplCopyWithImpl(
      _$BrandsItemCategoryModelImpl _value,
      $Res Function(_$BrandsItemCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? brands = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
  }) {
    return _then(_$BrandsItemCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      brands: freezed == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandsItemModel>?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsItemCategoryModelImpl implements _BrandsItemCategoryModel {
  const _$BrandsItemCategoryModelImpl(
      {this.id,
      this.name,
      final List<BrandsItemModel>? brands,
      this.public_path,
      this.image_url})
      : _brands = brands;

  factory _$BrandsItemCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsItemCategoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  final List<BrandsItemModel>? _brands;
  @override
  List<BrandsItemModel>? get brands {
    final value = _brands;
    if (value == null) return null;
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? public_path;
  @override
  final String? image_url;

  @override
  String toString() {
    return 'BrandsItemCategoryModel(id: $id, name: $name, brands: $brands, public_path: $public_path, image_url: $image_url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsItemCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._brands, _brands) &&
            (identical(other.public_path, public_path) ||
                other.public_path == public_path) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name,
      const DeepCollectionEquality().hash(_brands), public_path, image_url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsItemCategoryModelImplCopyWith<_$BrandsItemCategoryModelImpl>
      get copyWith => __$$BrandsItemCategoryModelImplCopyWithImpl<
          _$BrandsItemCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsItemCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsItemCategoryModel implements BrandsItemCategoryModel {
  const factory _BrandsItemCategoryModel(
      {final int? id,
      final String? name,
      final List<BrandsItemModel>? brands,
      final String? public_path,
      final String? image_url}) = _$BrandsItemCategoryModelImpl;

  factory _BrandsItemCategoryModel.fromJson(Map<String, dynamic> json) =
      _$BrandsItemCategoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  List<BrandsItemModel>? get brands;
  @override
  String? get public_path;
  @override
  String? get image_url;
  @override
  @JsonKey(ignore: true)
  _$$BrandsItemCategoryModelImplCopyWith<_$BrandsItemCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BrandsItemModel _$BrandsItemModelFromJson(Map<String, dynamic> json) {
  return _BrandsItemModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsItemModel {
  int? get id => throw _privateConstructorUsedError;
  int? get category_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get cover_image => throw _privateConstructorUsedError;
  String? get meta_keywords => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsItemModelCopyWith<BrandsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsItemModelCopyWith<$Res> {
  factory $BrandsItemModelCopyWith(
          BrandsItemModel value, $Res Function(BrandsItemModel) then) =
      _$BrandsItemModelCopyWithImpl<$Res, BrandsItemModel>;
  @useResult
  $Res call(
      {int? id,
      int? category_id,
      String? name,
      String? description,
      String? image,
      String? status,
      String? created_at,
      String? updated_at,
      String? cover_image,
      String? meta_keywords,
      String? meta_description,
      String? slug});
}

/// @nodoc
class _$BrandsItemModelCopyWithImpl<$Res, $Val extends BrandsItemModel>
    implements $BrandsItemModelCopyWith<$Res> {
  _$BrandsItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? cover_image = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? slug = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_image: freezed == cover_image
          ? _value.cover_image
          : cover_image // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsItemModelImplCopyWith<$Res>
    implements $BrandsItemModelCopyWith<$Res> {
  factory _$$BrandsItemModelImplCopyWith(_$BrandsItemModelImpl value,
          $Res Function(_$BrandsItemModelImpl) then) =
      __$$BrandsItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? category_id,
      String? name,
      String? description,
      String? image,
      String? status,
      String? created_at,
      String? updated_at,
      String? cover_image,
      String? meta_keywords,
      String? meta_description,
      String? slug});
}

/// @nodoc
class __$$BrandsItemModelImplCopyWithImpl<$Res>
    extends _$BrandsItemModelCopyWithImpl<$Res, _$BrandsItemModelImpl>
    implements _$$BrandsItemModelImplCopyWith<$Res> {
  __$$BrandsItemModelImplCopyWithImpl(
      _$BrandsItemModelImpl _value, $Res Function(_$BrandsItemModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? category_id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? cover_image = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$BrandsItemModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      category_id: freezed == category_id
          ? _value.category_id
          : category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_image: freezed == cover_image
          ? _value.cover_image
          : cover_image // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsItemModelImpl implements _BrandsItemModel {
  const _$BrandsItemModelImpl(
      {this.id,
      this.category_id,
      this.name,
      this.description,
      this.image,
      this.status,
      this.created_at,
      this.updated_at,
      this.cover_image,
      this.meta_keywords,
      this.meta_description,
      this.slug});

  factory _$BrandsItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsItemModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? category_id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? image;
  @override
  final String? status;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? cover_image;
  @override
  final String? meta_keywords;
  @override
  final String? meta_description;
  @override
  final String? slug;

  @override
  String toString() {
    return 'BrandsItemModel(id: $id, category_id: $category_id, name: $name, description: $description, image: $image, status: $status, created_at: $created_at, updated_at: $updated_at, cover_image: $cover_image, meta_keywords: $meta_keywords, meta_description: $meta_description, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.category_id, category_id) ||
                other.category_id == category_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.cover_image, cover_image) ||
                other.cover_image == cover_image) &&
            (identical(other.meta_keywords, meta_keywords) ||
                other.meta_keywords == meta_keywords) &&
            (identical(other.meta_description, meta_description) ||
                other.meta_description == meta_description) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      category_id,
      name,
      description,
      image,
      status,
      created_at,
      updated_at,
      cover_image,
      meta_keywords,
      meta_description,
      slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsItemModelImplCopyWith<_$BrandsItemModelImpl> get copyWith =>
      __$$BrandsItemModelImplCopyWithImpl<_$BrandsItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsItemModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsItemModel implements BrandsItemModel {
  const factory _BrandsItemModel(
      {final int? id,
      final int? category_id,
      final String? name,
      final String? description,
      final String? image,
      final String? status,
      final String? created_at,
      final String? updated_at,
      final String? cover_image,
      final String? meta_keywords,
      final String? meta_description,
      final String? slug}) = _$BrandsItemModelImpl;

  factory _BrandsItemModel.fromJson(Map<String, dynamic> json) =
      _$BrandsItemModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get category_id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get image;
  @override
  String? get status;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get cover_image;
  @override
  String? get meta_keywords;
  @override
  String? get meta_description;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$BrandsItemModelImplCopyWith<_$BrandsItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
