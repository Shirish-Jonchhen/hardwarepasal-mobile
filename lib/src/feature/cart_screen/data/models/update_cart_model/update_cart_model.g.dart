// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateCartModelImpl _$$UpdateCartModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCartModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UpdateCartDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateCartModelImplToJson(
        _$UpdateCartModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$UpdateCartDataModelImpl _$$UpdateCartDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCartDataModelImpl(
      data: json['data'] == null
          ? null
          : UpdateCartDetailModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateCartDataModelImplToJson(
        _$UpdateCartDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$UpdateCartDetailModelImpl _$$UpdateCartDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateCartDetailModelImpl(
      id: json['id'] as int?,
      product_id: json['product_id'] as int?,
      user_id: json['user_id'] as int?,
      sup_id: json['sup_id'] as int?,
      additional_info: json['additional_info'] as String?,
      quantity: json['quantity'] as String?,
      status: json['status'] as int?,
      created_at: json['created_at'] as String?,
      mail_date: json['mail_date'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$UpdateCartDetailModelImplToJson(
        _$UpdateCartDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'user_id': instance.user_id,
      'sup_id': instance.sup_id,
      'additional_info': instance.additional_info,
      'quantity': instance.quantity,
      'status': instance.status,
      'created_at': instance.created_at,
      'mail_date': instance.mail_date,
      'updated_at': instance.updated_at,
    };
