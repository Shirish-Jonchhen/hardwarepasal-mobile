// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponResponseModel _$CouponResponseModelFromJson(Map<String, dynamic> json) {
  return _CouponResponseModel.fromJson(json);
}

/// @nodoc
mixin _$CouponResponseModel {
  int? get code => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  CouponData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponResponseModelCopyWith<CouponResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponResponseModelCopyWith<$Res> {
  factory $CouponResponseModelCopyWith(
          CouponResponseModel value, $Res Function(CouponResponseModel) then) =
      _$CouponResponseModelCopyWithImpl<$Res, CouponResponseModel>;
  @useResult
  $Res call({int? code, String? message, CouponData? data});

  $CouponDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CouponResponseModelCopyWithImpl<$Res, $Val extends CouponResponseModel>
    implements $CouponResponseModelCopyWith<$Res> {
  _$CouponResponseModelCopyWithImpl(this._value, this._then);

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
              as CouponData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CouponDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $CouponDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CouponResponseModelImplCopyWith<$Res>
    implements $CouponResponseModelCopyWith<$Res> {
  factory _$$CouponResponseModelImplCopyWith(_$CouponResponseModelImpl value,
          $Res Function(_$CouponResponseModelImpl) then) =
      __$$CouponResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? message, CouponData? data});

  @override
  $CouponDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CouponResponseModelImplCopyWithImpl<$Res>
    extends _$CouponResponseModelCopyWithImpl<$Res, _$CouponResponseModelImpl>
    implements _$$CouponResponseModelImplCopyWith<$Res> {
  __$$CouponResponseModelImplCopyWithImpl(_$CouponResponseModelImpl _value,
      $Res Function(_$CouponResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CouponResponseModelImpl(
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
              as CouponData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponResponseModelImpl implements _CouponResponseModel {
  const _$CouponResponseModelImpl({this.code, this.message, this.data});

  factory _$CouponResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponResponseModelImplFromJson(json);

  @override
  final int? code;
  @override
  final String? message;
  @override
  final CouponData? data;

  @override
  String toString() {
    return 'CouponResponseModel(code: $code, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponResponseModelImpl &&
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
  _$$CouponResponseModelImplCopyWith<_$CouponResponseModelImpl> get copyWith =>
      __$$CouponResponseModelImplCopyWithImpl<_$CouponResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponResponseModelImplToJson(
      this,
    );
  }
}

abstract class _CouponResponseModel implements CouponResponseModel {
  const factory _CouponResponseModel(
      {final int? code,
      final String? message,
      final CouponData? data}) = _$CouponResponseModelImpl;

  factory _CouponResponseModel.fromJson(Map<String, dynamic> json) =
      _$CouponResponseModelImpl.fromJson;

  @override
  int? get code;
  @override
  String? get message;
  @override
  CouponData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CouponResponseModelImplCopyWith<_$CouponResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CouponData _$CouponDataFromJson(Map<String, dynamic> json) {
  return _CouponData.fromJson(json);
}

/// @nodoc
mixin _$CouponData {
  List<Product>? get data => throw _privateConstructorUsedError;
  String? get coupon_code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CouponDataCopyWith<CouponData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponDataCopyWith<$Res> {
  factory $CouponDataCopyWith(
          CouponData value, $Res Function(CouponData) then) =
      _$CouponDataCopyWithImpl<$Res, CouponData>;
  @useResult
  $Res call({List<Product>? data, String? coupon_code});
}

/// @nodoc
class _$CouponDataCopyWithImpl<$Res, $Val extends CouponData>
    implements $CouponDataCopyWith<$Res> {
  _$CouponDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? coupon_code = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      coupon_code: freezed == coupon_code
          ? _value.coupon_code
          : coupon_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CouponDataImplCopyWith<$Res>
    implements $CouponDataCopyWith<$Res> {
  factory _$$CouponDataImplCopyWith(
          _$CouponDataImpl value, $Res Function(_$CouponDataImpl) then) =
      __$$CouponDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Product>? data, String? coupon_code});
}

/// @nodoc
class __$$CouponDataImplCopyWithImpl<$Res>
    extends _$CouponDataCopyWithImpl<$Res, _$CouponDataImpl>
    implements _$$CouponDataImplCopyWith<$Res> {
  __$$CouponDataImplCopyWithImpl(
      _$CouponDataImpl _value, $Res Function(_$CouponDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? coupon_code = freezed,
  }) {
    return _then(_$CouponDataImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
      coupon_code: freezed == coupon_code
          ? _value.coupon_code
          : coupon_code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CouponDataImpl implements _CouponData {
  const _$CouponDataImpl({final List<Product>? data, this.coupon_code})
      : _data = data;

  factory _$CouponDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponDataImplFromJson(json);

  final List<Product>? _data;
  @override
  List<Product>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? coupon_code;

  @override
  String toString() {
    return 'CouponData(data: $data, coupon_code: $coupon_code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponDataImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.coupon_code, coupon_code) ||
                other.coupon_code == coupon_code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), coupon_code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CouponDataImplCopyWith<_$CouponDataImpl> get copyWith =>
      __$$CouponDataImplCopyWithImpl<_$CouponDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponDataImplToJson(
      this,
    );
  }
}

abstract class _CouponData implements CouponData {
  const factory _CouponData(
      {final List<Product>? data,
      final String? coupon_code}) = _$CouponDataImpl;

  factory _CouponData.fromJson(Map<String, dynamic> json) =
      _$CouponDataImpl.fromJson;

  @override
  List<Product>? get data;
  @override
  String? get coupon_code;
  @override
  @JsonKey(ignore: true)
  _$$CouponDataImplCopyWith<_$CouponDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int? get id => throw _privateConstructorUsedError;
  int? get product_cat_id => throw _privateConstructorUsedError;
  int? get sup_id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get cover_image => throw _privateConstructorUsedError;
  String? get model_no => throw _privateConstructorUsedError;
  String? get old_price => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  String? get xtraAttribute => throw _privateConstructorUsedError;
  int? get weight => throw _privateConstructorUsedError;
  int? get quantity => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  int? get brand_id => throw _privateConstructorUsedError;
  int? get group_category_id => throw _privateConstructorUsedError;
  int? get clearanceSale => throw _privateConstructorUsedError;
  String? get specification => throw _privateConstructorUsedError;
  String? get delivery_days => throw _privateConstructorUsedError;
  String? get express_delivery_days => throw _privateConstructorUsedError;
  int? get express_delivery_price => throw _privateConstructorUsedError;
  int? get discount => throw _privateConstructorUsedError;
  String? get meta_keywords => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get meta_title => throw _privateConstructorUsedError;
  String? get hot_deal => throw _privateConstructorUsedError;
  String? get warrenty => throw _privateConstructorUsedError;
  String? get hpxpress => throw _privateConstructorUsedError;
  int? get view_count => throw _privateConstructorUsedError;
  String? get video_link => throw _privateConstructorUsedError;
  int? get is_blocked => throw _privateConstructorUsedError;
  int? get is_ask_price => throw _privateConstructorUsedError;
  int? get after_discount_price => throw _privateConstructorUsedError;
  String? get coupon_type => throw _privateConstructorUsedError;
  int? get coupon_value => throw _privateConstructorUsedError;
  String? get coupon_code => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int? id,
      int? product_cat_id,
      int? sup_id,
      String? name,
      String? description,
      String? cover_image,
      String? model_no,
      String? old_price,
      int? price,
      String? xtraAttribute,
      int? weight,
      int? quantity,
      String? status,
      String? slug,
      DateTime? created_at,
      DateTime? updated_at,
      int? brand_id,
      int? group_category_id,
      int? clearanceSale,
      String? specification,
      String? delivery_days,
      String? express_delivery_days,
      int? express_delivery_price,
      int? discount,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      String? hot_deal,
      String? warrenty,
      String? hpxpress,
      int? view_count,
      String? video_link,
      int? is_blocked,
      int? is_ask_price,
      int? after_discount_price,
      String? coupon_type,
      int? coupon_value,
      String? coupon_code,
      Category? category});

  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_cat_id = freezed,
    Object? sup_id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? cover_image = freezed,
    Object? model_no = freezed,
    Object? old_price = freezed,
    Object? price = freezed,
    Object? xtraAttribute = freezed,
    Object? weight = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? slug = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? brand_id = freezed,
    Object? group_category_id = freezed,
    Object? clearanceSale = freezed,
    Object? specification = freezed,
    Object? delivery_days = freezed,
    Object? express_delivery_days = freezed,
    Object? express_delivery_price = freezed,
    Object? discount = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? hot_deal = freezed,
    Object? warrenty = freezed,
    Object? hpxpress = freezed,
    Object? view_count = freezed,
    Object? video_link = freezed,
    Object? is_blocked = freezed,
    Object? is_ask_price = freezed,
    Object? after_discount_price = freezed,
    Object? coupon_type = freezed,
    Object? coupon_value = freezed,
    Object? coupon_code = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_cat_id: freezed == product_cat_id
          ? _value.product_cat_id
          : product_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sup_id: freezed == sup_id
          ? _value.sup_id
          : sup_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_image: freezed == cover_image
          ? _value.cover_image
          : cover_image // ignore: cast_nullable_to_non_nullable
              as String?,
      model_no: freezed == model_no
          ? _value.model_no
          : model_no // ignore: cast_nullable_to_non_nullable
              as String?,
      old_price: freezed == old_price
          ? _value.old_price
          : old_price // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      xtraAttribute: freezed == xtraAttribute
          ? _value.xtraAttribute
          : xtraAttribute // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brand_id: freezed == brand_id
          ? _value.brand_id
          : brand_id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_category_id: freezed == group_category_id
          ? _value.group_category_id
          : group_category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      clearanceSale: freezed == clearanceSale
          ? _value.clearanceSale
          : clearanceSale // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_days: freezed == delivery_days
          ? _value.delivery_days
          : delivery_days // ignore: cast_nullable_to_non_nullable
              as String?,
      express_delivery_days: freezed == express_delivery_days
          ? _value.express_delivery_days
          : express_delivery_days // ignore: cast_nullable_to_non_nullable
              as String?,
      express_delivery_price: freezed == express_delivery_price
          ? _value.express_delivery_price
          : express_delivery_price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      hot_deal: freezed == hot_deal
          ? _value.hot_deal
          : hot_deal // ignore: cast_nullable_to_non_nullable
              as String?,
      warrenty: freezed == warrenty
          ? _value.warrenty
          : warrenty // ignore: cast_nullable_to_non_nullable
              as String?,
      hpxpress: freezed == hpxpress
          ? _value.hpxpress
          : hpxpress // ignore: cast_nullable_to_non_nullable
              as String?,
      view_count: freezed == view_count
          ? _value.view_count
          : view_count // ignore: cast_nullable_to_non_nullable
              as int?,
      video_link: freezed == video_link
          ? _value.video_link
          : video_link // ignore: cast_nullable_to_non_nullable
              as String?,
      is_blocked: freezed == is_blocked
          ? _value.is_blocked
          : is_blocked // ignore: cast_nullable_to_non_nullable
              as int?,
      is_ask_price: freezed == is_ask_price
          ? _value.is_ask_price
          : is_ask_price // ignore: cast_nullable_to_non_nullable
              as int?,
      after_discount_price: freezed == after_discount_price
          ? _value.after_discount_price
          : after_discount_price // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_type: freezed == coupon_type
          ? _value.coupon_type
          : coupon_type // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon_value: freezed == coupon_value
          ? _value.coupon_value
          : coupon_value // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_code: freezed == coupon_code
          ? _value.coupon_code
          : coupon_code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? product_cat_id,
      int? sup_id,
      String? name,
      String? description,
      String? cover_image,
      String? model_no,
      String? old_price,
      int? price,
      String? xtraAttribute,
      int? weight,
      int? quantity,
      String? status,
      String? slug,
      DateTime? created_at,
      DateTime? updated_at,
      int? brand_id,
      int? group_category_id,
      int? clearanceSale,
      String? specification,
      String? delivery_days,
      String? express_delivery_days,
      int? express_delivery_price,
      int? discount,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      String? hot_deal,
      String? warrenty,
      String? hpxpress,
      int? view_count,
      String? video_link,
      int? is_blocked,
      int? is_ask_price,
      int? after_discount_price,
      String? coupon_type,
      int? coupon_value,
      String? coupon_code,
      Category? category});

  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? product_cat_id = freezed,
    Object? sup_id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? cover_image = freezed,
    Object? model_no = freezed,
    Object? old_price = freezed,
    Object? price = freezed,
    Object? xtraAttribute = freezed,
    Object? weight = freezed,
    Object? quantity = freezed,
    Object? status = freezed,
    Object? slug = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? brand_id = freezed,
    Object? group_category_id = freezed,
    Object? clearanceSale = freezed,
    Object? specification = freezed,
    Object? delivery_days = freezed,
    Object? express_delivery_days = freezed,
    Object? express_delivery_price = freezed,
    Object? discount = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? hot_deal = freezed,
    Object? warrenty = freezed,
    Object? hpxpress = freezed,
    Object? view_count = freezed,
    Object? video_link = freezed,
    Object? is_blocked = freezed,
    Object? is_ask_price = freezed,
    Object? after_discount_price = freezed,
    Object? coupon_type = freezed,
    Object? coupon_value = freezed,
    Object? coupon_code = freezed,
    Object? category = freezed,
  }) {
    return _then(_$ProductImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      product_cat_id: freezed == product_cat_id
          ? _value.product_cat_id
          : product_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sup_id: freezed == sup_id
          ? _value.sup_id
          : sup_id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      cover_image: freezed == cover_image
          ? _value.cover_image
          : cover_image // ignore: cast_nullable_to_non_nullable
              as String?,
      model_no: freezed == model_no
          ? _value.model_no
          : model_no // ignore: cast_nullable_to_non_nullable
              as String?,
      old_price: freezed == old_price
          ? _value.old_price
          : old_price // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      xtraAttribute: freezed == xtraAttribute
          ? _value.xtraAttribute
          : xtraAttribute // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      brand_id: freezed == brand_id
          ? _value.brand_id
          : brand_id // ignore: cast_nullable_to_non_nullable
              as int?,
      group_category_id: freezed == group_category_id
          ? _value.group_category_id
          : group_category_id // ignore: cast_nullable_to_non_nullable
              as int?,
      clearanceSale: freezed == clearanceSale
          ? _value.clearanceSale
          : clearanceSale // ignore: cast_nullable_to_non_nullable
              as int?,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery_days: freezed == delivery_days
          ? _value.delivery_days
          : delivery_days // ignore: cast_nullable_to_non_nullable
              as String?,
      express_delivery_days: freezed == express_delivery_days
          ? _value.express_delivery_days
          : express_delivery_days // ignore: cast_nullable_to_non_nullable
              as String?,
      express_delivery_price: freezed == express_delivery_price
          ? _value.express_delivery_price
          : express_delivery_price // ignore: cast_nullable_to_non_nullable
              as int?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as int?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      hot_deal: freezed == hot_deal
          ? _value.hot_deal
          : hot_deal // ignore: cast_nullable_to_non_nullable
              as String?,
      warrenty: freezed == warrenty
          ? _value.warrenty
          : warrenty // ignore: cast_nullable_to_non_nullable
              as String?,
      hpxpress: freezed == hpxpress
          ? _value.hpxpress
          : hpxpress // ignore: cast_nullable_to_non_nullable
              as String?,
      view_count: freezed == view_count
          ? _value.view_count
          : view_count // ignore: cast_nullable_to_non_nullable
              as int?,
      video_link: freezed == video_link
          ? _value.video_link
          : video_link // ignore: cast_nullable_to_non_nullable
              as String?,
      is_blocked: freezed == is_blocked
          ? _value.is_blocked
          : is_blocked // ignore: cast_nullable_to_non_nullable
              as int?,
      is_ask_price: freezed == is_ask_price
          ? _value.is_ask_price
          : is_ask_price // ignore: cast_nullable_to_non_nullable
              as int?,
      after_discount_price: freezed == after_discount_price
          ? _value.after_discount_price
          : after_discount_price // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_type: freezed == coupon_type
          ? _value.coupon_type
          : coupon_type // ignore: cast_nullable_to_non_nullable
              as String?,
      coupon_value: freezed == coupon_value
          ? _value.coupon_value
          : coupon_value // ignore: cast_nullable_to_non_nullable
              as int?,
      coupon_code: freezed == coupon_code
          ? _value.coupon_code
          : coupon_code // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {this.id,
      this.product_cat_id,
      this.sup_id,
      this.name,
      this.description,
      this.cover_image,
      this.model_no,
      this.old_price,
      this.price,
      this.xtraAttribute,
      this.weight,
      this.quantity,
      this.status,
      this.slug,
      this.created_at,
      this.updated_at,
      this.brand_id,
      this.group_category_id,
      this.clearanceSale,
      this.specification,
      this.delivery_days,
      this.express_delivery_days,
      this.express_delivery_price,
      this.discount,
      this.meta_keywords,
      this.meta_description,
      this.meta_title,
      this.hot_deal,
      this.warrenty,
      this.hpxpress,
      this.view_count,
      this.video_link,
      this.is_blocked,
      this.is_ask_price,
      this.after_discount_price,
      this.coupon_type,
      this.coupon_value,
      this.coupon_code,
      this.category});

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int? id;
  @override
  final int? product_cat_id;
  @override
  final int? sup_id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? cover_image;
  @override
  final String? model_no;
  @override
  final String? old_price;
  @override
  final int? price;
  @override
  final String? xtraAttribute;
  @override
  final int? weight;
  @override
  final int? quantity;
  @override
  final String? status;
  @override
  final String? slug;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final int? brand_id;
  @override
  final int? group_category_id;
  @override
  final int? clearanceSale;
  @override
  final String? specification;
  @override
  final String? delivery_days;
  @override
  final String? express_delivery_days;
  @override
  final int? express_delivery_price;
  @override
  final int? discount;
  @override
  final String? meta_keywords;
  @override
  final String? meta_description;
  @override
  final String? meta_title;
  @override
  final String? hot_deal;
  @override
  final String? warrenty;
  @override
  final String? hpxpress;
  @override
  final int? view_count;
  @override
  final String? video_link;
  @override
  final int? is_blocked;
  @override
  final int? is_ask_price;
  @override
  final int? after_discount_price;
  @override
  final String? coupon_type;
  @override
  final int? coupon_value;
  @override
  final String? coupon_code;
  @override
  final Category? category;

  @override
  String toString() {
    return 'Product(id: $id, product_cat_id: $product_cat_id, sup_id: $sup_id, name: $name, description: $description, cover_image: $cover_image, model_no: $model_no, old_price: $old_price, price: $price, xtraAttribute: $xtraAttribute, weight: $weight, quantity: $quantity, status: $status, slug: $slug, created_at: $created_at, updated_at: $updated_at, brand_id: $brand_id, group_category_id: $group_category_id, clearanceSale: $clearanceSale, specification: $specification, delivery_days: $delivery_days, express_delivery_days: $express_delivery_days, express_delivery_price: $express_delivery_price, discount: $discount, meta_keywords: $meta_keywords, meta_description: $meta_description, meta_title: $meta_title, hot_deal: $hot_deal, warrenty: $warrenty, hpxpress: $hpxpress, view_count: $view_count, video_link: $video_link, is_blocked: $is_blocked, is_ask_price: $is_ask_price, after_discount_price: $after_discount_price, coupon_type: $coupon_type, coupon_value: $coupon_value, coupon_code: $coupon_code, category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.product_cat_id, product_cat_id) ||
                other.product_cat_id == product_cat_id) &&
            (identical(other.sup_id, sup_id) || other.sup_id == sup_id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.cover_image, cover_image) ||
                other.cover_image == cover_image) &&
            (identical(other.model_no, model_no) ||
                other.model_no == model_no) &&
            (identical(other.old_price, old_price) ||
                other.old_price == old_price) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.xtraAttribute, xtraAttribute) ||
                other.xtraAttribute == xtraAttribute) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.brand_id, brand_id) ||
                other.brand_id == brand_id) &&
            (identical(other.group_category_id, group_category_id) ||
                other.group_category_id == group_category_id) &&
            (identical(other.clearanceSale, clearanceSale) ||
                other.clearanceSale == clearanceSale) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            (identical(other.delivery_days, delivery_days) ||
                other.delivery_days == delivery_days) &&
            (identical(other.express_delivery_days, express_delivery_days) ||
                other.express_delivery_days == express_delivery_days) &&
            (identical(other.express_delivery_price, express_delivery_price) ||
                other.express_delivery_price == express_delivery_price) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.meta_keywords, meta_keywords) ||
                other.meta_keywords == meta_keywords) &&
            (identical(other.meta_description, meta_description) ||
                other.meta_description == meta_description) &&
            (identical(other.meta_title, meta_title) ||
                other.meta_title == meta_title) &&
            (identical(other.hot_deal, hot_deal) ||
                other.hot_deal == hot_deal) &&
            (identical(other.warrenty, warrenty) ||
                other.warrenty == warrenty) &&
            (identical(other.hpxpress, hpxpress) ||
                other.hpxpress == hpxpress) &&
            (identical(other.view_count, view_count) ||
                other.view_count == view_count) &&
            (identical(other.video_link, video_link) ||
                other.video_link == video_link) &&
            (identical(other.is_blocked, is_blocked) ||
                other.is_blocked == is_blocked) &&
            (identical(other.is_ask_price, is_ask_price) ||
                other.is_ask_price == is_ask_price) &&
            (identical(other.after_discount_price, after_discount_price) ||
                other.after_discount_price == after_discount_price) &&
            (identical(other.coupon_type, coupon_type) ||
                other.coupon_type == coupon_type) &&
            (identical(other.coupon_value, coupon_value) ||
                other.coupon_value == coupon_value) &&
            (identical(other.coupon_code, coupon_code) ||
                other.coupon_code == coupon_code) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        product_cat_id,
        sup_id,
        name,
        description,
        cover_image,
        model_no,
        old_price,
        price,
        xtraAttribute,
        weight,
        quantity,
        status,
        slug,
        created_at,
        updated_at,
        brand_id,
        group_category_id,
        clearanceSale,
        specification,
        delivery_days,
        express_delivery_days,
        express_delivery_price,
        discount,
        meta_keywords,
        meta_description,
        meta_title,
        hot_deal,
        warrenty,
        hpxpress,
        view_count,
        video_link,
        is_blocked,
        is_ask_price,
        after_discount_price,
        coupon_type,
        coupon_value,
        coupon_code,
        category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {final int? id,
      final int? product_cat_id,
      final int? sup_id,
      final String? name,
      final String? description,
      final String? cover_image,
      final String? model_no,
      final String? old_price,
      final int? price,
      final String? xtraAttribute,
      final int? weight,
      final int? quantity,
      final String? status,
      final String? slug,
      final DateTime? created_at,
      final DateTime? updated_at,
      final int? brand_id,
      final int? group_category_id,
      final int? clearanceSale,
      final String? specification,
      final String? delivery_days,
      final String? express_delivery_days,
      final int? express_delivery_price,
      final int? discount,
      final String? meta_keywords,
      final String? meta_description,
      final String? meta_title,
      final String? hot_deal,
      final String? warrenty,
      final String? hpxpress,
      final int? view_count,
      final String? video_link,
      final int? is_blocked,
      final int? is_ask_price,
      final int? after_discount_price,
      final String? coupon_type,
      final int? coupon_value,
      final String? coupon_code,
      final Category? category}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int? get id;
  @override
  int? get product_cat_id;
  @override
  int? get sup_id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get cover_image;
  @override
  String? get model_no;
  @override
  String? get old_price;
  @override
  int? get price;
  @override
  String? get xtraAttribute;
  @override
  int? get weight;
  @override
  int? get quantity;
  @override
  String? get status;
  @override
  String? get slug;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  int? get brand_id;
  @override
  int? get group_category_id;
  @override
  int? get clearanceSale;
  @override
  String? get specification;
  @override
  String? get delivery_days;
  @override
  String? get express_delivery_days;
  @override
  int? get express_delivery_price;
  @override
  int? get discount;
  @override
  String? get meta_keywords;
  @override
  String? get meta_description;
  @override
  String? get meta_title;
  @override
  String? get hot_deal;
  @override
  String? get warrenty;
  @override
  String? get hpxpress;
  @override
  int? get view_count;
  @override
  String? get video_link;
  @override
  int? get is_blocked;
  @override
  int? get is_ask_price;
  @override
  int? get after_discount_price;
  @override
  String? get coupon_type;
  @override
  int? get coupon_value;
  @override
  String? get coupon_code;
  @override
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get iconclass => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get sup_cat_id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get created_by => throw _privateConstructorUsedError;
  int? get updated_by => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  String? get meta_keywords => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get meta_title => throw _privateConstructorUsedError;
  int? get is_grouping => throw _privateConstructorUsedError;
  int? get display => throw _privateConstructorUsedError;
  int? get show_on_home => throw _privateConstructorUsedError;
  String? get offer_text => throw _privateConstructorUsedError;
  String? get display_text => throw _privateConstructorUsedError;
  String? get svg_icon => throw _privateConstructorUsedError;
  String? get public_path => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  SupCategory? get sup_category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? icon,
      String? iconclass,
      String? slug,
      int? sup_cat_id,
      String? status,
      int? created_by,
      int? updated_by,
      DateTime? created_at,
      DateTime? updated_at,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      int? is_grouping,
      int? display,
      int? show_on_home,
      String? offer_text,
      String? display_text,
      String? svg_icon,
      String? public_path,
      String? image_url,
      SupCategory? sup_category});

  $SupCategoryCopyWith<$Res>? get sup_category;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? iconclass = freezed,
    Object? slug = freezed,
    Object? sup_cat_id = freezed,
    Object? status = freezed,
    Object? created_by = freezed,
    Object? updated_by = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? is_grouping = freezed,
    Object? display = freezed,
    Object? show_on_home = freezed,
    Object? offer_text = freezed,
    Object? display_text = freezed,
    Object? svg_icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
    Object? sup_category = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_cat_id: freezed == sup_cat_id
          ? _value.sup_cat_id
          : sup_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_grouping: freezed == is_grouping
          ? _value.is_grouping
          : is_grouping // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_home: freezed == show_on_home
          ? _value.show_on_home
          : show_on_home // ignore: cast_nullable_to_non_nullable
              as int?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      display_text: freezed == display_text
          ? _value.display_text
          : display_text // ignore: cast_nullable_to_non_nullable
              as String?,
      svg_icon: freezed == svg_icon
          ? _value.svg_icon
          : svg_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_category: freezed == sup_category
          ? _value.sup_category
          : sup_category // ignore: cast_nullable_to_non_nullable
              as SupCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupCategoryCopyWith<$Res>? get sup_category {
    if (_value.sup_category == null) {
      return null;
    }

    return $SupCategoryCopyWith<$Res>(_value.sup_category!, (value) {
      return _then(_value.copyWith(sup_category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? icon,
      String? iconclass,
      String? slug,
      int? sup_cat_id,
      String? status,
      int? created_by,
      int? updated_by,
      DateTime? created_at,
      DateTime? updated_at,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      int? is_grouping,
      int? display,
      int? show_on_home,
      String? offer_text,
      String? display_text,
      String? svg_icon,
      String? public_path,
      String? image_url,
      SupCategory? sup_category});

  @override
  $SupCategoryCopyWith<$Res>? get sup_category;
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? iconclass = freezed,
    Object? slug = freezed,
    Object? sup_cat_id = freezed,
    Object? status = freezed,
    Object? created_by = freezed,
    Object? updated_by = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? is_grouping = freezed,
    Object? display = freezed,
    Object? show_on_home = freezed,
    Object? offer_text = freezed,
    Object? display_text = freezed,
    Object? svg_icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
    Object? sup_category = freezed,
  }) {
    return _then(_$CategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_cat_id: freezed == sup_cat_id
          ? _value.sup_cat_id
          : sup_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_grouping: freezed == is_grouping
          ? _value.is_grouping
          : is_grouping // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_home: freezed == show_on_home
          ? _value.show_on_home
          : show_on_home // ignore: cast_nullable_to_non_nullable
              as int?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      display_text: freezed == display_text
          ? _value.display_text
          : display_text // ignore: cast_nullable_to_non_nullable
              as String?,
      svg_icon: freezed == svg_icon
          ? _value.svg_icon
          : svg_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_category: freezed == sup_category
          ? _value.sup_category
          : sup_category // ignore: cast_nullable_to_non_nullable
              as SupCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {this.id,
      this.name,
      this.description,
      this.icon,
      this.iconclass,
      this.slug,
      this.sup_cat_id,
      this.status,
      this.created_by,
      this.updated_by,
      this.created_at,
      this.updated_at,
      this.meta_keywords,
      this.meta_description,
      this.meta_title,
      this.is_grouping,
      this.display,
      this.show_on_home,
      this.offer_text,
      this.display_text,
      this.svg_icon,
      this.public_path,
      this.image_url,
      this.sup_category});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  final String? iconclass;
  @override
  final String? slug;
  @override
  final int? sup_cat_id;
  @override
  final String? status;
  @override
  final int? created_by;
  @override
  final int? updated_by;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final String? meta_keywords;
  @override
  final String? meta_description;
  @override
  final String? meta_title;
  @override
  final int? is_grouping;
  @override
  final int? display;
  @override
  final int? show_on_home;
  @override
  final String? offer_text;
  @override
  final String? display_text;
  @override
  final String? svg_icon;
  @override
  final String? public_path;
  @override
  final String? image_url;
  @override
  final SupCategory? sup_category;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, description: $description, icon: $icon, iconclass: $iconclass, slug: $slug, sup_cat_id: $sup_cat_id, status: $status, created_by: $created_by, updated_by: $updated_by, created_at: $created_at, updated_at: $updated_at, meta_keywords: $meta_keywords, meta_description: $meta_description, meta_title: $meta_title, is_grouping: $is_grouping, display: $display, show_on_home: $show_on_home, offer_text: $offer_text, display_text: $display_text, svg_icon: $svg_icon, public_path: $public_path, image_url: $image_url, sup_category: $sup_category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconclass, iconclass) ||
                other.iconclass == iconclass) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.sup_cat_id, sup_cat_id) ||
                other.sup_cat_id == sup_cat_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.meta_keywords, meta_keywords) ||
                other.meta_keywords == meta_keywords) &&
            (identical(other.meta_description, meta_description) ||
                other.meta_description == meta_description) &&
            (identical(other.meta_title, meta_title) ||
                other.meta_title == meta_title) &&
            (identical(other.is_grouping, is_grouping) ||
                other.is_grouping == is_grouping) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.show_on_home, show_on_home) ||
                other.show_on_home == show_on_home) &&
            (identical(other.offer_text, offer_text) ||
                other.offer_text == offer_text) &&
            (identical(other.display_text, display_text) ||
                other.display_text == display_text) &&
            (identical(other.svg_icon, svg_icon) ||
                other.svg_icon == svg_icon) &&
            (identical(other.public_path, public_path) ||
                other.public_path == public_path) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.sup_category, sup_category) ||
                other.sup_category == sup_category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        icon,
        iconclass,
        slug,
        sup_cat_id,
        status,
        created_by,
        updated_by,
        created_at,
        updated_at,
        meta_keywords,
        meta_description,
        meta_title,
        is_grouping,
        display,
        show_on_home,
        offer_text,
        display_text,
        svg_icon,
        public_path,
        image_url,
        sup_category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {final int? id,
      final String? name,
      final String? description,
      final String? icon,
      final String? iconclass,
      final String? slug,
      final int? sup_cat_id,
      final String? status,
      final int? created_by,
      final int? updated_by,
      final DateTime? created_at,
      final DateTime? updated_at,
      final String? meta_keywords,
      final String? meta_description,
      final String? meta_title,
      final int? is_grouping,
      final int? display,
      final int? show_on_home,
      final String? offer_text,
      final String? display_text,
      final String? svg_icon,
      final String? public_path,
      final String? image_url,
      final SupCategory? sup_category}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  String? get iconclass;
  @override
  String? get slug;
  @override
  int? get sup_cat_id;
  @override
  String? get status;
  @override
  int? get created_by;
  @override
  int? get updated_by;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  String? get meta_keywords;
  @override
  String? get meta_description;
  @override
  String? get meta_title;
  @override
  int? get is_grouping;
  @override
  int? get display;
  @override
  int? get show_on_home;
  @override
  String? get offer_text;
  @override
  String? get display_text;
  @override
  String? get svg_icon;
  @override
  String? get public_path;
  @override
  String? get image_url;
  @override
  SupCategory? get sup_category;
  @override
  @JsonKey(ignore: true)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SupCategory _$SupCategoryFromJson(Map<String, dynamic> json) {
  return _SupCategory.fromJson(json);
}

