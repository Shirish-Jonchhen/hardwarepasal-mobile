// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutModelImpl _$$LogoutModelImplFromJson(Map<String, dynamic> json) =>
    _$LogoutModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] as List<dynamic>?,
    );

Map<String, dynamic> _$$LogoutModelImplToJson(_$LogoutModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };
