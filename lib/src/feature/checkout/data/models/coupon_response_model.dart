import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_response_model.freezed.dart';
part 'coupon_response_model.g.dart';

@freezed
class CouponResponseModel with _$CouponResponseModel {
  const factory CouponResponseModel({
    int? code,
    String? message,
    CouponData? data,
  }) = _CouponResponseModel;

  factory CouponResponseModel.fromJson(Map<String, dynamic> json) => _$CouponResponseModelFromJson(json);
}

@freezed
class CouponData with _$CouponData {
  const factory CouponData({
    List<Product>? data,
    String? coupon_code,
  }) = _CouponData;

  factory CouponData.fromJson(Map<String, dynamic> json) => _$CouponDataFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    int? id,
    int? product_cat_id,
    int? sup_id,
    String? name,
    String? description,
    String? cover_image,
    String? model_no,
    String? old_price,
    int? price,
    String? xtraAttribute,
    int? weight,
    int? quantity,
    String? status,
    String? slug,
    DateTime? created_at,
    DateTime? updated_at,
    int? brand_id,
    int? group_category_id,
    int? clearanceSale,
    String? specification,
    String? delivery_days,
    String? express_delivery_days,
    int? express_delivery_price,
    int? discount,
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    String? hot_deal,
    String? warrenty,
    String? hpxpress,
    int? view_count,
    String? video_link,
    int? is_blocked,
    int? is_ask_price,
    int? after_discount_price,
    String? coupon_type,
    int? coupon_value,
    String? coupon_code,
    Category? category,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    int? id,
    String? name,
    String? description,
    String? icon,
    String? iconclass,
    String? slug,
    int? sup_cat_id,
    String? status,
    int? created_by,
    int? updated_by,
    DateTime? created_at,
    DateTime? updated_at,
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    int? is_grouping,
    int? display,
    int? show_on_home,
    String? offer_text,
    String? display_text,
    String? svg_icon,
    String? public_path,
    String? image_url,
    SupCategory? sup_category,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}

@freezed
class SupCategory with _$SupCategory {
  const factory SupCategory({
    int? id,
    String? name,
    String? description,
    String? icon,
    String? iconclass,
    String? slug,
    int? sup_cat_id,
    String? status,
    int? created_by,
    int? updated_by,
    DateTime? created_at,
    DateTime? updated_at,
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    int? is_grouping,
    int? display,
    int? show_on_home,
    String? offer_text,
    String? display_text,
    String? svg_icon,
    String? public_path,
    String? image_url,
    SupCategory? sup_category,
  }) = _SupCategory;

  factory SupCategory.fromJson(Map<String, dynamic> json) => _$SupCategoryFromJson(json);
}
