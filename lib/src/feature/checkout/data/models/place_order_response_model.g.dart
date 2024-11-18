// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceOrderResponseModelImpl _$$PlaceOrderResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : PlaceOrderDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceOrderResponseModelImplToJson(
        _$PlaceOrderResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$PlaceOrderDataModelImpl _$$PlaceOrderDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderDataModelImpl(
      data: json['data'] == null
          ? null
          : PlaceOrderInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PlaceOrderDataModelImplToJson(
        _$PlaceOrderDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PlaceOrderInnerDataModelImpl _$$PlaceOrderInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderInnerDataModelImpl(
      order_id: json['order_id'] as String?,
      session_id: json['session_id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      contact: json['contact'] as String?,
      delivery: json['delivery'] as String?,
      order_note: json['order_note'] as String?,
      totalWeight: (json['total_weight'] as num?)?.toDouble(),
      express: json['express'] as int?,
      status: json['status'] as String?,
      payment_id: json['payment_id'] as String?,
      payment_status: json['payment_status'] as int?,
      is_customize: json['is_customize'] as int?,
      user_id: json['user_id'] as int?,
      updated_at: json['updated_at'] as String?,
      created_at: json['created_at'] as String?,
      id: json['id'] as int?,
      totalQuantityCharge: (json['total_quantity_charge'] as num?)?.toDouble(),
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      coupon_discount: (json['coupon_discount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PlaceOrderInnerDataModelImplToJson(
        _$PlaceOrderInnerDataModelImpl instance) =>
    <String, dynamic>{
      'order_id': instance.order_id,
      'session_id': instance.session_id,
      'name': instance.name,
      'address': instance.address,
      'district': instance.district,
      'city': instance.city,
      'contact': instance.contact,
      'delivery': instance.delivery,
      'order_note': instance.order_note,
      'total_weight': instance.totalWeight,
      'express': instance.express,
      'status': instance.status,
      'payment_id': instance.payment_id,
      'payment_status': instance.payment_status,
      'is_customize': instance.is_customize,
      'user_id': instance.user_id,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
      'id': instance.id,
      'total_quantity_charge': instance.totalQuantityCharge,
      'delivery_charge': instance.deliveryCharge,
      'coupon_discount': instance.coupon_discount,
    };
