// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateUserModelImpl _$$UpdateUserModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : UpdateUserDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserModelImplToJson(
        _$UpdateUserModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$UpdateUserDataModelImpl _$$UpdateUserDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateUserDataModelImpl(
      userDetails: json['userDetails'] == null
          ? null
          : UserDetails.fromJson(json['userDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UpdateUserDataModelImplToJson(
        _$UpdateUserDataModelImpl instance) =>
    <String, dynamic>{
      'userDetails': instance.userDetails?.toJson(),
    };
