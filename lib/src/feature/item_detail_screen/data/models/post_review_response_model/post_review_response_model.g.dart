// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_review_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostReviewResponseModelImpl _$$PostReviewResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostReviewResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ReviewDataWrapper.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostReviewResponseModelImplToJson(
        _$PostReviewResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$ReviewDataWrapperImpl _$$ReviewDataWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewDataWrapperImpl(
      data: json['data'] == null
          ? null
          : ReviewData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReviewDataWrapperImplToJson(
        _$ReviewDataWrapperImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$ReviewDataImpl _$$ReviewDataImplFromJson(Map<String, dynamic> json) =>
    _$ReviewDataImpl(
      userId: json['userId'] as int?,
      stars: json['stars'] as String?,
      description: json['description'] as String?,
      productId: json['productId'] as int?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['id'] as int?,
    );

Map<String, dynamic> _$$ReviewDataImplToJson(_$ReviewDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'stars': instance.stars,
      'description': instance.description,
      'productId': instance.productId,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
    };
