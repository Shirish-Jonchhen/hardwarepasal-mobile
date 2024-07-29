// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductCategoryModelImpl _$$ProductCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryModelImpl(
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
      is_grouping: json['is_grouping'] as String?,
      display: json['display'] as int?,
      show_on_home: json['show_on_home'] as String?,
      offer_text: json['offer_text'] as String?,
      display_text: json['display_text'] as String?,
      public_path: json['public_path'] as String?,
      image_url: json['image_url'] as String?,
      svg_icon: json['svg_icon'] as String?,
    );

Map<String, dynamic> _$$ProductCategoryModelImplToJson(
        _$ProductCategoryModelImpl instance) =>
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
      'display': instance.display,
      'show_on_home': instance.show_on_home,
      'offer_text': instance.offer_text,
      'display_text': instance.display_text,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
      'svg_icon': instance.svg_icon,
    };
