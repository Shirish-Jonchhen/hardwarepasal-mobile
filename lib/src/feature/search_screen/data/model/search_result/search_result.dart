import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_all_products_model/home_all_products_model.dart';

import '../../../../home_screen/data/models/categories_model/categories_model.dart';

part 'search_result.freezed.dart';

part 'search_result.g.dart';

@freezed
class SearchResult with _$SearchResult {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchResult({
    int? code,
    String? message,
    SearchResultData? data,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@freezed
class SearchResultData with _$SearchResultData {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchResultData({
    SearchResultInnerData? data,
  }) = _SearchResultData;

  factory SearchResultData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDataFromJson(json);
}

@freezed
class SearchResultInnerData with _$SearchResultInnerData{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SearchResultInnerData({
    HomeAllProductsDataProductsModel? products,
    @JsonKey(name: "filteredCategories")List<CategoriesHomeSubCategorySubCategoriesModel>? filteredCategories,
    List<CategoriesHomeSubCategorySubCategoriesModel>? sub_categories,
  }) = _SearchResultInnerData;

  factory SearchResultInnerData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultInnerDataFromJson(json);
}

