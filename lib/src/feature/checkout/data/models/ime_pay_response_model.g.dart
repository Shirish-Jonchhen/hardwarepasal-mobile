// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ime_pay_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImePayResponseModelImpl _$$ImePayResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImePayResponseModelImpl(
      error: json['error'] as bool?,
      message: json['message'] as String?,
      viewdata: json['viewdata'] as String?,
    );

Map<String, dynamic> _$$ImePayResponseModelImplToJson(
        _$ImePayResponseModelImpl instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'viewdata': instance.viewdata,
    };
