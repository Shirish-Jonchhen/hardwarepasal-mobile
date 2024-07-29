// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailModelImpl _$$ProductDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailModelImpl(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ProductDetailDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailModelImplToJson(
        _$ProductDetailModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$ProductDetailDataModelImpl _$$ProductDetailDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailDataModelImpl(
      data: json['data'] == null
          ? null
          : ProductDetailInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailDataModelImplToJson(
        _$ProductDetailDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$ProductDetailInnerDataModelImpl _$$ProductDetailInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailInnerDataModelImpl(
      product: json['product'] == null
          ? null
          : ActualProductModel.fromJson(
              json['product'] as Map<String, dynamic>),
      productYouMightLike: (json['productYouMightLike'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      customersAreAlsoViewing:
          (json['customersAreAlsoViewing'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      recently_viewed_products:
          (json['recently_viewed_products'] as List<dynamic>?)
              ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      voucherList: (json['voucherlist'] as List<dynamic>?)
          ?.map((e) => VoucherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      brand_products: (json['brand_products'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductDetailInnerDataModelImplToJson(
        _$ProductDetailInnerDataModelImpl instance) =>
    <String, dynamic>{
      'product': instance.product?.toJson(),
      'productYouMightLike':
          instance.productYouMightLike?.map((e) => e.toJson()).toList(),
      'customersAreAlsoViewing':
          instance.customersAreAlsoViewing?.map((e) => e.toJson()).toList(),
      'recently_viewed_products':
          instance.recently_viewed_products?.map((e) => e.toJson()).toList(),
      'voucherlist': instance.voucherList?.map((e) => e.toJson()).toList(),
      'brand_products':
          instance.brand_products?.map((e) => e.toJson()).toList(),
    };
