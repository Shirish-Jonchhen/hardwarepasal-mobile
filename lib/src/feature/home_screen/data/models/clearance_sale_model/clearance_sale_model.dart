import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

part 'clearance_sale_model.freezed.dart';

part 'clearance_sale_model.g.dart';

@freezed
class ClearanceSaleLinkModel with _$ClearanceSaleLinkModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ClearanceSaleLinkModel({
    String? url,
    String? label,
    bool? active,
  }) = _ClearanceSaleLinkModel;

  factory ClearanceSaleLinkModel.fromJson(Map<String, dynamic> json) =>
      _$ClearanceSaleLinkModelFromJson(json);
}

@freezed
class ClearanceSaleModel with _$ClearanceSaleModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ClearanceSaleModel({
    int? current_page,
    List<ProductModel>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    List<ClearanceSaleLinkModel>? links,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
  }) = _ClearanceSaleModel;

  factory ClearanceSaleModel.fromJson(Map<String, dynamic> json) =>
      _$ClearanceSaleModelFromJson(json);
}