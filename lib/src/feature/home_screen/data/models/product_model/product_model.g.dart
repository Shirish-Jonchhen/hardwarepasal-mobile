// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductModelImpl _$$ProductModelImplFromJson(Map<String, dynamic> json) =>
    _$ProductModelImpl(
      id: json['id'] as int?,
      product_cat_id: json['product_cat_id'] as int?,
      sup_id: json['sup_id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      cover_image: json['cover_image'] as String?,
      model_no: json['model_no'] as String?,
      old_price: json['old_price'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      xtraAttribute: json['xtra_attribute'] as String?,
      weight: (json['weight'] as num?)?.toDouble(),
      quantity: json['quantity'] as int?,
      status: json['status'] as String?,
      slug: json['slug'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      brand_id: json['brand_id'] as int?,
      group_category_id: json['group_category_id'] as int?,
      clearance_sale: json['clearance_sale'] as int?,
      specification: json['specification'] as String?,
      delivery_days: json['delivery_days'] as String?,
      express_delivery_days: json['express_delivery_days'] as String?,
      express_delivery_price: json['express_delivery_price'] as int?,
      discount: json['discount'] as int?,
      meta_keywords: json['meta_keywords'] as String?,
      meta_description: json['meta_description'] as String?,
      meta_title: json['meta_title'] as String?,
      hot_deal: json['hot_deal'] as String?,
      warrenty: json['warrenty'] as String?,
      hpxpress: json['hpxpress'] as String?,
      view_count: json['view_count'] as int?,
      video_link: json['video_link'] as String?,
      is_blocked: json['is_blocked'] as int?,
      is_ask_price: json['is_ask_price'] as int?,
      reviews: (json['reviews'] as List<dynamic>?)
          ?.map((e) => ProductReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductModelImplToJson(_$ProductModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_cat_id': instance.product_cat_id,
      'sup_id': instance.sup_id,
      'name': instance.name,
      'description': instance.description,
      'cover_image': instance.cover_image,
      'model_no': instance.model_no,
      'old_price': instance.old_price,
      'price': instance.price,
      'xtra_attribute': instance.xtraAttribute,
      'weight': instance.weight,
      'quantity': instance.quantity,
      'status': instance.status,
      'slug': instance.slug,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'brand_id': instance.brand_id,
      'group_category_id': instance.group_category_id,
      'clearance_sale': instance.clearance_sale,
      'specification': instance.specification,
      'delivery_days': instance.delivery_days,
      'express_delivery_days': instance.express_delivery_days,
      'express_delivery_price': instance.express_delivery_price,
      'discount': instance.discount,
      'meta_keywords': instance.meta_keywords,
      'meta_description': instance.meta_description,
      'meta_title': instance.meta_title,
      'hot_deal': instance.hot_deal,
      'warrenty': instance.warrenty,
      'hpxpress': instance.hpxpress,
      'view_count': instance.view_count,
      'video_link': instance.video_link,
      'is_blocked': instance.is_blocked,
      'is_ask_price': instance.is_ask_price,
      'reviews': instance.reviews?.map((e) => e.toJson()).toList(),
    };
