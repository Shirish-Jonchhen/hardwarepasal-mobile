import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home_screen/data/models/product_model/product_model.dart';

part 'hot_deals_response_model.freezed.dart';

part 'hot_deals_response_model.g.dart';

@freezed
class HotDealsResponseModel with _$HotDealsResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HotDealsResponseModel({
    int? code,
    String? message,
    HotDealsDataModel? data,
  }) = _HotDealsResponseModel;

  factory HotDealsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HotDealsResponseModelFromJson(json);
}

@freezed
class HotDealsDataModel with _$HotDealsDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HotDealsDataModel({
    HotDealsInnerDataModel? data,
  }) = _HotDealsDataModel;

  factory HotDealsDataModel.fromJson(Map<String, dynamic> json) =>
      _$HotDealsDataModelFromJson(json);
}

@freezed
class HotDealsInnerDataModel with _$HotDealsInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HotDealsInnerDataModel({
    int? current_page,
    List<ProductModel>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
  }) = _HotDealsInnerDataModel;

  factory HotDealsInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$HotDealsInnerDataModelFromJson(json);
}
