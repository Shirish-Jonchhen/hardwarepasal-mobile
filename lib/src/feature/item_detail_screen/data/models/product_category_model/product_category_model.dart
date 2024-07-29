import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category_model.freezed.dart';

part 'product_category_model.g.dart';

@freezed
class ProductCategoryModel with _$ProductCategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductCategoryModel({
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
    String? created_at,
    String? updated_at,
    String? meta_keywords,
    String? meta_description,
    String? meta_title,
    String? is_grouping,
    int? display,
    String? show_on_home,
    String? offer_text,
    String? display_text,
    String? public_path,
    String? image_url,
    String? svg_icon,
  }) = _ProductCategoryModel;

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryModelFromJson(json);
}
