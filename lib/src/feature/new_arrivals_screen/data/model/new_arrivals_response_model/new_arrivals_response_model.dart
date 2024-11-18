import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home_screen/data/models/product_model/product_model.dart';

part 'new_arrivals_response_model.freezed.dart';

part 'new_arrivals_response_model.g.dart';

@freezed
class NewArrivalsResponseModel with _$NewArrivalsResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewArrivalsResponseModel({
    int? code,
    String? message,
    NewArrivalsDataModel? data,
  }) = _NewArrivalsResponseModel;

  factory NewArrivalsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewArrivalsResponseModelFromJson(json);
}

@freezed
class NewArrivalsDataModel with _$NewArrivalsDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewArrivalsDataModel({
    NewArrivalsInnerDataModel? data,
  }) = _NewArrivalsDataModel;

  factory NewArrivalsDataModel.fromJson(Map<String, dynamic> json) =>
      _$NewArrivalsDataModelFromJson(json);
}

@freezed
class NewArrivalsInnerDataModel with _$NewArrivalsInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewArrivalsInnerDataModel({
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
  }) = _NewArrivalsInnerDataModel;

  factory NewArrivalsInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$NewArrivalsInnerDataModelFromJson(json);
}
