// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesHomeSubCategorySubCategoriesModelImpl
    _$$CategoriesHomeSubCategorySubCategoriesModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CategoriesHomeSubCategorySubCategoriesModelImpl(
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
          meta_descriprion: json['meta_descriprion'] as String?,
          meta_title: json['meta_title'] as String?,
          is_grouping: json['is_grouping'] as int?,
          display: json['display'] as int?,
          show_on_home: json['show_on_home'] as String?,
          offer_text: json['offer_text'] as String?,
          display_text: json['display_text'] as String?,
          svg_icon: json['svg_icon'] as String?,
          public_path: json['public_path'] as String?,
          image_url: json['image_url'] as String?,
          sub_categories: json['sub_categories'] as List<dynamic>?,
        );

Map<String, dynamic> _$$CategoriesHomeSubCategorySubCategoriesModelImplToJson(
        _$CategoriesHomeSubCategorySubCategoriesModelImpl instance) =>
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
      'meta_descriprion': instance.meta_descriprion,
      'meta_title': instance.meta_title,
      'is_grouping': instance.is_grouping,
      'display': instance.display,
      'show_on_home': instance.show_on_home,
      'offer_text': instance.offer_text,
      'display_text': instance.display_text,
      'svg_icon': instance.svg_icon,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
      'sub_categories': instance.sub_categories,
    };

_$CategoriesHomeSubCategoryModelImpl
    _$$CategoriesHomeSubCategoryModelImplFromJson(Map<String, dynamic> json) =>
        _$CategoriesHomeSubCategoryModelImpl(
          id: json['id'] as int?,
          name: json['name'] as String?,
          slug: json['slug'] as String?,
          offer_text: json['offer_text'] as String?,
          icon: json['icon'] as String?,
          sup_cat_id: json['sup_cat_id'] as int?,
          sub_category_image: json['sub_category_image'] as String?,
          product_image: json['product_image'] as String?,
          main_product_image: json['main_product_image'] as String?,
          public_path: json['public_path'] as String?,
          image_url: json['image_url'] as String?,
          sub_categories: (json['sub_categories'] as List<dynamic>?)
              ?.map((e) => CategoriesHomeSubCategorySubCategoriesModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$CategoriesHomeSubCategoryModelImplToJson(
        _$CategoriesHomeSubCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'offer_text': instance.offer_text,
      'icon': instance.icon,
      'sup_cat_id': instance.sup_cat_id,
      'sub_category_image': instance.sub_category_image,
      'product_image': instance.product_image,
      'main_product_image': instance.main_product_image,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
      'sub_categories':
          instance.sub_categories?.map((e) => e.toJson()).toList(),
    };

_$CategoriesHomeAdImageModelImpl _$$CategoriesHomeAdImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesHomeAdImageModelImpl(
      id: json['id'] as int?,
      category: json['category'] as String?,
      name: json['name'] as String?,
      link: json['link'] as String?,
      image: json['image'] as String?,
      status: json['status'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$CategoriesHomeAdImageModelImplToJson(
        _$CategoriesHomeAdImageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'name': instance.name,
      'link': instance.link,
      'image': instance.image,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
    };

_$CategoriesHomeModelImpl _$$CategoriesHomeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoriesHomeModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      slug: json['slug'] as String?,
      category_show_id: json['category_show_id'] as int?,
      ad_images: (json['ad_images'] as List<dynamic>?)
          ?.map((e) =>
              CategoriesHomeAdImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sub_category: (json['sub_category'] as List<dynamic>?)
          ?.map((e) => CategoriesHomeSubCategoryModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesHomeModelImplToJson(
        _$CategoriesHomeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'slug': instance.slug,
      'category_show_id': instance.category_show_id,
      'ad_images': instance.ad_images?.map((e) => e.toJson()).toList(),
      'sub_category': instance.sub_category?.map((e) => e.toJson()).toList(),
    };
