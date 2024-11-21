// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_brands_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedBrandsModelImpl _$$FeaturedBrandsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedBrandsModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FeaturedBrandsData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FeaturedBrandsModelImplToJson(
        _$FeaturedBrandsModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$FeaturedBrandsDataImpl _$$FeaturedBrandsDataImplFromJson(
        Map<String, dynamic> json) =>
    _$FeaturedBrandsDataImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Brand.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FeaturedBrandsDataImplToJson(
        _$FeaturedBrandsDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      slug: json['slug'] as String?,
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'slug': instance.slug,
    };
