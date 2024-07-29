// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductReviewModelImpl _$$ProductReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductReviewModelImpl(
      id: json['id'] as int?,
      product_id: json['product_id'] as int?,
      user_id: json['user_id'] as int?,
      stars: (json['stars'] as num?)?.toDouble(),
      description: json['description'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$ProductReviewModelImplToJson(
        _$ProductReviewModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.product_id,
      'user_id': instance.user_id,
      'stars': instance.stars,
      'description': instance.description,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
