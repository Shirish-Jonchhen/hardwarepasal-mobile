// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_all_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeAllProductsModelImpl _$$HomeAllProductsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeAllProductsModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HomeAllProductsDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeAllProductsModelImplToJson(
        _$HomeAllProductsModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$HomeAllProductsDataModelImpl _$$HomeAllProductsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeAllProductsDataModelImpl(
      products: json['products'] == null
          ? null
          : HomeAllProductsDataProductsModel.fromJson(
              json['products'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeAllProductsDataModelImplToJson(
        _$HomeAllProductsDataModelImpl instance) =>
    <String, dynamic>{
      'products': instance.products?.toJson(),
    };

_$HomeAllProductsDataProductsModelImpl
    _$$HomeAllProductsDataProductsModelImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeAllProductsDataProductsModelImpl(
          current_page: json['current_page'] as int?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          first_page_url: json['first_page_url'] as String?,
          from: json['from'] as int?,
          last_page: json['last_page'] as int?,
          last_page_url: json['last_page_url'] as String?,
          links: (json['links'] as List<dynamic>?)
              ?.map((e) =>
                  RenderViewFrontLinkModel.fromJson(e as Map<String, dynamic>))
              .toList(),
          next_page_url: json['next_page_url'] as String?,
          path: json['path'] as String?,
          per_page: json['per_page'] as int?,
          prev_page_url: json['prev_page_url'] as String?,
          to: json['to'] as int?,
          total: json['total'] as int?,
        );

Map<String, dynamic> _$$HomeAllProductsDataProductsModelImplToJson(
        _$HomeAllProductsDataProductsModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'first_page_url': instance.first_page_url,
      'from': instance.from,
      'last_page': instance.last_page,
      'last_page_url': instance.last_page_url,
      'links': instance.links?.map((e) => e.toJson()).toList(),
      'next_page_url': instance.next_page_url,
      'path': instance.path,
      'per_page': instance.per_page,
      'prev_page_url': instance.prev_page_url,
      'to': instance.to,
      'total': instance.total,
    };
