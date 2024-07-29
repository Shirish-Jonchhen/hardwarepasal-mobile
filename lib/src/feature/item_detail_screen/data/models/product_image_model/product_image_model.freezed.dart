// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductImageModel _$ProductImageModelFromJson(Map<String, dynamic> json) {
  return _ProductImageModel.fromJson(json);
}

/// @nodoc
mixin _$ProductImageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductImageModelCopyWith<ProductImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageModelCopyWith<$Res> {
  factory $ProductImageModelCopyWith(
          ProductImageModel value, $Res Function(ProductImageModel) then) =
      _$ProductImageModelCopyWithImpl<$Res, ProductImageModel>;
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? created_at,
      String? updated_at,
      int? product_id});
}

/// @nodoc
class _$ProductImageModelCopyWithImpl<$Res, $Val extends ProductImageModel>
    implements $ProductImageModelCopyWith<$Res> {
  _$ProductImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? product_id = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImageModelImplCopyWith<$Res>
    implements $ProductImageModelCopyWith<$Res> {
  factory _$$ProductImageModelImplCopyWith(_$ProductImageModelImpl value,
          $Res Function(_$ProductImageModelImpl) then) =
      __$$ProductImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? image,
      String? created_at,
      String? updated_at,
      int? product_id});
}

/// @nodoc
class __$$ProductImageModelImplCopyWithImpl<$Res>
    extends _$ProductImageModelCopyWithImpl<$Res, _$ProductImageModelImpl>
    implements _$$ProductImageModelImplCopyWith<$Res> {
  __$$ProductImageModelImplCopyWithImpl(_$ProductImageModelImpl _value,
      $Res Function(_$ProductImageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? product_id = freezed,
  }) {
    return _then(_$ProductImageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProductImageModelImpl implements _ProductImageModel {
  const _$ProductImageModelImpl(
      {this.id, this.image, this.created_at, this.updated_at, this.product_id});

  factory _$ProductImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final int? product_id;

  @override
  String toString() {
    return 'ProductImageModel(id: $id, image: $image, created_at: $created_at, updated_at: $updated_at, product_id: $product_id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, image, created_at, updated_at, product_id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageModelImplCopyWith<_$ProductImageModelImpl> get copyWith =>
      __$$ProductImageModelImplCopyWithImpl<_$ProductImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageModelImplToJson(
      this,
    );
  }
}

abstract class _ProductImageModel implements ProductImageModel {
  const factory _ProductImageModel(
      {final int? id,
      final String? image,
      final String? created_at,
      final String? updated_at,
      final int? product_id}) = _$ProductImageModelImpl;

  factory _ProductImageModel.fromJson(Map<String, dynamic> json) =
      _$ProductImageModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  int? get product_id;
  @override
  @JsonKey(ignore: true)
  _$$ProductImageModelImplCopyWith<_$ProductImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
