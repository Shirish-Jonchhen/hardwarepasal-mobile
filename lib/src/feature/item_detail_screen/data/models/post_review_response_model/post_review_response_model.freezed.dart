// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_review_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostReviewResponseModel _$PostReviewResponseModelFromJson(
    Map<String, dynamic> json) {
  return _PostReviewResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PostReviewResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ReviewDataWrapper? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostReviewResponseModelCopyWith<PostReviewResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostReviewResponseModelCopyWith<$Res> {
  factory $PostReviewResponseModelCopyWith(PostReviewResponseModel value,
          $Res Function(PostReviewResponseModel) then) =
      _$PostReviewResponseModelCopyWithImpl<$Res, PostReviewResponseModel>;
  @useResult
  $Res call({int? code, String? message, ReviewDataWrapper? data});

  $ReviewDataWrapperCopyWith<$Res>? get data;
}

/// @nodoc
class _$PostReviewResponseModelCopyWithImpl<$Res,
        $Val extends PostReviewResponseModel>
    implements $PostReviewResponseModelCopyWith<$Res> {
  _$PostReviewResponseModelCopyWithImpl(this._value, this._then);

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
              as ReviewDataWrapper?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewDataWrapperCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ReviewDataWrapperCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostReviewResponseModelImplCopyWith<$Res>
    implements $PostReviewResponseModelCopyWith<$Res> {
  factory _$$PostReviewResponseModelImplCopyWith(
          _$PostReviewResponseModelImpl value,
          $Res Function(_$PostReviewResponseModelImpl) then) =
      __$$PostReviewResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, ReviewDataWrapper? data});

  @override
  $ReviewDataWrapperCopyWith<$Res>? get data;
}

