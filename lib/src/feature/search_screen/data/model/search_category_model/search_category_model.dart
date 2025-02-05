import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/category_screen/data/model/category_model/category_model.dart';

part 'search_category_model.freezed.dart';
part 'search_category_model.g.dart';

@freezed
class SearchCategoryModel with _$SearchCategoryModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchCategoryModel({
    int? code,
    String? message,
    SearchCategoryDataModel? data,
  }) = _SearchCategoryModel;

  factory SearchCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryModelFromJson(json);
}

@freezed
class SearchCategoryDataModel with _$SearchCategoryDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchCategoryDataModel({
    List<CategoryItemModel>? data,
  }) = _SearchCategoryDataModel;

  factory SearchCategoryDataModel.fromJson(Map<String, dynamic> json) =>
      _$SearchCategoryDataModelFromJson(json);
}