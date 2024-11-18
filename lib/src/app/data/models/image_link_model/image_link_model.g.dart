// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_link_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ImageLinkResponseModelImpl _$$ImageLinkResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ImageLinkResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ImageLinkModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ImageLinkResponseModelImplToJson(
        _$ImageLinkResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$ImageLinkModelImpl _$$ImageLinkModelImplFromJson(Map<String, dynamic> json) =>
    _$ImageLinkModelImpl(
      adsImage: json['ads_image'] as String?,
      productCoverImage: json['product_cover_image'] as String?,
      productCategoryImage: json['product_category_image'] as String?,
      brandImage: json['brand_image'] as String?,
      userImage: json['user_image'] as String?,
    );

Map<String, dynamic> _$$ImageLinkModelImplToJson(
        _$ImageLinkModelImpl instance) =>
    <String, dynamic>{
      'ads_image': instance.adsImage,
      'product_cover_image': instance.productCoverImage,
      'product_category_image': instance.productCategoryImage,
      'brand_image': instance.brandImage,
      'user_image': instance.userImage,
    };
