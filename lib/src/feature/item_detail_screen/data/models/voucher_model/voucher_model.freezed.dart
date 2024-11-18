// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VoucherModel _$VoucherModelFromJson(Map<String, dynamic> json) {
  return _VoucherModel.fromJson(json);
}

/// @nodoc
mixin _$VoucherModel {
  int? get id => throw _privateConstructorUsedError;
  String? get coupon_name => throw _privateConstructorUsedError;
  String? get coupon_code => throw _privateConstructorUsedError;
  String? get discount_type => throw _privateConstructorUsedError;
  int? get discount_value => throw _privateConstructorUsedError;
  int? get max_discount_value => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get usage_limit_coupon => throw _privateConstructorUsedError;
  String? get usage_limit_user => throw _privateConstructorUsedError;
  int? get use_count => throw _privateConstructorUsedError;
  int? get min_order => throw _privateConstructorUsedError;
  String? get expire_date => throw _privateConstructorUsedError;
  int? get show_on_product => throw _privateConstructorUsedError;
  int? get show_on_cart => throw _privateConstructorUsedError;
  String? get applicable_area => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VoucherModelCopyWith<VoucherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoucherModelCopyWith<$Res> {
  factory $VoucherModelCopyWith(
          VoucherModel value, $Res Function(VoucherModel) then) =
      _$VoucherModelCopyWithImpl<$Res, VoucherModel>;
  @useResult
  $Res call(
      {int? id,
      String? coupon_name,
      String? coupon_code,
      String? discount_type,
      int? discount_value,
      int? max_discount_value,
      String? description,
      String? usage_limit_coupon,
      String? usage_limit_user,
      int? use_count,
      int? min_order,
      String? expire_date,
      int? show_on_product,
      int? show_on_cart,
      String? applicable_area,
      String? status,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class _$VoucherModelCopyWithImpl<$Res, $Val extends VoucherModel>
    implements $VoucherModelCopyWith<$Res> {
  _$VoucherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coupon_name = freezed,
    Object? coupon_code = freezed,
    Object? discount_type = freezed,
    Object? discount_value = freezed,
    Object? max_discount_value = freezed,
    Object? description = freezed,
    Object? usage_limit_coupon = freezed,
    Object? usage_limit_user = freezed,
    Object? use_count = freezed,
    Object? min_order = freezed,
    Object? expire_date = freezed,
    Object? show_on_product = freezed,
    Object? show_on_cart = freezed,
    Object? applicable_area = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_name: freezed == coupon_name
          ? _value.coupon_name
          : coupon_name // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon_code: freezed == coupon_code
          ? _value.coupon_code
          : coupon_code // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_type: freezed == discount_type
          ? _value.discount_type
          : discount_type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_value: freezed == discount_value
          ? _value.discount_value
          : discount_value // ignore: cast_nullable_to_non_nullable
              as int?,
      max_discount_value: freezed == max_discount_value
          ? _value.max_discount_value
          : max_discount_value // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      usage_limit_coupon: freezed == usage_limit_coupon
          ? _value.usage_limit_coupon
          : usage_limit_coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      usage_limit_user: freezed == usage_limit_user
          ? _value.usage_limit_user
          : usage_limit_user // ignore: cast_nullable_to_non_nullable
              as String?,
      use_count: freezed == use_count
          ? _value.use_count
          : use_count // ignore: cast_nullable_to_non_nullable
              as int?,
      min_order: freezed == min_order
          ? _value.min_order
          : min_order // ignore: cast_nullable_to_non_nullable
              as int?,
      expire_date: freezed == expire_date
          ? _value.expire_date
          : expire_date // ignore: cast_nullable_to_non_nullable
              as String?,
      show_on_product: freezed == show_on_product
          ? _value.show_on_product
          : show_on_product // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_cart: freezed == show_on_cart
          ? _value.show_on_cart
          : show_on_cart // ignore: cast_nullable_to_non_nullable
              as int?,
      applicable_area: freezed == applicable_area
          ? _value.applicable_area
          : applicable_area // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VoucherModelImplCopyWith<$Res>
    implements $VoucherModelCopyWith<$Res> {
  factory _$$VoucherModelImplCopyWith(
          _$VoucherModelImpl value, $Res Function(_$VoucherModelImpl) then) =
      __$$VoucherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? coupon_name,
      String? coupon_code,
      String? discount_type,
      int? discount_value,
      int? max_discount_value,
      String? description,
      String? usage_limit_coupon,
      String? usage_limit_user,
      int? use_count,
      int? min_order,
      String? expire_date,
      int? show_on_product,
      int? show_on_cart,
      String? applicable_area,
      String? status,
      String? created_at,
      String? updated_at});
}

/// @nodoc
class __$$VoucherModelImplCopyWithImpl<$Res>
    extends _$VoucherModelCopyWithImpl<$Res, _$VoucherModelImpl>
    implements _$$VoucherModelImplCopyWith<$Res> {
  __$$VoucherModelImplCopyWithImpl(
      _$VoucherModelImpl _value, $Res Function(_$VoucherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? coupon_name = freezed,
    Object? coupon_code = freezed,
    Object? discount_type = freezed,
    Object? discount_value = freezed,
    Object? max_discount_value = freezed,
    Object? description = freezed,
    Object? usage_limit_coupon = freezed,
    Object? usage_limit_user = freezed,
    Object? use_count = freezed,
    Object? min_order = freezed,
    Object? expire_date = freezed,
    Object? show_on_product = freezed,
    Object? show_on_cart = freezed,
    Object? applicable_area = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
  }) {
    return _then(_$VoucherModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_name: freezed == coupon_name
          ? _value.coupon_name
          : coupon_name // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon_code: freezed == coupon_code
          ? _value.coupon_code
          : coupon_code // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_type: freezed == discount_type
          ? _value.discount_type
          : discount_type // ignore: cast_nullable_to_non_nullable
              as String?,
      discount_value: freezed == discount_value
          ? _value.discount_value
          : discount_value // ignore: cast_nullable_to_non_nullable
              as int?,
      max_discount_value: freezed == max_discount_value
          ? _value.max_discount_value
          : max_discount_value // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      usage_limit_coupon: freezed == usage_limit_coupon
          ? _value.usage_limit_coupon
          : usage_limit_coupon // ignore: cast_nullable_to_non_nullable
              as String?,
      usage_limit_user: freezed == usage_limit_user
          ? _value.usage_limit_user
          : usage_limit_user // ignore: cast_nullable_to_non_nullable
              as String?,
      use_count: freezed == use_count
          ? _value.use_count
          : use_count // ignore: cast_nullable_to_non_nullable
              as int?,
      min_order: freezed == min_order
          ? _value.min_order
          : min_order // ignore: cast_nullable_to_non_nullable
              as int?,
      expire_date: freezed == expire_date
          ? _value.expire_date
          : expire_date // ignore: cast_nullable_to_non_nullable
              as String?,
      show_on_product: freezed == show_on_product
          ? _value.show_on_product
          : show_on_product // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_cart: freezed == show_on_cart
          ? _value.show_on_cart
          : show_on_cart // ignore: cast_nullable_to_non_nullable
              as int?,
      applicable_area: freezed == applicable_area
          ? _value.applicable_area
          : applicable_area // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$VoucherModelImpl implements _VoucherModel {
  const _$VoucherModelImpl(
      {this.id,
      this.coupon_name,
      this.coupon_code,
      this.discount_type,
      this.discount_value,
      this.max_discount_value,
      this.description,
      this.usage_limit_coupon,
      this.usage_limit_user,
      this.use_count,
      this.min_order,
      this.expire_date,
      this.show_on_product,
      this.show_on_cart,
      this.applicable_area,
      this.status,
      this.created_at,
      this.updated_at});

  factory _$VoucherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$VoucherModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? coupon_name;
  @override
  final String? coupon_code;
  @override
  final String? discount_type;
  @override
  final int? discount_value;
  @override
  final int? max_discount_value;
  @override
  final String? description;
  @override
  final String? usage_limit_coupon;
  @override
  final String? usage_limit_user;
  @override
  final int? use_count;
  @override
  final int? min_order;
  @override
  final String? expire_date;
  @override
  final int? show_on_product;
  @override
  final int? show_on_cart;
  @override
  final String? applicable_area;
  @override
  final String? status;
  @override
  final String? created_at;
  @override
  final String? updated_at;

  @override
  String toString() {
    return 'VoucherModel(id: $id, coupon_name: $coupon_name, coupon_code: $coupon_code, discount_type: $discount_type, discount_value: $discount_value, max_discount_value: $max_discount_value, description: $description, usage_limit_coupon: $usage_limit_coupon, usage_limit_user: $usage_limit_user, use_count: $use_count, min_order: $min_order, expire_date: $expire_date, show_on_product: $show_on_product, show_on_cart: $show_on_cart, applicable_area: $applicable_area, status: $status, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoucherModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.coupon_name, coupon_name) ||
                other.coupon_name == coupon_name) &&
            (identical(other.coupon_code, coupon_code) ||
                other.coupon_code == coupon_code) &&
            (identical(other.discount_type, discount_type) ||
                other.discount_type == discount_type) &&
            (identical(other.discount_value, discount_value) ||
                other.discount_value == discount_value) &&
            (identical(other.max_discount_value, max_discount_value) ||
                other.max_discount_value == max_discount_value) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.usage_limit_coupon, usage_limit_coupon) ||
                other.usage_limit_coupon == usage_limit_coupon) &&
            (identical(other.usage_limit_user, usage_limit_user) ||
                other.usage_limit_user == usage_limit_user) &&
            (identical(other.use_count, use_count) ||
                other.use_count == use_count) &&
            (identical(other.min_order, min_order) ||
                other.min_order == min_order) &&
            (identical(other.expire_date, expire_date) ||
                other.expire_date == expire_date) &&
            (identical(other.show_on_product, show_on_product) ||
                other.show_on_product == show_on_product) &&
            (identical(other.show_on_cart, show_on_cart) ||
                other.show_on_cart == show_on_cart) &&
            (identical(other.applicable_area, applicable_area) ||
                other.applicable_area == applicable_area) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      coupon_name,
      coupon_code,
      discount_type,
      discount_value,
      max_discount_value,
      description,
      usage_limit_coupon,
      usage_limit_user,
      use_count,
      min_order,
      expire_date,
      show_on_product,
      show_on_cart,
      applicable_area,
      status,
      created_at,
      updated_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VoucherModelImplCopyWith<_$VoucherModelImpl> get copyWith =>
      __$$VoucherModelImplCopyWithImpl<_$VoucherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VoucherModelImplToJson(
      this,
    );
  }
}

abstract class _VoucherModel implements VoucherModel {
  const factory _VoucherModel(
      {final int? id,
      final String? coupon_name,
      final String? coupon_code,
      final String? discount_type,
      final int? discount_value,
      final int? max_discount_value,
      final String? description,
      final String? usage_limit_coupon,
      final String? usage_limit_user,
      final int? use_count,
      final int? min_order,
      final String? expire_date,
      final int? show_on_product,
      final int? show_on_cart,
      final String? applicable_area,
      final String? status,
      final String? created_at,
      final String? updated_at}) = _$VoucherModelImpl;

  factory _VoucherModel.fromJson(Map<String, dynamic> json) =
      _$VoucherModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get coupon_name;
  @override
  String? get coupon_code;
  @override
  String? get discount_type;
  @override
  int? get discount_value;
  @override
  int? get max_discount_value;
  @override
  String? get description;
  @override
  String? get usage_limit_coupon;
  @override
  String? get usage_limit_user;
  @override
  int? get use_count;
  @override
  int? get min_order;
  @override
  String? get expire_date;
  @override
  int? get show_on_product;
  @override
  int? get show_on_cart;
  @override
  String? get applicable_area;
  @override
  String? get status;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  @JsonKey(ignore: true)
  _$$VoucherModelImplCopyWith<_$VoucherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
