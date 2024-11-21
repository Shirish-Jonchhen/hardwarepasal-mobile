import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_review_response_model.freezed.dart';
part 'post_review_response_model.g.dart';

@freezed
class PostReviewResponseModel with _$PostReviewResponseModel {
  const factory PostReviewResponseModel({
    int? code,
    String? message,
    ReviewDataWrapper? data,
  }) = _PostReviewResponseModel;

  factory PostReviewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PostReviewResponseModelFromJson(json);
}

@freezed
class ReviewDataWrapper with _$ReviewDataWrapper {
  const factory ReviewDataWrapper({
    ReviewData? data,
  }) = _ReviewDataWrapper;

  factory ReviewDataWrapper.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataWrapperFromJson(json);
}

@freezed
class ReviewData with _$ReviewData {
  const factory ReviewData({
    int? userId,
    String? stars,
    String? description,
    int? productId,
    DateTime? updatedAt,
    DateTime? createdAt,
    int? id,
  }) = _ReviewData;

  factory ReviewData.fromJson(Map<String, dynamic> json) =>
      _$ReviewDataFromJson(json);
}
