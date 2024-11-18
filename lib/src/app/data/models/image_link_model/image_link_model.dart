import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_link_model.freezed.dart';
part 'image_link_model.g.dart';

@freezed
class ImageLinkResponseModel with _$ImageLinkResponseModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImageLinkResponseModel({
    int? code,
    String? message,
    ImageLinkModel? data,
  }) = _ImageLinkResponseModel;

  factory ImageLinkResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImageLinkResponseModelFromJson(json);
}

@freezed
class ImageLinkModel with _$ImageLinkModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ImageLinkModel({
    String? adsImage,
    String? productCoverImage,
    String? productCategoryImage,
    String? brandImage,
    String? userImage,
  }) = _ImageLinkModel;

  factory ImageLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ImageLinkModelFromJson(json);
}