/// @nodoc
mixin _$SupCategory {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;
  String? get iconclass => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get sup_cat_id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get created_by => throw _privateConstructorUsedError;
  int? get updated_by => throw _privateConstructorUsedError;
  DateTime? get created_at => throw _privateConstructorUsedError;
  DateTime? get updated_at => throw _privateConstructorUsedError;
  String? get meta_keywords => throw _privateConstructorUsedError;
  String? get meta_description => throw _privateConstructorUsedError;
  String? get meta_title => throw _privateConstructorUsedError;
  int? get is_grouping => throw _privateConstructorUsedError;
  int? get display => throw _privateConstructorUsedError;
  int? get show_on_home => throw _privateConstructorUsedError;
  String? get offer_text => throw _privateConstructorUsedError;
  String? get display_text => throw _privateConstructorUsedError;
  String? get svg_icon => throw _privateConstructorUsedError;
  String? get public_path => throw _privateConstructorUsedError;
  String? get image_url => throw _privateConstructorUsedError;
  SupCategory? get sup_category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SupCategoryCopyWith<SupCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupCategoryCopyWith<$Res> {
  factory $SupCategoryCopyWith(
          SupCategory value, $Res Function(SupCategory) then) =
      _$SupCategoryCopyWithImpl<$Res, SupCategory>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? icon,
      String? iconclass,
      String? slug,
      int? sup_cat_id,
      String? status,
      int? created_by,
      int? updated_by,
      DateTime? created_at,
      DateTime? updated_at,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      int? is_grouping,
      int? display,
      int? show_on_home,
      String? offer_text,
      String? display_text,
      String? svg_icon,
      String? public_path,
      String? image_url,
      SupCategory? sup_category});

  $SupCategoryCopyWith<$Res>? get sup_category;
}

