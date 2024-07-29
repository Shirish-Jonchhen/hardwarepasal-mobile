import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_image_model.freezed.dart';
part 'product_image_model.g.dart';

@freezed
class ProductImageModel with _$ProductImageModel{
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductImageModel({
    int? id,
    String? image,
    String? created_at,
    String? updated_at,
    int? product_id,
  }) = _ProductImageModel;

  factory ProductImageModel.fromJson(Map<String, dynamic> json) =>
      _$ProductImageModelFromJson(json);
}
