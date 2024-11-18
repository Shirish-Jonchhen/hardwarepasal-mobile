// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_arrivals_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewArrivalsResponseModelImpl _$$NewArrivalsResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewArrivalsResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : NewArrivalsDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewArrivalsResponseModelImplToJson(
        _$NewArrivalsResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data?.toJson(),
    };

_$NewArrivalsDataModelImpl _$$NewArrivalsDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewArrivalsDataModelImpl(
      data: json['data'] == null
          ? null
          : NewArrivalsInnerDataModel.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NewArrivalsDataModelImplToJson(
        _$NewArrivalsDataModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

_$NewArrivalsInnerDataModelImpl _$$NewArrivalsInnerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NewArrivalsInnerDataModelImpl(
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

Map<String, dynamic> _$$NewArrivalsInnerDataModelImplToJson(
        _$NewArrivalsInnerDataModelImpl instance) =>
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