/// @nodoc
class _$SupCategoryCopyWithImpl<$Res, $Val extends SupCategory>
    implements $SupCategoryCopyWith<$Res> {
  _$SupCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? iconclass = freezed,
    Object? slug = freezed,
    Object? sup_cat_id = freezed,
    Object? status = freezed,
    Object? created_by = freezed,
    Object? updated_by = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? is_grouping = freezed,
    Object? display = freezed,
    Object? show_on_home = freezed,
    Object? offer_text = freezed,
    Object? display_text = freezed,
    Object? svg_icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
    Object? sup_category = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_cat_id: freezed == sup_cat_id
          ? _value.sup_cat_id
          : sup_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_grouping: freezed == is_grouping
          ? _value.is_grouping
          : is_grouping // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_home: freezed == show_on_home
          ? _value.show_on_home
          : show_on_home // ignore: cast_nullable_to_non_nullable
              as int?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      display_text: freezed == display_text
          ? _value.display_text
          : display_text // ignore: cast_nullable_to_non_nullable
              as String?,
      svg_icon: freezed == svg_icon
          ? _value.svg_icon
          : svg_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_category: freezed == sup_category
          ? _value.sup_category
          : sup_category // ignore: cast_nullable_to_non_nullable
              as SupCategory?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SupCategoryCopyWith<$Res>? get sup_category {
    if (_value.sup_category == null) {
      return null;
    }

    return $SupCategoryCopyWith<$Res>(_value.sup_category!, (value) {
      return _then(_value.copyWith(sup_category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SupCategoryImplCopyWith<$Res>
    implements $SupCategoryCopyWith<$Res> {
  factory _$$SupCategoryImplCopyWith(
          _$SupCategoryImpl value, $Res Function(_$SupCategoryImpl) then) =
      __$$SupCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? description,
      String? icon,
      String? iconclass,
      String? slug,
      int? sup_cat_id,
      String? status,
      int? created_by,
      int? updated_by,
      DateTime? created_at,
      DateTime? updated_at,
      String? meta_keywords,
      String? meta_description,
      String? meta_title,
      int? is_grouping,
      int? display,
      int? show_on_home,
      String? offer_text,
      String? display_text,
      String? svg_icon,
      String? public_path,
      String? image_url,
      SupCategory? sup_category});

  @override
  $SupCategoryCopyWith<$Res>? get sup_category;
}

/// @nodoc
class __$$SupCategoryImplCopyWithImpl<$Res>
    extends _$SupCategoryCopyWithImpl<$Res, _$SupCategoryImpl>
    implements _$$SupCategoryImplCopyWith<$Res> {
  __$$SupCategoryImplCopyWithImpl(
      _$SupCategoryImpl _value, $Res Function(_$SupCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? icon = freezed,
    Object? iconclass = freezed,
    Object? slug = freezed,
    Object? sup_cat_id = freezed,
    Object? status = freezed,
    Object? created_by = freezed,
    Object? updated_by = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? meta_keywords = freezed,
    Object? meta_description = freezed,
    Object? meta_title = freezed,
    Object? is_grouping = freezed,
    Object? display = freezed,
    Object? show_on_home = freezed,
    Object? offer_text = freezed,
    Object? display_text = freezed,
    Object? svg_icon = freezed,
    Object? public_path = freezed,
    Object? image_url = freezed,
    Object? sup_category = freezed,
  }) {
    return _then(_$SupCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      iconclass: freezed == iconclass
          ? _value.iconclass
          : iconclass // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_cat_id: freezed == sup_cat_id
          ? _value.sup_cat_id
          : sup_cat_id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      created_by: freezed == created_by
          ? _value.created_by
          : created_by // ignore: cast_nullable_to_non_nullable
              as int?,
      updated_by: freezed == updated_by
          ? _value.updated_by
          : updated_by // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      meta_keywords: freezed == meta_keywords
          ? _value.meta_keywords
          : meta_keywords // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_description: freezed == meta_description
          ? _value.meta_description
          : meta_description // ignore: cast_nullable_to_non_nullable
              as String?,
      meta_title: freezed == meta_title
          ? _value.meta_title
          : meta_title // ignore: cast_nullable_to_non_nullable
              as String?,
      is_grouping: freezed == is_grouping
          ? _value.is_grouping
          : is_grouping // ignore: cast_nullable_to_non_nullable
              as int?,
      display: freezed == display
          ? _value.display
          : display // ignore: cast_nullable_to_non_nullable
              as int?,
      show_on_home: freezed == show_on_home
          ? _value.show_on_home
          : show_on_home // ignore: cast_nullable_to_non_nullable
              as int?,
      offer_text: freezed == offer_text
          ? _value.offer_text
          : offer_text // ignore: cast_nullable_to_non_nullable
              as String?,
      display_text: freezed == display_text
          ? _value.display_text
          : display_text // ignore: cast_nullable_to_non_nullable
              as String?,
      svg_icon: freezed == svg_icon
          ? _value.svg_icon
          : svg_icon // ignore: cast_nullable_to_non_nullable
              as String?,
      public_path: freezed == public_path
          ? _value.public_path
          : public_path // ignore: cast_nullable_to_non_nullable
              as String?,
      image_url: freezed == image_url
          ? _value.image_url
          : image_url // ignore: cast_nullable_to_non_nullable
              as String?,
      sup_category: freezed == sup_category
          ? _value.sup_category
          : sup_category // ignore: cast_nullable_to_non_nullable
              as SupCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SupCategoryImpl implements _SupCategory {
  const _$SupCategoryImpl(
      {this.id,
      this.name,
      this.description,
      this.icon,
      this.iconclass,
      this.slug,
      this.sup_cat_id,
      this.status,
      this.created_by,
      this.updated_by,
      this.created_at,
      this.updated_at,
      this.meta_keywords,
      this.meta_description,
      this.meta_title,
      this.is_grouping,
      this.display,
      this.show_on_home,
      this.offer_text,
      this.display_text,
      this.svg_icon,
      this.public_path,
      this.image_url,
      this.sup_category});

  factory _$SupCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SupCategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? icon;
  @override
  final String? iconclass;
  @override
  final String? slug;
  @override
  final int? sup_cat_id;
  @override
  final String? status;
  @override
  final int? created_by;
  @override
  final int? updated_by;
  @override
  final DateTime? created_at;
  @override
  final DateTime? updated_at;
  @override
  final String? meta_keywords;
  @override
  final String? meta_description;
  @override
  final String? meta_title;
  @override
  final int? is_grouping;
  @override
  final int? display;
  @override
  final int? show_on_home;
  @override
  final String? offer_text;
  @override
  final String? display_text;
  @override
  final String? svg_icon;
  @override
  final String? public_path;
  @override
  final String? image_url;
  @override
  final SupCategory? sup_category;

  @override
  String toString() {
    return 'SupCategory(id: $id, name: $name, description: $description, icon: $icon, iconclass: $iconclass, slug: $slug, sup_cat_id: $sup_cat_id, status: $status, created_by: $created_by, updated_by: $updated_by, created_at: $created_at, updated_at: $updated_at, meta_keywords: $meta_keywords, meta_description: $meta_description, meta_title: $meta_title, is_grouping: $is_grouping, display: $display, show_on_home: $show_on_home, offer_text: $offer_text, display_text: $display_text, svg_icon: $svg_icon, public_path: $public_path, image_url: $image_url, sup_category: $sup_category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconclass, iconclass) ||
                other.iconclass == iconclass) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.sup_cat_id, sup_cat_id) ||
                other.sup_cat_id == sup_cat_id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.created_by, created_by) ||
                other.created_by == created_by) &&
            (identical(other.updated_by, updated_by) ||
                other.updated_by == updated_by) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.meta_keywords, meta_keywords) ||
                other.meta_keywords == meta_keywords) &&
            (identical(other.meta_description, meta_description) ||
                other.meta_description == meta_description) &&
            (identical(other.meta_title, meta_title) ||
                other.meta_title == meta_title) &&
            (identical(other.is_grouping, is_grouping) ||
                other.is_grouping == is_grouping) &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.show_on_home, show_on_home) ||
                other.show_on_home == show_on_home) &&
            (identical(other.offer_text, offer_text) ||
                other.offer_text == offer_text) &&
            (identical(other.display_text, display_text) ||
                other.display_text == display_text) &&
            (identical(other.svg_icon, svg_icon) ||
                other.svg_icon == svg_icon) &&
            (identical(other.public_path, public_path) ||
                other.public_path == public_path) &&
            (identical(other.image_url, image_url) ||
                other.image_url == image_url) &&
            (identical(other.sup_category, sup_category) ||
                other.sup_category == sup_category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        description,
        icon,
        iconclass,
        slug,
        sup_cat_id,
        status,
        created_by,
        updated_by,
        created_at,
        updated_at,
        meta_keywords,
        meta_description,
        meta_title,
        is_grouping,
        display,
        show_on_home,
        offer_text,
        display_text,
        svg_icon,
        public_path,
        image_url,
        sup_category
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupCategoryImplCopyWith<_$SupCategoryImpl> get copyWith =>
      __$$SupCategoryImplCopyWithImpl<_$SupCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SupCategoryImplToJson(
      this,
    );
  }
}

