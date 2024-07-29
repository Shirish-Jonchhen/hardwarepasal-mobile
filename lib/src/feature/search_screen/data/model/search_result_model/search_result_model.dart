
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

part 'search_result_model.freezed.dart';
part 'search_result_model.g.dart';

@freezed
class SearchResultModel with _$SearchResultModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchResultModel({
    int? code,
    String? message,
    SearchResultDataModel? data,
  }) = _SearchResultModel;

  factory SearchResultModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultModelFromJson(json);
}

@freezed
class SearchResultDataModel with _$SearchResultDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchResultDataModel({
    List<ProductModel>? data,
  }) = _SearchResultDataModel;

  factory SearchResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDataModelFromJson(json);
}