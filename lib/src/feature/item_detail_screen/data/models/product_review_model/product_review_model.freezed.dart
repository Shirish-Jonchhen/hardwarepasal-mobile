// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductReviewModel _$ProductReviewModelFromJson(Map<String, dynamic> json) {
  return _ProductReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ProductReviewModel {
  int? get id => throw _privateConstructorUsedError;
  int? get product_id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  double? get stars => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductReviewModelCopyWith<ProductReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReviewModelCopyWith<$Res> {
  factory $ProductReviewModelCopyWith(
          ProductReviewModel value, $Res Function(ProductReviewModel) then) =
      _$ProductReviewModelCopyWithImpl<$Res, ProductReviewModel>;
  @useResult
  $Res call(
      {int? id,
      int? product_id,
      int? user_id,
      double? stars,
      String? description,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$ProductReviewModelCopyWithImpl<$Res, $Val extends ProductReviewModel>
    implements $ProductReviewModelCopyWith<$Res> {
  _$ProductReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? user_id = freezed,
    Object? stars = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductReviewModelImplCopyWith<$Res>
    implements $ProductReviewModelCopyWith<$Res> {
  factory _$$ProductReviewModelImplCopyWith(_$ProductReviewModelImpl value,
          $Res Function(_$ProductReviewModelImpl) then) =
      __$$ProductReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? product_id,
      int? user_id,
      double? stars,
      String? description,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$ProductReviewModelImplCopyWithImpl<$Res>
    extends _$ProductReviewModelCopyWithImpl<$Res, _$ProductReviewModelImpl>
    implements _$$ProductReviewModelImplCopyWith<$Res> {
  __$$ProductReviewModelImplCopyWithImpl(_$ProductReviewModelImpl _value,
      $Res Function(_$ProductReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_id = freezed,
    Object? user_id = freezed,
    Object? stars = freezed,
    Object? description = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$ProductReviewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_id: freezed == product_id
          ? _value.product_id
          : product_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      stars: freezed == stars
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$ProductReviewModelImpl implements _ProductReviewModel {
  const _$ProductReviewModelImpl(
      {this.id,
      this.product_id,
      this.user_id,
      this.stars,
      this.description,
      this.created_at,
      this.updated_at,
      this.deleted_at});

  factory _$ProductReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductReviewModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? product_id;
  @override
  final int? user_id;
  @override
  final double? stars;
  @override
  final String? description;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'ProductReviewModel(id: $id, product_id: $product_id, user_id: $user_id, stars: $stars, description: $description, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductReviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product_id, product_id) ||
                other.product_id == product_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, product_id, user_id, stars,
      description, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductReviewModelImplCopyWith<_$ProductReviewModelImpl> get copyWith =>
      __$$ProductReviewModelImplCopyWithImpl<_$ProductReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductReviewModelImplToJson(
      this,
    );
  }
}

abstract class _ProductReviewModel implements ProductReviewModel {
  const factory _ProductReviewModel(
      {final int? id,
      final int? product_id,
      final int? user_id,
      final double? stars,
      final String? description,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$ProductReviewModelImpl;

  factory _ProductReviewModel.fromJson(Map<String, dynamic> json) =
      _$ProductReviewModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get product_id;
  @override
  int? get user_id;
  @override
  double? get stars;
  @override
  String? get description;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$ProductReviewModelImplCopyWith<_$ProductReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
