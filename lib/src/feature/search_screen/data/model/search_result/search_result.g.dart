// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : SearchResultData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$SearchResultDataImpl _$$SearchResultDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultDataImpl(
      data: json['data'] == null
          ? null
          : SearchResultInnerData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResultDataImplToJson(
        _$SearchResultDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$SearchResultInnerDataImpl _$$SearchResultInnerDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultInnerDataImpl(
      products: json['products'] == null
          ? null
          : HomeAllProductsDataProductsModel.fromJson(
              json['products'] as Map<String, dynamic>),
      filteredCategories: (json['filteredCategories'] as List<dynamic>?)
          ?.map((e) => CategoriesHomeSubCategorySubCategoriesModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      sub_categories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => CategoriesHomeSubCategorySubCategoriesModel.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SearchResultInnerDataImplToJson(
        _$SearchResultInnerDataImpl instance) =>
    <String, dynamic>{
      'products': instance.products?.toJson(),
      'filteredCategories':
          instance.filteredCategories?.map((e) => e.toJson()).toList(),
      'sub_categories':
          instance.sub_categories?.map((e) => e.toJson()).toList(),
    };
