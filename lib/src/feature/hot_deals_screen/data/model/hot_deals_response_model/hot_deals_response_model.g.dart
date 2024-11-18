// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_deals_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HotDealsResponseModelImpl _$$HotDealsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotDealsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : HotDealsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotDealsResponseModelImplToJson(
        _$HotDealsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$HotDealsDataModelImpl _$$HotDealsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotDealsDataModelImpl(
      data: json['data'] == null
          ? null
          : HotDealsInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HotDealsDataModelImplToJson(
        _$HotDealsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$HotDealsInnerDataModelImpl _$$HotDealsInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HotDealsInnerDataModelImpl(
      current_page: json['current_page'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      first_page_url: json['first_page_url'] as String?,
      from: json['from'] as int?,
      last_page: json['last_page'] as int?,
      last_page_url: json['last_page_url'] as String?,
      next_page_url: json['next_page_url'] as String?,
      path: json['path'] as String?,
      per_page: json['per_page'] as int?,
      prev_page_url: json['prev_page_url'] as String?,
      to: json['to'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$$HotDealsInnerDataModelImplToJson(
        _$HotDealsInnerDataModelImpl instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'data': instance.data?.map((e) => e.toJson()).toList(),
      'first_page_url': instance.first_page_url,
      'from': instance.from,
      'last_page': instance.last_page,
      'last_page_url': instance.last_page_url,
      'next_page_url': instance.next_page_url,
      'path': instance.path,
      'per_page': instance.per_page,
      'prev_page_url': instance.prev_page_url,
      'to': instance.to,
      'total': instance.total,
    };
