// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CategoryDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$CategoryDataModelImpl _$$CategoryDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryDataModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryDataModelImplToJson(
        _$CategoryDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.map((e) => e.toJson()).toList(),
    };

_$CategoryItemModelImpl _$$CategoryItemModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryItemModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      iconclass: json['iconclass'] as String?,
      slug: json['slug'] as String?,
      sup_cat_id: json['sup_cat_id'] as int?,
      status: json['status'] as String?,
      created_by: json['created_by'] as int?,
      updated_by: json['updated_by'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      meta_keywords: json['meta_keywords'] as String?,
      meta_description: json['meta_description'] as String?,
      meta_title: json['meta_title'] as String?,
      is_grouping: json['is_grouping'] as int?,
      diaplay: json['diaplay'] as int?,
      show_on_home: json['show_on_home'] as String?,
      offer_text: json['offer_text'] as String?,
      display_text: json['display_text'] as String?,
      svg_icon: json['svg_icon'] as String?,
      public_path: json['public_path'] as String?,
      image_url: json['image_url'] as String?,
      sub_categories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoryItemModelImplToJson(
        _$CategoryItemModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'iconclass': instance.iconclass,
      'slug': instance.slug,
      'sup_cat_id': instance.sup_cat_id,
      'status': instance.status,
      'created_by': instance.created_by,
      'updated_by': instance.updated_by,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'meta_keywords': instance.meta_keywords,
      'meta_description': instance.meta_description,
      'meta_title': instance.meta_title,
      'is_grouping': instance.is_grouping,
      'diaplay': instance.diaplay,
      'show_on_home': instance.show_on_home,
      'offer_text': instance.offer_text,
      'display_text': instance.display_text,
      'svg_icon': instance.svg_icon,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
      'sub_categories':
          instance.sub_categories?.map((e) => e.toJson()).toList(),
    };
