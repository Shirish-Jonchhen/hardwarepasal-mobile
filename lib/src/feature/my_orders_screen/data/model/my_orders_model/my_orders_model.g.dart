// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_orders_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyOrdersModelImpl _$$MyOrdersModelImplFromJson(Map<String, dynamic> json) =>
    _$MyOrdersModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : MyOrderDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyOrdersModelImplToJson(_$MyOrdersModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$MyOrderDataModelImpl _$$MyOrderDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrderDataModelImpl(
      data: json['data'] == null
          ? null
          : MyOrderInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MyOrderDataModelImplToJson(
        _$MyOrderDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$MyOrderInnerDataModelImpl _$$MyOrderInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MyOrderInnerDataModelImpl(
      current_page: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_page_url: json['first_page_url'] as String?,
      from: json['from'] as int?,
      last_page: json['last_page'] as int?,
      last_page_url: json['last_page_url'] as String?,
      next_page_url: json['next_page_url'] as String?,
      path: json['path'] as String?,
      per_page: json['per_page'] as int?,
      prev_page_url: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$MyOrderInnerDataModelImplToJson(
        _$MyOrderInnerDataModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'first_page_url': instance.first_page_url,
      'from': instance.from,
      'last_page': instance.last_page,
      'last_page_url': instance.last_page_url,
      'next_page_url': instance.next_page_url,
      'path': instance.path,
      'per_page': instance.per_page,
      'prev_page_url': instance.prev_page_url,
      'to': instance.to,
      'total': instance.total,
    };

_$OrderDataImpl _$$OrderDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderDataImpl(
      id: json['id'] as int?,
      order_id: json['order_id'] as String?,
      user_id: json['user_id'] as int?,
      session_id: json['session_id'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      contact: json['contact'] as String?,
      delivery: json['delivery'] as String?,
      deliveryCharge: (json['delivery_charge'] as num?)?.toDouble(),
      totalWeight: (json['total_weight'] as num?)?.toDouble(),
      totalQuantityCharge: (json['total_quantity_charge'] as num?)?.toDouble(),
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      express: json['express'] as int?,
      express_price: json['express_price'] as String?,
      seen: json['seen'] as int?,
      totaldeliverycharge: json['totaldeliverycharge'] as String?,
      order_note: json['order_note'] as String?,
      coupon_discount: json['coupon_discount'] as String?,
      payment_id: json['payment_id'] as String?,
      payment_status: json['payment_status'] as int?,
      used_coupon_code: json['used_coupon_code'] as String?,
      is_customize: json['is_customize'] as int?,
      cancel_reason_id: json['cancel_reason_id'] as int?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderDataImplToJson(_$OrderDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_id': instance.order_id,
      'user_id': instance.user_id,
      'session_id': instance.session_id,
      'name': instance.name,
      'address': instance.address,
      'district': instance.district,
      'city': instance.city,
      'contact': instance.contact,
      'delivery': instance.delivery,
      'delivery_charge': instance.deliveryCharge,
      'total_weight': instance.totalWeight,
      'total_quantity_charge': instance.totalQuantityCharge,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'express': instance.express,
      'express_price': instance.express_price,
      'seen': instance.seen,
      'totaldeliverycharge': instance.totaldeliverycharge,
      'order_note': instance.order_note,
      'coupon_discount': instance.coupon_discount,
      'payment_id': instance.payment_id,
      'payment_status': instance.payment_status,
      'used_coupon_code': instance.used_coupon_code,
      'is_customize': instance.is_customize,
      'cancel_reason_id': instance.cancel_reason_id,
      'products': instance.products?.map((e) => e.toJson()).toList(),
    };
