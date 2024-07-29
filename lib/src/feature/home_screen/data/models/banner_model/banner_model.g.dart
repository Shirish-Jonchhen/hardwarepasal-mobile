// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$bannerLinkModelImpl _$$bannerLinkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$bannerLinkModelImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$bannerLinkModelImplToJson(
        _$bannerLinkModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$BannerDataModelImpl _$$BannerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BannerDataModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      mobile_image: json['mobile_image'] as String?,
      status: json['status'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      link: json['link'] as String?,
      home: json['home'] as int?,
      hpxpress: json['hpxpress'] as int?,
    );

Map<String, dynamic> _$$BannerDataModelImplToJson(
        _$BannerDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'mobile_image': instance.mobile_image,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'link': instance.link,
      'home': instance.home,
      'hpxpress': instance.hpxpress,
    };

_$BannerModelImpl _$$BannerModelImplFromJson(Map<String, dynamic> json) =>
    _$BannerModelImpl(
      current_page: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => BannerDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_page_url: json['first_page_url'] as String?,
      from: json['from'] as int?,
      last_page: json['last_page'] as int?,
      last_page_url: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => BannerLinkModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      next_page_url: json['next_page_url'] as String?,
      path: json['path'] as String?,
      per_page: json['per_page'] as int?,
      prev_page_url: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$BannerModelImplToJson(_$BannerModelImpl instance) =>
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
