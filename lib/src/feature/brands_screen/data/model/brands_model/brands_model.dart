import 'package:freezed_annotation/freezed_annotation.dart';

part 'brands_model.freezed.dart';
part 'brands_model.g.dart';

@freezed
class BrandsModel with _$BrandsModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsModel({
    int? code,
    String? message,
    BrandsDataModel? data,
  }) = _BrandsModel;

  factory BrandsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsModelFromJson(json);
}

@freezed
class BrandsDataModel with _$BrandsDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsDataModel({
    required BrandsDataInnerModel? data,
  }) = _BrandsDataModel;

  factory BrandsDataModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsDataModelFromJson(json);
}

@freezed
class BrandsDataInnerModel with _$BrandsDataInnerModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BrandsDataInnerModel({
    List<BrandsItemModel>? data,
  }) = _BrandsDataInnerModel;

  factory BrandsDataInnerModel.fromJson(Map<String, dynamic> json) =>
      _$BrandsDataInnerModelFromJson(json);
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