/// @nodoc
class __$$PostReviewResponseModelImplCopyWithImpl<$Res>
    extends _$PostReviewResponseModelCopyWithImpl<$Res,
        _$PostReviewResponseModelImpl>
    implements _$$PostReviewResponseModelImplCopyWith<$Res> {
  __$$PostReviewResponseModelImplCopyWithImpl(
      _$PostReviewResponseModelImpl _value,
      $Res Function(_$PostReviewResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$PostReviewResponseModelImpl(
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
              as ReviewDataWrapper?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostReviewResponseModelImpl implements _PostReviewResponseModel {
  const _$PostReviewResponseModelImpl({this.code, this.message, this.data});

  factory _$PostReviewResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostReviewResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final ReviewDataWrapper? data;

  @override
  String toString() {
    return 'PostReviewResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostReviewResponseModelImpl &&
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
  _$$PostReviewResponseModelImplCopyWith<_$PostReviewResponseModelImpl>
      get copyWith => __$$PostReviewResponseModelImplCopyWithImpl<
          _$PostReviewResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostReviewResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PostReviewResponseModel implements PostReviewResponseModel {
  const factory _PostReviewResponseModel(
      {final int? code,
      final String? message,
      final ReviewDataWrapper? data}) = _$PostReviewResponseModelImpl;

  factory _PostReviewResponseModel.fromJson(Map<String, dynamic> json) =
      _$PostReviewResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  ReviewDataWrapper? get data;
  @override
  @JsonKey(ignore: true)
  _$$PostReviewResponseModelImplCopyWith<_$PostReviewResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ReviewDataWrapper _$ReviewDataWrapperFromJson(Map<String, dynamic> json) {
  return _ReviewDataWrapper.fromJson(json);
}

/// @nodoc
mixin _$ReviewDataWrapper {
  ReviewData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDataWrapperCopyWith<ReviewDataWrapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDataWrapperCopyWith<$Res> {
  factory $ReviewDataWrapperCopyWith(
          ReviewDataWrapper value, $Res Function(ReviewDataWrapper) then) =
      _$ReviewDataWrapperCopyWithImpl<$Res, ReviewDataWrapper>;
  @useResult
  $Res call({ReviewData? data});

  $ReviewDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$ReviewDataWrapperCopyWithImpl<$Res, $Val extends ReviewDataWrapper>
    implements $ReviewDataWrapperCopyWith<$Res> {
  _$ReviewDataWrapperCopyWithImpl(this._value, this._then);

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
              as ReviewData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ReviewDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReviewDataWrapperImplCopyWith<$Res>
    implements $ReviewDataWrapperCopyWith<$Res> {
  factory _$$ReviewDataWrapperImplCopyWith(_$ReviewDataWrapperImpl value,
          $Res Function(_$ReviewDataWrapperImpl) then) =
      __$$ReviewDataWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ReviewData? data});

  @override
  $ReviewDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ReviewDataWrapperImplCopyWithImpl<$Res>
    extends _$ReviewDataWrapperCopyWithImpl<$Res, _$ReviewDataWrapperImpl>
    implements _$$ReviewDataWrapperImplCopyWith<$Res> {
  __$$ReviewDataWrapperImplCopyWithImpl(_$ReviewDataWrapperImpl _value,
      $Res Function(_$ReviewDataWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ReviewDataWrapperImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ReviewData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDataWrapperImpl implements _ReviewDataWrapper {
  const _$ReviewDataWrapperImpl({this.data});

  factory _$ReviewDataWrapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDataWrapperImplFromJson(json);

  @override
  final ReviewData? data;

  @override
  String toString() {
    return 'ReviewDataWrapper(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDataWrapperImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDataWrapperImplCopyWith<_$ReviewDataWrapperImpl> get copyWith =>
      __$$ReviewDataWrapperImplCopyWithImpl<_$ReviewDataWrapperImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDataWrapperImplToJson(
      this,
    );
  }
}

abstract class _ReviewDataWrapper implements ReviewDataWrapper {
  const factory _ReviewDataWrapper({final ReviewData? data}) =
      _$ReviewDataWrapperImpl;

  factory _ReviewDataWrapper.fromJson(Map<String, dynamic> json) =
      _$ReviewDataWrapperImpl.fromJson;

  @override
  ReviewData? get data;
  @override
  @JsonKey(ignore: true)
  _$$ReviewDataWrapperImplCopyWith<_$ReviewDataWrapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewData _$ReviewDataFromJson(Map<String, dynamic> json) {
  return _ReviewData.fromJson(json);
}

/// @nodoc
mixin _$ReviewData {
  int? get userId => throw _privateConstructorUsedError;
  String? get stars => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get productId => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDataCopyWith<ReviewData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDataCopyWith<$Res> {
  factory $ReviewDataCopyWith(
          ReviewData value, $Res Function(ReviewData) then) =
      _$ReviewDataCopyWithImpl<$Res, ReviewData>;
  @useResult
  $Res call(
      {int? userId,
      String? stars,
      String? description,
      int? productId,
      DateTime? updatedAt,
      DateTime? createdAt,
      int? id});
}

/// @nodoc
class _$ReviewDataCopyWithImpl<$Res, $Val extends ReviewData>
    implements $ReviewDataCopyWith<$Res> {
  _$ReviewDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? stars = freezed,
    Object? description = freezed,
    Object? productId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDataImplCopyWith<$Res>
    implements $ReviewDataCopyWith<$Res> {
  factory _$$ReviewDataImplCopyWith(
          _$ReviewDataImpl value, $Res Function(_$ReviewDataImpl) then) =
      __$$ReviewDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? userId,
      String? stars,
      String? description,
      int? productId,
      DateTime? updatedAt,
      DateTime? createdAt,
      int? id});
}

/// @nodoc
class __$$ReviewDataImplCopyWithImpl<$Res>
    extends _$ReviewDataCopyWithImpl<$Res, _$ReviewDataImpl>
    implements _$$ReviewDataImplCopyWith<$Res> {
  __$$ReviewDataImplCopyWithImpl(
      _$ReviewDataImpl _value, $Res Function(_$ReviewDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? stars = freezed,
    Object? description = freezed,
    Object? productId = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? id = freezed,
  }) {
    return _then(_$ReviewDataImpl(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewDataImpl implements _ReviewData {
  const _$ReviewDataImpl(
      {this.userId,
      this.stars,
      this.description,
      this.productId,
      this.updatedAt,
      this.createdAt,
      this.id});

  factory _$ReviewDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDataImplFromJson(json);

  @override
  final int? userId;
  @override
  final String? stars;
  @override
  final String? description;
  @override
  final int? productId;
  @override
  final DateTime? updatedAt;
  @override
  final DateTime? createdAt;
  @override
  final int? id;

  @override
  String toString() {
    return 'ReviewData(userId: $userId, stars: $stars, description: $description, productId: $productId, updatedAt: $updatedAt, createdAt: $createdAt, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, stars, description,
      productId, updatedAt, createdAt, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDataImplCopyWith<_$ReviewDataImpl> get copyWith =>
      __$$ReviewDataImplCopyWithImpl<_$ReviewDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDataImplToJson(
      this,
    );
  }
}

abstract class _ReviewData implements ReviewData {
  const factory _ReviewData(
      {final int? userId,
      final String? stars,
      final String? description,
      final int? productId,
      final DateTime? updatedAt,
      final DateTime? createdAt,
      final int? id}) = _$ReviewDataImpl;

  factory _ReviewData.fromJson(Map<String, dynamic> json) =
      _$ReviewDataImpl.fromJson;

  @override
  int? get userId;
  @override
  String? get stars;
  @override
  String? get description;
  @override
  int? get productId;
  @override
  DateTime? get updatedAt;
  @override
  DateTime? get createdAt;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$ReviewDataImplCopyWith<_$ReviewDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
