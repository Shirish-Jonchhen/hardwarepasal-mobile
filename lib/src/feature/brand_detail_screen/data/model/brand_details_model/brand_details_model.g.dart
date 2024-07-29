// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandDetailsResponseModelImpl _$$BrandDetailsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandDetailsResponseModelImpl(
      id: json['id'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : BrandDetailsDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandDetailsResponseModelImplToJson(
        _$BrandDetailsResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'data': instance.data,
    };

_$BrandDetailsDataModelImpl _$$BrandDetailsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandDetailsDataModelImpl(
      data: json['data'] == null
          ? null
          : BrandDetailsInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandDetailsDataModelImplToJson(
        _$BrandDetailsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$BrandDetailsInnerDataModelImpl _$$BrandDetailsInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandDetailsInnerDataModelImpl(
      products: json['products'] == null
          ? null
          : BrandDetailsProductsModel.fromJson(
              json['products'] as Map<String, dynamic>),
      brands: json['brands'] as List<dynamic>?,
      filteredCategories: (json['filteredCategories'] as List<dynamic>?)
          ?.map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand_sub_categories: (json['brand_sub_categories'] as List<dynamic>?)
          ?.map((e) => CategoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand: json['brand'] == null
          ? null
          : BrandsItemModel.fromJson(json['brand'] as Map<String, dynamic>),
      is_brand: json['is_brand'] as bool?,
    );

Map<String, dynamic> _$$BrandDetailsInnerDataModelImplToJson(
        _$BrandDetailsInnerDataModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products,
      'brands': instance.brands,
      'filteredCategories': instance.filteredCategories,
      'brand_sub_categories': instance.brand_sub_categories,
      'brand': instance.brand,
      'is_brand': instance.is_brand,
    };

_$BrandDetailsProductsModelImpl _$$BrandDetailsProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BrandDetailsProductsModelImpl(
      current_page: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_page_url: json['first_page_url'] as String?,
      from: json['from'] as int?,
      last_page: json['last_page'] as int?,
      last_page_url: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map(
              (e) => ClearanceSaleLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      next_page_url: json['next_page_url'] as String?,
      path: json['path'] as String?,
      per_page: json['per_page'] as int?,
      prev_page_url: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$BrandDetailsProductsModelImplToJson(
        _$BrandDetailsProductsModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data,
      'first_page_url': instance.first_page_url,
      'from': instance.from,
      'last_page': instance.last_page,
      'last_page_url': instance.last_page_url,
      'links': instance.links,
      'next_page_url': instance.next_page_url,
      'path': instance.path,
      'per_page': instance.per_page,
      'prev_page_url': instance.prev_page_url,
      'to': instance.to,
      'total': instance.total,
    };
