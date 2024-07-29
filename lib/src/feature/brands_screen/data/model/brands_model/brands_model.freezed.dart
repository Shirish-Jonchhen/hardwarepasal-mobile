// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brands_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandsModel _$BrandsModelFromJson(Map<String, dynamic> json) {
  return _BrandsModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  BrandsDataModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsModelCopyWith<BrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsModelCopyWith<$Res> {
  factory $BrandsModelCopyWith(
          BrandsModel value, $Res Function(BrandsModel) then) =
      _$BrandsModelCopyWithImpl<$Res, BrandsModel>;
  @useResult
  $Res call({int? code, String? message, BrandsDataModel? data});

  $BrandsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrandsModelCopyWithImpl<$Res, $Val extends BrandsModel>
    implements $BrandsModelCopyWith<$Res> {
  _$BrandsModelCopyWithImpl(this._value, this._then);

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
              as BrandsDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandsDataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BrandsDataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandsModelImplCopyWith<$Res>
    implements $BrandsModelCopyWith<$Res> {
  factory _$$BrandsModelImplCopyWith(
          _$BrandsModelImpl value, $Res Function(_$BrandsModelImpl) then) =
      __$$BrandsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, BrandsDataModel? data});

  @override
  $BrandsDataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BrandsModelImplCopyWithImpl<$Res>
    extends _$BrandsModelCopyWithImpl<$Res, _$BrandsModelImpl>
    implements _$$BrandsModelImplCopyWith<$Res> {
  __$$BrandsModelImplCopyWithImpl(
      _$BrandsModelImpl _value, $Res Function(_$BrandsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BrandsModelImpl(
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
              as BrandsDataModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsModelImpl implements _BrandsModel {
  const _$BrandsModelImpl({this.code, this.message, this.data});

  factory _$BrandsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final BrandsDataModel? data;

  @override
  String toString() {
    return 'BrandsModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsModelImpl &&
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
  _$$BrandsModelImplCopyWith<_$BrandsModelImpl> get copyWith =>
      __$$BrandsModelImplCopyWithImpl<_$BrandsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsModel implements BrandsModel {
  const factory _BrandsModel(
      {final int? code,
      final String? message,
      final BrandsDataModel? data}) = _$BrandsModelImpl;

  factory _BrandsModel.fromJson(Map<String, dynamic> json) =
      _$BrandsModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  BrandsDataModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandsModelImplCopyWith<_$BrandsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandsDataModel _$BrandsDataModelFromJson(Map<String, dynamic> json) {
  return _BrandsDataModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsDataModel {
  BrandsDataInnerModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsDataModelCopyWith<BrandsDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsDataModelCopyWith<$Res> {
  factory $BrandsDataModelCopyWith(
          BrandsDataModel value, $Res Function(BrandsDataModel) then) =
      _$BrandsDataModelCopyWithImpl<$Res, BrandsDataModel>;
  @useResult
  $Res call({BrandsDataInnerModel? data});

  $BrandsDataInnerModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$BrandsDataModelCopyWithImpl<$Res, $Val extends BrandsDataModel>
    implements $BrandsDataModelCopyWith<$Res> {
  _$BrandsDataModelCopyWithImpl(this._value, this._then);

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
              as BrandsDataInnerModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandsDataInnerModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BrandsDataInnerModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandsDataModelImplCopyWith<$Res>
    implements $BrandsDataModelCopyWith<$Res> {
  factory _$$BrandsDataModelImplCopyWith(_$BrandsDataModelImpl value,
          $Res Function(_$BrandsDataModelImpl) then) =
      __$$BrandsDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BrandsDataInnerModel? data});

  @override
  $BrandsDataInnerModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BrandsDataModelImplCopyWithImpl<$Res>
    extends _$BrandsDataModelCopyWithImpl<$Res, _$BrandsDataModelImpl>
    implements _$$BrandsDataModelImplCopyWith<$Res> {
  __$$BrandsDataModelImplCopyWithImpl(
      _$BrandsDataModelImpl _value, $Res Function(_$BrandsDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BrandsDataModelImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BrandsDataInnerModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsDataModelImpl implements _BrandsDataModel {
  const _$BrandsDataModelImpl({required this.data});

  factory _$BrandsDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsDataModelImplFromJson(json);

  @override
  final BrandsDataInnerModel? data;

  @override
  String toString() {
    return 'BrandsDataModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsDataModelImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsDataModelImplCopyWith<_$BrandsDataModelImpl> get copyWith =>
      __$$BrandsDataModelImplCopyWithImpl<_$BrandsDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsDataModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsDataModel implements BrandsDataModel {
  const factory _BrandsDataModel({required final BrandsDataInnerModel? data}) =
      _$BrandsDataModelImpl;

  factory _BrandsDataModel.fromJson(Map<String, dynamic> json) =
      _$BrandsDataModelImpl.fromJson;

  @override
  BrandsDataInnerModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandsDataModelImplCopyWith<_$BrandsDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandsDataInnerModel _$BrandsDataInnerModelFromJson(Map<String, dynamic> json) {
  return _BrandsDataInnerModel.fromJson(json);
}

/// @nodoc
mixin _$BrandsDataInnerModel {
  List<BrandsItemModel>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandsDataInnerModelCopyWith<BrandsDataInnerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandsDataInnerModelCopyWith<$Res> {
  factory $BrandsDataInnerModelCopyWith(BrandsDataInnerModel value,
          $Res Function(BrandsDataInnerModel) then) =
      _$BrandsDataInnerModelCopyWithImpl<$Res, BrandsDataInnerModel>;
  @useResult
  $Res call({List<BrandsItemModel>? data});
}

/// @nodoc
class _$BrandsDataInnerModelCopyWithImpl<$Res,
        $Val extends BrandsDataInnerModel>
    implements $BrandsDataInnerModelCopyWith<$Res> {
  _$BrandsDataInnerModelCopyWithImpl(this._value, this._then);

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
              as List<BrandsItemModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsDataInnerModelImplCopyWith<$Res>
    implements $BrandsDataInnerModelCopyWith<$Res> {
  factory _$$BrandsDataInnerModelImplCopyWith(_$BrandsDataInnerModelImpl value,
          $Res Function(_$BrandsDataInnerModelImpl) then) =
      __$$BrandsDataInnerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BrandsItemModel>? data});
}

/// @nodoc
class __$$BrandsDataInnerModelImplCopyWithImpl<$Res>
    extends _$BrandsDataInnerModelCopyWithImpl<$Res, _$BrandsDataInnerModelImpl>
    implements _$$BrandsDataInnerModelImplCopyWith<$Res> {
  __$$BrandsDataInnerModelImplCopyWithImpl(_$BrandsDataInnerModelImpl _value,
      $Res Function(_$BrandsDataInnerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BrandsDataInnerModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BrandsItemModel>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$BrandsDataInnerModelImpl implements _BrandsDataInnerModel {
  const _$BrandsDataInnerModelImpl({final List<BrandsItemModel>? data})
      : _data = data;

  factory _$BrandsDataInnerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandsDataInnerModelImplFromJson(json);

  final List<BrandsItemModel>? _data;
  @override
  List<BrandsItemModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BrandsDataInnerModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsDataInnerModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsDataInnerModelImplCopyWith<_$BrandsDataInnerModelImpl>
      get copyWith =>
          __$$BrandsDataInnerModelImplCopyWithImpl<_$BrandsDataInnerModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandsDataInnerModelImplToJson(
      this,
    );
  }
}

abstract class _BrandsDataInnerModel implements BrandsDataInnerModel {
  const factory _BrandsDataInnerModel({final List<BrandsItemModel>? data}) =
      _$BrandsDataInnerModelImpl;

  factory _BrandsDataInnerModel.fromJson(Map<String, dynamic> json) =
      _$BrandsDataInnerModelImpl.fromJson;

  @override
  List<BrandsItemModel>? get data;
  @override
  @JsonKey(ignore: true)
  _$$BrandsDataInnerModelImplCopyWith<_$BrandsDataInnerModelImpl>
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
