// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_brands_by_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeBrandModelImpl _$$HomeBrandModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeBrandModelImpl(
      id: json['id'] as String?,
      category_id: json['category_id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      cover_image: json['cover_image'] as String?,
      meta_title: json['meta_title'] as String?,
      meta_keywords: json['meta_keywords'] as String?,
      meta_description: json['meta_description'] as String?,
      slug: json['slug'] as String?,
      brand_id: json['brand_id'] as String?,
    );

Map<String, dynamic> _$$HomeBrandModelImplToJson(
        _$HomeBrandModelImpl instance) =>
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
      'meta_title': instance.meta_title,
      'meta_keywords': instance.meta_keywords,
      'meta_description': instance.meta_description,
      'slug': instance.slug,
      'brand_id': instance.brand_id,
    };

_$HomeBrandsByCategoryInnerModelImpl
    _$$HomeBrandsByCategoryInnerModelImplFromJson(Map<String, dynamic> json) =>
        _$HomeBrandsByCategoryInnerModelImpl(
          id: json['id'] as int?,
          name: json['name'] as String?,
          brands: (json['brands'] as List<dynamic>?)
              ?.map((e) => HomeBrandModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          public_path: json['public_path'] as String?,
          image_url: json['image_url'] as String?,
        );

Map<String, dynamic> _$$HomeBrandsByCategoryInnerModelImplToJson(
        _$HomeBrandsByCategoryInnerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brands': instance.brands?.map((e) => e.toJson()).toList(),
      'public_path': instance.public_path,
      'image_url': instance.image_url,
    };

_$HomeBrandsByCategoryDataModelImpl
    _$$HomeBrandsByCategoryDataModelImplFromJson(Map<String, dynamic> json) =>
        _$HomeBrandsByCategoryDataModelImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => HomeBrandsByCategoryInnerModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$HomeBrandsByCategoryDataModelImplToJson(
        _$HomeBrandsByCategoryDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$HomeBrandsByCategoryModelImpl _$$HomeBrandsByCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeBrandsByCategoryModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HomeBrandsByCategoryDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeBrandsByCategoryModelImplToJson(
        _$HomeBrandsByCategoryModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };
