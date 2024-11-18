// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectips_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ConnectipsResponseModelImpl _$$ConnectipsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectipsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ConnectipsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConnectipsResponseModelImplToJson(
        _$ConnectipsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ConnectipsDataModelImpl _$$ConnectipsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectipsDataModelImpl(
      data: json['data'] == null
          ? null
          : ConnectipsInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ConnectipsDataModelImplToJson(
        _$ConnectipsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ConnectipsInnerDataModelImpl _$$ConnectipsInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ConnectipsInnerDataModelImpl(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      viewdata: json['viewdata'] as String?,
    );

Map<String, dynamic> _$$ConnectipsInnerDataModelImplToJson(
        _$ConnectipsInnerDataModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'viewdata': instance.viewdata,
    };
