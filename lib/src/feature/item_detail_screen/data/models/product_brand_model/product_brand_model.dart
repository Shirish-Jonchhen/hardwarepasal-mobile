import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_brand_model.freezed.dart';
part 'product_brand_model.g.dart';

@freezed
class ProductBrandModel with _$ProductBrandModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductBrandModel({
    int? id,
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
  }) = _ProductBrandModel;

  factory ProductBrandModel.fromJson(Map<String, dynamic> json) =>
      _$ProductBrandModelFromJson(json);
}