// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponRequestModelImpl _$$CouponRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CouponRequestModelImpl(
      couponCode: json['coupon_code'] as String,
      products: (json['products'] as List<dynamic>)
          .map((e) => CouponProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CouponRequestModelImplToJson(
        _$CouponRequestModelImpl instance) =>
    <String, dynamic>{
      'coupon_code': instance.couponCode,
      'products': instance.products,
    };

_$CouponProductImpl _$$CouponProductImplFromJson(Map<String, dynamic> json) =>
    _$CouponProductImpl(
      productId: json['product_id'] as int,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$CouponProductImplToJson(_$CouponProductImpl instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'quantity': instance.quantity,
    };
