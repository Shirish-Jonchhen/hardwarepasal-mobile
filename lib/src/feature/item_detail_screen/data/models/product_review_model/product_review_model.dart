
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_review_model.freezed.dart';
part 'product_review_model.g.dart';

@freezed
class ProductReviewModel with _$ProductReviewModel{
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductReviewModel({
    int? id,
    int? product_id,
    int? user_id,
    double? stars,
    String? description,
    String? created_at,
    String? updated_at,
    String? deleted_at,
  }) = _ProductReviewModel;

  factory ProductReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ProductReviewModelFromJson(json);

}