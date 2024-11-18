// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponResponseModelImpl _$$CouponResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CouponResponseModelImpl(
      code: json['code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : CouponData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CouponResponseModelImplToJson(
        _$CouponResponseModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
    };

_$CouponDataImpl _$$CouponDataImplFromJson(Map<String, dynamic> json) =>
    _$CouponDataImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
      coupon_code: json['coupon_code'] as String?,
    );

Map<String, dynamic> _$$CouponDataImplToJson(_$CouponDataImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'coupon_code': instance.coupon_code,
    };

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      id: json['id'] as int?,
      product_cat_id: json['product_cat_id'] as int?,
      sup_id: json['sup_id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      cover_image: json['cover_image'] as String?,
      model_no: json['model_no'] as String?,
      old_price: json['old_price'] as String?,
      price: json['price'] as int?,
      xtraAttribute: json['xtraAttribute'] as String?,
      weight: json['weight'] as int?,
      quantity: json['quantity'] as int?,
      status: json['status'] as String?,
      slug: json['slug'] as String?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      brand_id: json['brand_id'] as int?,
      group_category_id: json['group_category_id'] as int?,
      clearanceSale: json['clearanceSale'] as int?,
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
      after_discount_price: json['after_discount_price'] as int?,
      coupon_type: json['coupon_type'] as String?,
      coupon_value: json['coupon_value'] as int?,
      coupon_code: json['coupon_code'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
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
      'xtraAttribute': instance.xtraAttribute,
      'weight': instance.weight,
      'quantity': instance.quantity,
      'status': instance.status,
      'slug': instance.slug,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'brand_id': instance.brand_id,
      'group_category_id': instance.group_category_id,
      'clearanceSale': instance.clearanceSale,
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
      'after_discount_price': instance.after_discount_price,
      'coupon_type': instance.coupon_type,
      'coupon_value': instance.coupon_value,
      'coupon_code': instance.coupon_code,
      'category': instance.category,
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      iconclass: json['iconclass'] as String?,
      slug: json['slug'] as String?,
      sup_cat_id: json['sup_cat_id'] as int?,
      status: json['status'] as String?,
      created_by: json['created_by'] as int?,
      updated_by: json['updated_by'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      meta_keywords: json['meta_keywords'] as String?,
      meta_description: json['meta_description'] as String?,
      meta_title: json['meta_title'] as String?,
      is_grouping: json['is_grouping'] as int?,
      display: json['display'] as int?,
      show_on_home: json['show_on_home'] as int?,
      offer_text: json['offer_text'] as String?,
      display_text: json['display_text'] as String?,
      svg_icon: json['svg_icon'] as String?,
      public_path: json['public_path'] as String?,
      image_url: json['image_url'] as String?,
      sup_category: json['sup_category'] == null
          ? null
          : SupCategory.fromJson(json['sup_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'iconclass': instance.iconclass,
      'slug': instance.slug,
      'sup_cat_id': instance.sup_cat_id,
      'status': instance.status,
      'created_by': instance.created_by,
      'updated_by': instance.updated_by,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'meta_keywords': instance.meta_keywords,
      'meta_description': instance.meta_description,
      'meta_title': instance.meta_title,
      'is_grouping': instance.is_grouping,
      'display': instance.display,
      'show_on_home': instance.show_on_home,
      'offer_text': instance.offer_text,
      'display_text': instance.display_text,
      'svg_icon': instance.svg_icon,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
      'sup_category': instance.sup_category,
    };

_$SupCategoryImpl _$$SupCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SupCategoryImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      icon: json['icon'] as String?,
      iconclass: json['iconclass'] as String?,
      slug: json['slug'] as String?,
      sup_cat_id: json['sup_cat_id'] as int?,
      status: json['status'] as String?,
      created_by: json['created_by'] as int?,
      updated_by: json['updated_by'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      meta_keywords: json['meta_keywords'] as String?,
      meta_description: json['meta_description'] as String?,
      meta_title: json['meta_title'] as String?,
      is_grouping: json['is_grouping'] as int?,
      display: json['display'] as int?,
      show_on_home: json['show_on_home'] as int?,
      offer_text: json['offer_text'] as String?,
      display_text: json['display_text'] as String?,
      svg_icon: json['svg_icon'] as String?,
      public_path: json['public_path'] as String?,
      image_url: json['image_url'] as String?,
      sup_category: json['sup_category'] == null
          ? null
          : SupCategory.fromJson(json['sup_category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SupCategoryImplToJson(_$SupCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'icon': instance.icon,
      'iconclass': instance.iconclass,
      'slug': instance.slug,
      'sup_cat_id': instance.sup_cat_id,
      'status': instance.status,
      'created_by': instance.created_by,
      'updated_by': instance.updated_by,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'meta_keywords': instance.meta_keywords,
      'meta_description': instance.meta_description,
      'meta_title': instance.meta_title,
      'is_grouping': instance.is_grouping,
      'display': instance.display,
      'show_on_home': instance.show_on_home,
      'offer_text': instance.offer_text,
      'display_text': instance.display_text,
      'svg_icon': instance.svg_icon,
      'public_path': instance.public_path,
      'image_url': instance.image_url,
      'sup_category': instance.sup_category,
    };
