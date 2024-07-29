import 'package:freezed_annotation/freezed_annotation.dart';

part 'render_view_front_model.freezed.dart';

part 'render_view_front_model.g.dart';

@freezed
class RenderViewFrontLinkModel with _$RenderViewFrontLinkModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RenderViewFrontLinkModel({
    String? url,
    String? label,
    bool? active,
  }) = _RenderViewFrontLinkModel;

  factory RenderViewFrontLinkModel.fromJson(Map<String, dynamic> json) =>
      _$RenderViewFrontLinkModelFromJson(json);
}

@freezed
class RenderViewFrontDataModel with _$RenderViewFrontDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RenderViewFrontDataModel({
    int? id,
    String? name,
    String? slug,
    String? iconclass,
    String? icon,
    String? public_path,
    String? image_url,
  }) = _RenderViewFrontDataModel;

  factory RenderViewFrontDataModel.fromJson(Map<String, dynamic> json) =>
      _$RenderViewFrontDataModelFromJson(json);
}


@freezed
class RenderViewFrontModel with _$RenderViewFrontModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RenderViewFrontModel({
    int? current_page,
    List<RenderViewFrontDataModel>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    List<RenderViewFrontLinkModel>? links,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
  }) = _RenderViewFrontModel;

  factory RenderViewFrontModel.fromJson(Map<String, dynamic> json) =>
      _$RenderViewFrontModelFromJson(json);
}