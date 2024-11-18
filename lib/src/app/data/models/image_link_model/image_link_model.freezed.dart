// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image_link_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ImageLinkResponseModel _$ImageLinkResponseModelFromJson(
    Map<String, dynamic> json) {
  return _ImageLinkResponseModel.fromJson(json);
}

/// @nodoc
mixin _$ImageLinkResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ImageLinkModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinkResponseModelCopyWith<ImageLinkResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinkResponseModelCopyWith<$Res> {
  factory $ImageLinkResponseModelCopyWith(ImageLinkResponseModel value,
          $Res Function(ImageLinkResponseModel) then) =
      _$ImageLinkResponseModelCopyWithImpl<$Res, ImageLinkResponseModel>;
  @useResult
  $Res call({int? code, String? message, ImageLinkModel? data});

  $ImageLinkModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$ImageLinkResponseModelCopyWithImpl<$Res,
        $Val extends ImageLinkResponseModel>
    implements $ImageLinkResponseModelCopyWith<$Res> {
  _$ImageLinkResponseModelCopyWithImpl(this._value, this._then);

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
              as ImageLinkModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageLinkModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ImageLinkModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ImageLinkResponseModelImplCopyWith<$Res>
    implements $ImageLinkResponseModelCopyWith<$Res> {
  factory _$$ImageLinkResponseModelImplCopyWith(
          _$ImageLinkResponseModelImpl value,
          $Res Function(_$ImageLinkResponseModelImpl) then) =
      __$$ImageLinkResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, ImageLinkModel? data});

  @override
  $ImageLinkModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$ImageLinkResponseModelImplCopyWithImpl<$Res>
    extends _$ImageLinkResponseModelCopyWithImpl<$Res,
        _$ImageLinkResponseModelImpl>
    implements _$$ImageLinkResponseModelImplCopyWith<$Res> {
  __$$ImageLinkResponseModelImplCopyWithImpl(
      _$ImageLinkResponseModelImpl _value,
      $Res Function(_$ImageLinkResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ImageLinkResponseModelImpl(
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
              as ImageLinkModel?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ImageLinkResponseModelImpl implements _ImageLinkResponseModel {
  const _$ImageLinkResponseModelImpl({this.code, this.message, this.data});

  factory _$ImageLinkResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinkResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final ImageLinkModel? data;

  @override
  String toString() {
    return 'ImageLinkResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinkResponseModelImpl &&
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
  _$$ImageLinkResponseModelImplCopyWith<_$ImageLinkResponseModelImpl>
      get copyWith => __$$ImageLinkResponseModelImplCopyWithImpl<
          _$ImageLinkResponseModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinkResponseModelImplToJson(
      this,
    );
  }
}

abstract class _ImageLinkResponseModel implements ImageLinkResponseModel {
  const factory _ImageLinkResponseModel(
      {final int? code,
      final String? message,
      final ImageLinkModel? data}) = _$ImageLinkResponseModelImpl;

  factory _ImageLinkResponseModel.fromJson(Map<String, dynamic> json) =
      _$ImageLinkResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  ImageLinkModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ImageLinkResponseModelImplCopyWith<_$ImageLinkResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ImageLinkModel _$ImageLinkModelFromJson(Map<String, dynamic> json) {
  return _ImageLinkModel.fromJson(json);
}

/// @nodoc
mixin _$ImageLinkModel {
  String? get adsImage => throw _privateConstructorUsedError;
  String? get productCoverImage => throw _privateConstructorUsedError;
  String? get productCategoryImage => throw _privateConstructorUsedError;
  String? get brandImage => throw _privateConstructorUsedError;
  String? get userImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageLinkModelCopyWith<ImageLinkModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageLinkModelCopyWith<$Res> {
  factory $ImageLinkModelCopyWith(
          ImageLinkModel value, $Res Function(ImageLinkModel) then) =
      _$ImageLinkModelCopyWithImpl<$Res, ImageLinkModel>;
  @useResult
  $Res call(
      {String? adsImage,
      String? productCoverImage,
      String? productCategoryImage,
      String? brandImage,
      String? userImage});
}

/// @nodoc
class _$ImageLinkModelCopyWithImpl<$Res, $Val extends ImageLinkModel>
    implements $ImageLinkModelCopyWith<$Res> {
  _$ImageLinkModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adsImage = freezed,
    Object? productCoverImage = freezed,
    Object? productCategoryImage = freezed,
    Object? brandImage = freezed,
    Object? userImage = freezed,
  }) {
    return _then(_value.copyWith(
      adsImage: freezed == adsImage
          ? _value.adsImage
          : adsImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productCoverImage: freezed == productCoverImage
          ? _value.productCoverImage
          : productCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryImage: freezed == productCategoryImage
          ? _value.productCategoryImage
          : productCategoryImage // ignore: cast_nullable_to_non_nullable
              as String?,
      brandImage: freezed == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageLinkModelImplCopyWith<$Res>
    implements $ImageLinkModelCopyWith<$Res> {
  factory _$$ImageLinkModelImplCopyWith(_$ImageLinkModelImpl value,
          $Res Function(_$ImageLinkModelImpl) then) =
      __$$ImageLinkModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? adsImage,
      String? productCoverImage,
      String? productCategoryImage,
      String? brandImage,
      String? userImage});
}

/// @nodoc
class __$$ImageLinkModelImplCopyWithImpl<$Res>
    extends _$ImageLinkModelCopyWithImpl<$Res, _$ImageLinkModelImpl>
    implements _$$ImageLinkModelImplCopyWith<$Res> {
  __$$ImageLinkModelImplCopyWithImpl(
      _$ImageLinkModelImpl _value, $Res Function(_$ImageLinkModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adsImage = freezed,
    Object? productCoverImage = freezed,
    Object? productCategoryImage = freezed,
    Object? brandImage = freezed,
    Object? userImage = freezed,
  }) {
    return _then(_$ImageLinkModelImpl(
      adsImage: freezed == adsImage
          ? _value.adsImage
          : adsImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productCoverImage: freezed == productCoverImage
          ? _value.productCoverImage
          : productCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      productCategoryImage: freezed == productCategoryImage
          ? _value.productCategoryImage
          : productCategoryImage // ignore: cast_nullable_to_non_nullable
              as String?,
      brandImage: freezed == brandImage
          ? _value.brandImage
          : brandImage // ignore: cast_nullable_to_non_nullable
              as String?,
      userImage: freezed == userImage
          ? _value.userImage
          : userImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ImageLinkModelImpl implements _ImageLinkModel {
  const _$ImageLinkModelImpl(
      {this.adsImage,
      this.productCoverImage,
      this.productCategoryImage,
      this.brandImage,
      this.userImage});

  factory _$ImageLinkModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageLinkModelImplFromJson(json);

  @override
  final String? adsImage;
  @override
  final String? productCoverImage;
  @override
  final String? productCategoryImage;
  @override
  final String? brandImage;
  @override
  final String? userImage;

  @override
  String toString() {
    return 'ImageLinkModel(adsImage: $adsImage, productCoverImage: $productCoverImage, productCategoryImage: $productCategoryImage, brandImage: $brandImage, userImage: $userImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageLinkModelImpl &&
            (identical(other.adsImage, adsImage) ||
                other.adsImage == adsImage) &&
            (identical(other.productCoverImage, productCoverImage) ||
                other.productCoverImage == productCoverImage) &&
            (identical(other.productCategoryImage, productCategoryImage) ||
                other.productCategoryImage == productCategoryImage) &&
            (identical(other.brandImage, brandImage) ||
                other.brandImage == brandImage) &&
            (identical(other.userImage, userImage) ||
                other.userImage == userImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adsImage, productCoverImage,
      productCategoryImage, brandImage, userImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageLinkModelImplCopyWith<_$ImageLinkModelImpl> get copyWith =>
      __$$ImageLinkModelImplCopyWithImpl<_$ImageLinkModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageLinkModelImplToJson(
      this,
    );
  }
}

abstract class _ImageLinkModel implements ImageLinkModel {
  const factory _ImageLinkModel(
      {final String? adsImage,
      final String? productCoverImage,
      final String? productCategoryImage,
      final String? brandImage,
      final String? userImage}) = _$ImageLinkModelImpl;

  factory _ImageLinkModel.fromJson(Map<String, dynamic> json) =
      _$ImageLinkModelImpl.fromJson;

  @override
  String? get adsImage;
  @override
  String? get productCoverImage;
  @override
  String? get productCategoryImage;
  @override
  String? get brandImage;
  @override
  String? get userImage;
  @override
  @JsonKey(ignore: true)
  _$$ImageLinkModelImplCopyWith<_$ImageLinkModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
