// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'render_view_front_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RenderViewFrontLinkModelImpl _$$RenderViewFrontLinkModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RenderViewFrontLinkModelImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$RenderViewFrontLinkModelImplToJson(
        _$RenderViewFrontLinkModelImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };

_$RenderViewFrontDataModelImpl _$$RenderViewFrontDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RenderViewFrontDataModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      iconclass: json['iconclass'] as String?,
      icon: json['icon'] as String?,
      public_path: json['public_path'] as String?,
      image_url: json['image_url'] as String?,
    );

Map<String, dynamic> _$$RenderViewFrontDataModelImplToJson(
        _$RenderViewFrontDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'iconclass': instance.iconclass,
      'icon': instance.icon,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
    };

_$RenderViewFrontModelImpl _$$RenderViewFrontModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RenderViewFrontModelImpl(
      current_page: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              RenderViewFrontDataModel.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$RenderViewFrontModelImplToJson(
        _$RenderViewFrontModelImpl instance) =>
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
