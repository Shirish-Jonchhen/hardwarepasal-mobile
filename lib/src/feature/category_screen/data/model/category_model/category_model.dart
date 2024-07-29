import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryModel({
    int? code,
    String? message,
    CategoryDataModel? data,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class CategoryDataModel with _$CategoryDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryDataModel({
    required List<CategoryItemModel>? data,
  }) = _CategoryDataModel;

  factory CategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataModelFromJson(json);
}

@freezed
class CategoryItemModel with _$CategoryItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CategoryItemModel({
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
    int? is_grouping,
    int? diaplay,
    String? show_on_home,
    String? offer_text,
    String? display_text,
    String? svg_icon,
    String? public_path,
    String? image_url,
    List<CategoryItemModel>? sub_categories,

  }) = _CategoryItemModel;

  factory CategoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryItemModelFromJson(json);
}