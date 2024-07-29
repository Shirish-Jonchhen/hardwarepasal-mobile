// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_brand_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductBrandModelImpl _$$ProductBrandModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductBrandModelImpl(
      id: json['id'] as int?,
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
    );

Map<String, dynamic> _$$ProductBrandModelImplToJson(
        _$ProductBrandModelImpl instance) =>
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
    };
