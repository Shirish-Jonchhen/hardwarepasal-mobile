// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_to_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddToCartModelImpl _$$AddToCartModelImplFromJson(Map<String, dynamic> json) =>
    _$AddToCartModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : AddToCartDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AddToCartModelImplToJson(
        _$AddToCartModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$AddToCartDataModelImpl _$$AddToCartDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddToCartDataModelImpl(
      data: json['data'] as String?,
    );

Map<String, dynamic> _$$AddToCartDataModelImplToJson(
        _$AddToCartDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
