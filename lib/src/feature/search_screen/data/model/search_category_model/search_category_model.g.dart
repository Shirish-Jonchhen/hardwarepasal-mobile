// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchCategoryModelImpl _$$SearchCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchCategoryModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SearchCategoryDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchCategoryModelImplToJson(
        _$SearchCategoryModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$SearchCategoryDataModelImpl _$$SearchCategoryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchCategoryDataModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchCategoryDataModelImplToJson(
        _$SearchCategoryDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };
