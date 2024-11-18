// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceOrderModelImpl _$$PlaceOrderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderModelImpl(
      customer_name: json['customer_name'] as String?,
      customer_address: json['customer_address'] as String?,
      customer_email: json['customer_email'] as String?,
      customer_number: json['customer_number'] as String?,
      total_weight: (json['total_weight'] as num?)?.toDouble(),
      delivery: json['delivery'] as String?,
      delivery_charge: (json['delivery_charge'] as num?)?.toDouble(),
      totalCharge: (json['total_charge'] as num?)?.toDouble(),
      payment_id: json['payment_id'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map(
              (e) => PlaceOrderProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PlaceOrderModelImplToJson(
        _$PlaceOrderModelImpl instance) =>
    <String, dynamic>{
      'customer_name': instance.customer_name,
      'customer_address': instance.customer_address,
      'customer_email': instance.customer_email,
      'customer_number': instance.customer_number,
      'total_weight': instance.total_weight,
      'delivery': instance.delivery,
      'delivery_charge': instance.delivery_charge,
      'total_charge': instance.totalCharge,
      'payment_id': instance.payment_id,
      'products': instance.products,
    };

_$PlaceOrderProductModelImpl _$$PlaceOrderProductModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceOrderProductModelImpl(
      product_id: json['product_id'] as int?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$$PlaceOrderProductModelImplToJson(
        _$PlaceOrderProductModelImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'quantity': instance.quantity,
    };
