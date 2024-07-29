// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeInnerDataModelImpl _$$HomeInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeInnerDataModelImpl(
      banner: json['banner'] == null
          ? null
          : BannerModel.fromJson(json['banner'] as Map<String, dynamic>),
      render_view_front: json['render_view_front'] == null
          ? null
          : RenderViewFrontModel.fromJson(
              json['render_view_front'] as Map<String, dynamic>),
      featuredProducts1: (json['featuredProducts1'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      featuredProducts2: (json['featuredProducts2'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories_home: (json['categories_home'] as List<dynamic>?)
          ?.map((e) => CategoriesHomeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      recently_view_product: (json['recently_view_product'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      clearance_sale: json['clearance_sale'] == null
          ? null
          : ClearanceSaleModel.fromJson(
              json['clearance_sale'] as Map<String, dynamic>),
      ads: json['ads'] == null
          ? null
          : AdsModel.fromJson(json['ads'] as Map<String, dynamic>),
      noticead: (json['noticead'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeInnerDataModelImplToJson(
        _$HomeInnerDataModelImpl instance) =>
    <String, dynamic>{
      'banner': instance.banner?.toJson(),
      'render_view_front': instance.render_view_front?.toJson(),
      'featuredProducts1':
          instance.featuredProducts1?.map((e) => e.toJson()).toList(),
      'featuredProducts2':
          instance.featuredProducts2?.map((e) => e.toJson()).toList(),
      'categories_home':
          instance.categories_home?.map((e) => e.toJson()).toList(),
      'recently_view_product':
          instance.recently_view_product?.map((e) => e.toJson()).toList(),
      'clearance_sale': instance.clearance_sale?.toJson(),
      'ads': instance.ads?.toJson(),
      'noticead': instance.noticead?.map((e) => e.toJson()).toList(),
    };

_$HomeDataModelImpl _$$HomeDataModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeDataModelImpl(
      data: json['data'] == null
          ? null
          : HomeInnerDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeDataModelImplToJson(_$HomeDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$HomeModelImpl _$$HomeModelImplFromJson(Map<String, dynamic> json) =>
    _$HomeModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HomeDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeModelImplToJson(_$HomeModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };
