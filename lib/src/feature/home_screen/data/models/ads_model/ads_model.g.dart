// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdsDataModelImpl _$$AdsDataModelImplFromJson(Map<String, dynamic> json) =>
    _$AdsDataModelImpl(
      id: json['id'],
      name: json['name'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      link: json['link'] as String?,
      status: json['status'] as String?,
      created_by: json['created_by'] as int?,
      updated_by: json['updated_by'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      position: json['position'] as int?,
    );

Map<String, dynamic> _$$AdsDataModelImplToJson(_$AdsDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'image': instance.image,
      'link': instance.link,
      'status': instance.status,
      'created_by': instance.created_by,
      'updated_by': instance.updated_by,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'position': instance.position,
    };

_$AdsModelImpl _$$AdsModelImplFromJson(Map<String, dynamic> json) =>
    _$AdsModelImpl(
      zero: (json['0'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      one: (json['1'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      two: (json['2'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      three: (json['3'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      four: (json['4'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      five: (json['5'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      six: (json['6'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ten: (json['10'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      eleven: (json['11'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      twelve: (json['12'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      thirteen: (json['13'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      fourteen: (json['14'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      oneHundredOne: (json['101'] as List<dynamic>?)
          ?.map((e) => AdsDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AdsModelImplToJson(_$AdsModelImpl instance) =>
    <String, dynamic>{
      '0': instance.zero,
      '1': instance.one,
      '2': instance.two,
      '3': instance.three,
      '4': instance.four,
      '5': instance.five,
      '6': instance.six,
      '10': instance.ten,
      '11': instance.eleven,
      '12': instance.twelve,
      '13': instance.thirteen,
      '14': instance.fourteen,
      '101': instance.oneHundredOne,
    };
