// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_wise_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryWiseProductsResponseModelImpl
    _$$CategoryWiseProductsResponseModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CategoryWiseProductsResponseModelImpl(
          id: json['id'] as int?,
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : CategoryWiseProductsDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CategoryWiseProductsResponseModelImplToJson(
        _$CategoryWiseProductsResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'data': instance.data,
    };

_$CategoryWiseProductsDataModelImpl
    _$$CategoryWiseProductsDataModelImplFromJson(Map<String, dynamic> json) =>
        _$CategoryWiseProductsDataModelImpl(
          data: json['data'] == null
              ? null
              : CategoryWiseProductsInnerDataModel.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CategoryWiseProductsDataModelImplToJson(
        _$CategoryWiseProductsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$CategoryWiseProductsInnerDataModelImpl
    _$$CategoryWiseProductsInnerDataModelImplFromJson(
            Map<String, dynamic> json) =>
        _$CategoryWiseProductsInnerDataModelImpl(
          products: json['products'] == null
              ? null
              : BrandDetailsProductsModel.fromJson(
                  json['products'] as Map<String, dynamic>),
          category: json['category'] == null
              ? null
              : CategoryItemModel.fromJson(
                  json['category'] as Map<String, dynamic>),
          filteredCategories: (json['filtered_categories'] as List<dynamic>?)
              ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          brand_list: (json['brand_list'] as List<dynamic>?)
              ?.map((e) => BrandListModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          colorList: json['color_list'] as List<dynamic>?,
          grouping_catlist: json['grouping_catlist'] as List<dynamic>?,
        );

Map<String, dynamic> _$$CategoryWiseProductsInnerDataModelImplToJson(
        _$CategoryWiseProductsInnerDataModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'category': instance.category,
      'filtered_categories': instance.filteredCategories,
      'brand_list': instance.brand_list,
      'color_list': instance.colorList,
      'grouping_catlist': instance.grouping_catlist,
    };

_$BrandListModelImpl _$$BrandListModelImplFromJson(Map<String, dynamic> json) =>
    _$BrandListModelImpl(
      name: json['name'] as String?,
      id: json['id'] as int?,
      image: json['image'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$BrandListModelImplToJson(
        _$BrandListModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'image': instance.image,
      'slug': instance.slug,
    };
