import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';

part 'product_model.g.dart';

@freezed
class ProductModel with _$ProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductModel({
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
    double? weight,
    int? quantity,
    String? status,
    String? slug,
    String? created_at,
    String? updated_at,
    int? brand_id,
    String? group_category_id,
    int? clearance_sale,
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
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
