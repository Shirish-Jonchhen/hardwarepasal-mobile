import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerLinkModel with _$BannerLinkModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BannerLinkModel({
    String? url,
    String? label,
    bool? active,
  }) = _bannerLinkModel;

  factory BannerLinkModel.fromJson(Map<String, dynamic> json) =>
      _$BannerLinkModelFromJson(json);
}

@freezed
class BannerDataModel with _$BannerDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BannerDataModel({
    int? id,
    String? name,
    String? description,
    String? image,
    String? mobile_image,
    String? status,
    String? created_at,
    String? updated_at,
    String? link,
    int? home,
    int? hpxpress,

  }) = _BannerDataModel;

  factory BannerDataModel.fromJson(Map<String, dynamic> json) =>
      _$BannerDataModelFromJson(json);
}

@freezed
class BannerModel with _$BannerModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory BannerModel({
    int? current_page,
    List<BannerDataModel>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    List<BannerLinkModel>? links,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, dynamic> json) =>
      _$BannerModelFromJson(json);
}