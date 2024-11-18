// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckoutResponseModelImpl _$$CheckoutResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CheckoutDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutResponseModelImplToJson(
        _$CheckoutResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$CheckoutDataModelModelImpl _$$CheckoutDataModelModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutDataModelModelImpl(
      data: json['data'] == null
          ? null
          : CheckoutInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CheckoutDataModelModelImplToJson(
        _$CheckoutDataModelModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CheckoutInnerDataModelImpl _$$CheckoutInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckoutInnerDataModelImpl(
      cartdata: (json['cartdata'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      districts: (json['districts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      weight: (json['weight'] as num?)?.toDouble(),
      delivery_charge: json['delivery_charge'] == null
          ? null
          : DeliveryChargeModel.fromJson(
              json['delivery_charge'] as Map<String, dynamic>),
      outvalley_list: (json['outvalley_list'] as List<dynamic>?)
          ?.map((e) => DistrictModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CheckoutInnerDataModelImplToJson(
        _$CheckoutInnerDataModelImpl instance) =>
    <String, dynamic>{
      'cartdata': instance.cartdata,
      'districts': instance.districts,
      'weight': instance.weight,
      'delivery_charge': instance.delivery_charge,
      'outvalley_list': instance.outvalley_list,
    };

_$DeliveryChargeModelImpl _$$DeliveryChargeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryChargeModelImpl(
      inside_ringroad: json['inside_ringroad'] as int?,
      outside_ringroad: json['outside_ringroad'] as int?,
      outside_valley: json['outside_valley'] as int?,
    );

Map<String, dynamic> _$$DeliveryChargeModelImplToJson(
        _$DeliveryChargeModelImpl instance) =>
    <String, dynamic>{
      'inside_ringroad': instance.inside_ringroad,
      'outside_ringroad': instance.outside_ringroad,
      'outside_valley': instance.outside_valley,
    };

_$DistrictModelImpl _$$DistrictModelImplFromJson(Map<String, dynamic> json) =>
    _$DistrictModelImpl(
      id: json['id'] as int?,
      district: json['district'] as String?,
      city: json['city'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      insideRingRoad: json['inside_ring_road'] as int?,
      outsideRingRoad: json['outside_ring_road'] as int?,
      accept_cod: json['accept_cod'] as int?,
    );

Map<String, dynamic> _$$DistrictModelImplToJson(_$DistrictModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'district': instance.district,
      'city': instance.city,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'inside_ring_road': instance.insideRingRoad,
      'outside_ring_road': instance.outsideRingRoad,
      'accept_cod': instance.accept_cod,
    };
