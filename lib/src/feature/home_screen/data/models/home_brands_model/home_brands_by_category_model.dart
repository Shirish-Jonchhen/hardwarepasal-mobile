


import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_brands_by_category_model.freezed.dart';
part 'home_brands_by_category_model.g.dart';


@freezed
class HomeBrandModel with _$HomeBrandModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeBrandModel({
    String? id,
    String? category_id,
    String? name,
    String? description,
    String? image,
    String? status,
    String? created_at,
    String? updated_at,
    String? cover_image,
    String? meta_title,
    String? meta_keywords,
    String? meta_description,
    String? slug,
    String? brand_id,
  }) = _HomeBrandModel;

  factory HomeBrandModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBrandModelFromJson(json);
}

@freezed
class HomeBrandsByCategoryInnerModel with _$HomeBrandsByCategoryInnerModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeBrandsByCategoryInnerModel({
    int? id,
    String? name,
    List<HomeBrandModel>? brands,
    String? public_path,
    String? image_url,
  }) = _HomeBrandsByCategoryInnerModel;

  factory HomeBrandsByCategoryInnerModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBrandsByCategoryInnerModelFromJson(json);
}

@freezed
class HomeBrandsByCategoryDataModel with _$HomeBrandsByCategoryDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)

  const factory HomeBrandsByCategoryDataModel({
    List<HomeBrandsByCategoryInnerModel>? data,
  }) = _HomeBrandsByCategoryDataModel;

  factory HomeBrandsByCategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBrandsByCategoryDataModelFromJson(json);
}

@freezed
class HomeBrandsByCategoryModel with _$HomeBrandsByCategoryModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeBrandsByCategoryModel({
    int? code,
    String? message,
    HomeBrandsByCategoryDataModel? data,
  }) = _HomeBrandsByCategoryModel;

  factory HomeBrandsByCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$HomeBrandsByCategoryModelFromJson(json);
}