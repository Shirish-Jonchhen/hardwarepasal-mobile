// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VoucherModelImpl _$$VoucherModelImplFromJson(Map<String, dynamic> json) =>
    _$VoucherModelImpl(
      id: json['id'] as int?,
      coupon_name: json['coupon_name'] as String?,
      coupon_code: json['coupon_code'] as String?,
      discount_type: json['discount_type'] as String?,
      discount_value: json['discount_value'] as int?,
      max_discount_value: json['max_discount_value'] as int?,
      description: json['description'] as String?,
      usage_limit_coupon: json['usage_limit_coupon'] as String?,
      usage_limit_user: json['usage_limit_user'] as String?,
      use_count: json['use_count'] as int?,
      min_order: json['min_order'] as int?,
      expire_date: json['expire_date'] as String?,
      show_on_product: json['show_on_product'] as int?,
      show_on_cart: json['show_on_cart'] as int?,
      applicable_area: json['applicable_area'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$VoucherModelImplToJson(_$VoucherModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'coupon_name': instance.coupon_name,
      'coupon_code': instance.coupon_code,
      'discount_type': instance.discount_type,
      'discount_value': instance.discount_value,
      'max_discount_value': instance.max_discount_value,
      'description': instance.description,
      'usage_limit_coupon': instance.usage_limit_coupon,
      'usage_limit_user': instance.usage_limit_user,
      'use_count': instance.use_count,
      'min_order': instance.min_order,
      'expire_date': instance.expire_date,
      'show_on_product': instance.show_on_product,
      'show_on_cart': instance.show_on_cart,
      'applicable_area': instance.applicable_area,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };
