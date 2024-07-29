import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_brand_model/product_brand_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_category_model/product_category_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_image_model/product_image_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_supplier_model/product_supplier_model.dart';

import '../product_review_model/product_review_model.dart';

part 'actual_product_model.freezed.dart';

part 'actual_product_model.g.dart';

@freezed
class ActualProductModel with _$ActualProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ActualProductModel({
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
    String? slug,
    String? created_at,
    String? updated_at,
    int? brand_id,
    String? group_category_id,
    int? clearanceSale,
    String? specification,
    String? delivery_days,
    String? express_delivery_days,
    int? express_delivery_price,
    int? discount,
    String? meta_title,
    String? meta_keywords,
    String? meta_description,
    String? hot_deals,
    String? warrenty,
    String? hpxpress,
    int? view_count,
    String? video_link,
    int? is_blocked,
    int? is_ask_price,
    List<ProductImageModel>? images,
    List<ProductReviewModel>? reviews,
    ProductCategoryModel? category,
    ProductBrandModel? brand,
    ProductSupplierModel? suppliers,
    List<ProductReviewModel>? productReviews,
  }) = _ActualProductModel;

  factory ActualProductModel.fromJson(Map<String, dynamic> json) =>
      _$ActualProductModelFromJson(json);
}
