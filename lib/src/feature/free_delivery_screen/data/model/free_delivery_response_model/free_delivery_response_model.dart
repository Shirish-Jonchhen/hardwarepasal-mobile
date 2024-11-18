import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home_screen/data/models/product_model/product_model.dart';

part 'free_delivery_response_model.freezed.dart';

part 'free_delivery_response_model.g.dart';

@freezed
class FreeDeliveryResponseModel with _$FreeDeliveryResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FreeDeliveryResponseModel({
    int? code,
    String? message,
    FreeDeliveryDataModel? data,
  }) = _FreeDeliveryResponseModel;

  factory FreeDeliveryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FreeDeliveryResponseModelFromJson(json);
}

@freezed
class FreeDeliveryDataModel with _$FreeDeliveryDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FreeDeliveryDataModel({
    FreeDeliveryInnerDataModel? data,
  }) = _FreeDeliveryDataModel;

  factory FreeDeliveryDataModel.fromJson(Map<String, dynamic> json) =>
      _$FreeDeliveryDataModelFromJson(json);
}

@freezed
class FreeDeliveryInnerDataModel with _$FreeDeliveryInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory FreeDeliveryInnerDataModel({
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
  }) = _FreeDeliveryInnerDataModel;

  factory FreeDeliveryInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$FreeDeliveryInnerDataModelFromJson(json);
}
