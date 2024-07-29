// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandsModelImpl _$$BrandsModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandsModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BrandsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandsModelImplToJson(_$BrandsModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$BrandsDataModelImpl _$$BrandsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandsDataModelImpl(
      data: json['data'] == null
          ? null
          : BrandsDataInnerModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandsDataModelImplToJson(
        _$BrandsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$BrandsDataInnerModelImpl _$$BrandsDataInnerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandsDataInnerModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BrandsItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BrandsDataInnerModelImplToJson(
        _$BrandsDataInnerModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$BrandsItemModelImpl _$$BrandsItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandsItemModelImpl(
      id: json['id'] as int?,
      category_id: json['category_id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      cover_image: json['cover_image'] as String?,
      meta_keywords: json['meta_keywords'] as String?,
      meta_description: json['meta_description'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$BrandsItemModelImplToJson(
        _$BrandsItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.category_id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'cover_image': instance.cover_image,
      'meta_keywords': instance.meta_keywords,
      'meta_description': instance.meta_description,
      'slug': instance.slug,
    };
