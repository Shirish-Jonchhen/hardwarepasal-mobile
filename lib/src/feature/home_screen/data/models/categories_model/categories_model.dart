
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_model.freezed.dart';
part 'categories_model.g.dart';

@freezed
class CategoriesHomeSubCategorySubCategoriesModel with _$CategoriesHomeSubCategorySubCategoriesModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoriesHomeSubCategorySubCategoriesModel({
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
    String? meta_descriprion,
    String? meta_title,
    String? is_grouping,
    int? display,
    String? show_on_home,
    String? offer_text,
    String? display_text,
    String? svg_icon,
    String? public_path,
    String? image_url,
    List<dynamic>? sub_categories,
  }) = _CategoriesHomeSubCategorySubCategoriesModel;

  factory CategoriesHomeSubCategorySubCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesHomeSubCategorySubCategoriesModelFromJson(json);
}


@freezed
class CategoriesHomeSubCategoryModel with _$CategoriesHomeSubCategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoriesHomeSubCategoryModel({
    int? id,
    String? name,
    String? slug,
    String? offer_text,
    String? icon,
    int? sup_cat_id,
    String? sub_category_image,
    String? product_image,
    String? main_product_image,
    String? public_path,
    String? image_url,
    List<CategoriesHomeSubCategorySubCategoriesModel>? sub_categories,
  }) = _CategoriesHomeSubCategoryModel;

  factory CategoriesHomeSubCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesHomeSubCategoryModelFromJson(json);
}

@freezed
class CategoriesHomeAdImageModel with _$CategoriesHomeAdImageModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoriesHomeAdImageModel({
    int? id,
    String? category,
    String? name,
    String? link,
    String? image,
    int? status,
    String? created_at,
    String? updated_at,
  }) = _CategoriesHomeAdImageModel;

  factory CategoriesHomeAdImageModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesHomeAdImageModelFromJson(json);
}


@freezed
class CategoriesHomeModel with _$CategoriesHomeModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoriesHomeModel({
    int? id,
    String? name,
    String? description,
    String? slug,
    int? category_show_id,
    List<CategoriesHomeAdImageModel>? ad_images,
    List<CategoriesHomeSubCategoryModel>? sub_category,
  }) = _CategoriesHomeModel;

  factory CategoriesHomeModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesHomeModelFromJson(json);
}