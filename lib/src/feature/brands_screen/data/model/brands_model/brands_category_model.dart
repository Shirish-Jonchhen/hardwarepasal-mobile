import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_category_model.freezed.dart';
part 'brands_category_model.g.dart';

@freezed
class BrandsCategoryModel with _$BrandsCategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsCategoryModel({
    int? code,
    String? message,
    BrandsCategoryDataModel? data,
  }) = _BrandsCategoryModel;

  factory BrandsCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsCategoryModelFromJson(json);
}

@freezed
class BrandsCategoryDataModel with _$BrandsCategoryDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsCategoryDataModel({
    List<BrandsItemCategoryModel>? data,
  }) = _BrandsCategoryDataModel;

  factory BrandsCategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsCategoryDataModelFromJson(json);
}
//
// @freezed
// class BrandsCategoryDataInnerModel with _$BrandsCategoryDataInnerModel{
//   @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
//   const factory BrandsCategoryDataInnerModel({
//     List<BrandsItemCategoryModel>? data,
//   }) = _BrandsCategoryDataInnerModel;
//
//   factory BrandsCategoryDataInnerModel.fromJson(Map<String, dynamic> json) =>
//       _$BrandsCategoryDataInnerModelFromJson(json);
// }

@freezed
class BrandsItemCategoryModel with _$BrandsItemCategoryModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsItemCategoryModel({
    int? id,
    String? name,
    List<BrandsItemModel>? brands,
    String? public_path,
    String? image_url,
  }) = _BrandsItemCategoryModel;

  factory BrandsItemCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsItemCategoryModelFromJson(json);
}

@freezed
class BrandsItemModel with _$BrandsItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsItemModel({
    int? id,
    int? category_id,
    String? name,
    String? description,
    String? image,
    String? status,
    String? created_at,
    String? updated_at,
    String? cover_image,
    String? meta_keywords,
    String? meta_description,
    String? slug,
  }) = _BrandsItemModel;

  factory BrandsItemModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsItemModelFromJson(json);
}