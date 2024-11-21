// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'featured_brands_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FeaturedBrandsModel _$FeaturedBrandsModelFromJson(Map<String, dynamic> json) {
  return _FeaturedBrandsModel.fromJson(json);
}

/// @nodoc
mixin _$FeaturedBrandsModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  FeaturedBrandsData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedBrandsModelCopyWith<FeaturedBrandsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedBrandsModelCopyWith<$Res> {
  factory $FeaturedBrandsModelCopyWith(
          FeaturedBrandsModel value, $Res Function(FeaturedBrandsModel) then) =
      _$FeaturedBrandsModelCopyWithImpl<$Res, FeaturedBrandsModel>;
  @useResult
  $Res call({int? code, String? message, FeaturedBrandsData? data});

  $FeaturedBrandsDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$FeaturedBrandsModelCopyWithImpl<$Res, $Val extends FeaturedBrandsModel>
    implements $FeaturedBrandsModelCopyWith<$Res> {
  _$FeaturedBrandsModelCopyWithImpl(this._value, this._then);

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
              as FeaturedBrandsData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FeaturedBrandsDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $FeaturedBrandsDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FeaturedBrandsModelImplCopyWith<$Res>
    implements $FeaturedBrandsModelCopyWith<$Res> {
  factory _$$FeaturedBrandsModelImplCopyWith(_$FeaturedBrandsModelImpl value,
          $Res Function(_$FeaturedBrandsModelImpl) then) =
      __$$FeaturedBrandsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, FeaturedBrandsData? data});

  @override
  $FeaturedBrandsDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$FeaturedBrandsModelImplCopyWithImpl<$Res>
    extends _$FeaturedBrandsModelCopyWithImpl<$Res, _$FeaturedBrandsModelImpl>
    implements _$$FeaturedBrandsModelImplCopyWith<$Res> {
  __$$FeaturedBrandsModelImplCopyWithImpl(_$FeaturedBrandsModelImpl _value,
      $Res Function(_$FeaturedBrandsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$FeaturedBrandsModelImpl(
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
              as FeaturedBrandsData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedBrandsModelImpl implements _FeaturedBrandsModel {
  const _$FeaturedBrandsModelImpl(
      {required this.code, required this.message, required this.data});

  factory _$FeaturedBrandsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedBrandsModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final FeaturedBrandsData? data;

  @override
  String toString() {
    return 'FeaturedBrandsModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedBrandsModelImpl &&
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
  _$$FeaturedBrandsModelImplCopyWith<_$FeaturedBrandsModelImpl> get copyWith =>
      __$$FeaturedBrandsModelImplCopyWithImpl<_$FeaturedBrandsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedBrandsModelImplToJson(
      this,
    );
  }
}

abstract class _FeaturedBrandsModel implements FeaturedBrandsModel {
  const factory _FeaturedBrandsModel(
      {required final int? code,
      required final String? message,
      required final FeaturedBrandsData? data}) = _$FeaturedBrandsModelImpl;

  factory _FeaturedBrandsModel.fromJson(Map<String, dynamic> json) =
      _$FeaturedBrandsModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  FeaturedBrandsData? get data;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedBrandsModelImplCopyWith<_$FeaturedBrandsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FeaturedBrandsData _$FeaturedBrandsDataFromJson(Map<String, dynamic> json) {
  return _FeaturedBrandsData.fromJson(json);
}

/// @nodoc
mixin _$FeaturedBrandsData {
  List<Brand>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FeaturedBrandsDataCopyWith<FeaturedBrandsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FeaturedBrandsDataCopyWith<$Res> {
  factory $FeaturedBrandsDataCopyWith(
          FeaturedBrandsData value, $Res Function(FeaturedBrandsData) then) =
      _$FeaturedBrandsDataCopyWithImpl<$Res, FeaturedBrandsData>;
  @useResult
  $Res call({List<Brand>? data});
}

/// @nodoc
class _$FeaturedBrandsDataCopyWithImpl<$Res, $Val extends FeaturedBrandsData>
    implements $FeaturedBrandsDataCopyWith<$Res> {
  _$FeaturedBrandsDataCopyWithImpl(this._value, this._then);

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
              as List<Brand>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FeaturedBrandsDataImplCopyWith<$Res>
    implements $FeaturedBrandsDataCopyWith<$Res> {
  factory _$$FeaturedBrandsDataImplCopyWith(_$FeaturedBrandsDataImpl value,
          $Res Function(_$FeaturedBrandsDataImpl) then) =
      __$$FeaturedBrandsDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Brand>? data});
}

/// @nodoc
class __$$FeaturedBrandsDataImplCopyWithImpl<$Res>
    extends _$FeaturedBrandsDataCopyWithImpl<$Res, _$FeaturedBrandsDataImpl>
    implements _$$FeaturedBrandsDataImplCopyWith<$Res> {
  __$$FeaturedBrandsDataImplCopyWithImpl(_$FeaturedBrandsDataImpl _value,
      $Res Function(_$FeaturedBrandsDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$FeaturedBrandsDataImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Brand>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FeaturedBrandsDataImpl implements _FeaturedBrandsData {
  const _$FeaturedBrandsDataImpl({required final List<Brand>? data})
      : _data = data;

  factory _$FeaturedBrandsDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$FeaturedBrandsDataImplFromJson(json);

  final List<Brand>? _data;
  @override
  List<Brand>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FeaturedBrandsData(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FeaturedBrandsDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FeaturedBrandsDataImplCopyWith<_$FeaturedBrandsDataImpl> get copyWith =>
      __$$FeaturedBrandsDataImplCopyWithImpl<_$FeaturedBrandsDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FeaturedBrandsDataImplToJson(
      this,
    );
  }
}

abstract class _FeaturedBrandsData implements FeaturedBrandsData {
  const factory _FeaturedBrandsData({required final List<Brand>? data}) =
      _$FeaturedBrandsDataImpl;

  factory _FeaturedBrandsData.fromJson(Map<String, dynamic> json) =
      _$FeaturedBrandsDataImpl.fromJson;

  @override
  List<Brand>? get data;
  @override
  @JsonKey(ignore: true)
  _$$FeaturedBrandsDataImplCopyWith<_$FeaturedBrandsDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({int? id, String? name, String? image, String? slug});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? slug = freezed,
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
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? image, String? slug});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? image = freezed,
    Object? slug = freezed,
  }) {
    return _then(_$BrandImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.slug});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? image;
  @override
  final String? slug;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, image: $image, slug: $slug)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.slug, slug) || other.slug == slug));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, slug);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {required final int? id,
      required final String? name,
      required final String? image,
      required final String? slug}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get image;
  @override
  String? get slug;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