abstract class _SupCategory implements SupCategory {
  const factory _SupCategory(
      {final int? id,
      final String? name,
      final String? description,
      final String? icon,
      final String? iconclass,
      final String? slug,
      final int? sup_cat_id,
      final String? status,
      final int? created_by,
      final int? updated_by,
      final DateTime? created_at,
      final DateTime? updated_at,
      final String? meta_keywords,
      final String? meta_description,
      final String? meta_title,
      final int? is_grouping,
      final int? display,
      final int? show_on_home,
      final String? offer_text,
      final String? display_text,
      final String? svg_icon,
      final String? public_path,
      final String? image_url,
      final SupCategory? sup_category}) = _$SupCategoryImpl;

  factory _SupCategory.fromJson(Map<String, dynamic> json) =
      _$SupCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get icon;
  @override
  String? get iconclass;
  @override
  String? get slug;
  @override
  int? get sup_cat_id;
  @override
  String? get status;
  @override
  int? get created_by;
  @override
  int? get updated_by;
  @override
  DateTime? get created_at;
  @override
  DateTime? get updated_at;
  @override
  String? get meta_keywords;
  @override
  String? get meta_description;
  @override
  String? get meta_title;
  @override
  int? get is_grouping;
  @override
  int? get display;
  @override
  int? get show_on_home;
  @override
  String? get offer_text;
  @override
  String? get display_text;
  @override
  String? get svg_icon;
  @override
  String? get public_path;
  @override
  String? get image_url;
  @override
  SupCategory? get sup_category;
  @override
  @JsonKey(ignore: true)
  _$$SupCategoryImplCopyWith<_$SupCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
