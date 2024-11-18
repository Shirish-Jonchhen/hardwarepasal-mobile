// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quotation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuotationModelImpl _$$QuotationModelImplFromJson(Map<String, dynamic> json) =>
    _$QuotationModelImpl(
      code: json['code'] as int?,
      message: json['message'] as int?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuotationModelImplToJson(
        _$QuotationModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
    };
