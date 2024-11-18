import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';
import '../../../../category_screen/data/model/category_model/category_model.dart';

part 'category_wise_products_model.freezed.dart';
part 'category_wise_products_model.g.dart';

@freezed
class CategoryWiseProductsResponseModel with _$CategoryWiseProductsResponseModel{
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryWiseProductsResponseModel({
    int? id,
    String? message,
    CategoryWiseProductsDataModel? data,
}) = _CategoryWiseProductsResponseModel;

  factory CategoryWiseProductsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryWiseProductsResponseModelFromJson(json);
}

@freezed
class CategoryWiseProductsDataModel with _$CategoryWiseProductsDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryWiseProductsDataModel({
    CategoryWiseProductsInnerDataModel? data,
  }) = _CategoryWiseProductsDataModel;

  factory CategoryWiseProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryWiseProductsDataModelFromJson(json);
}

@freezed
class CategoryWiseProductsInnerDataModel with _$CategoryWiseProductsInnerDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CategoryWiseProductsInnerDataModel({
    BrandDetailsProductsModel? products,
    CategoryItemModel? category,
    List<CategoryModel>? filteredCategories,
    List<BrandListModel>? brand_list,
    List<dynamic>? colorList,
    List<dynamic>? grouping_catlist,
  }) = _CategoryWiseProductsInnerDataModel;

  factory CategoryWiseProductsInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryWiseProductsInnerDataModelFromJson(json);
}

@freezed
class BrandListModel with _$BrandListModel{
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BrandListModel({
    String? name,
    int? id,
    String? image,
    String? slug,
  }) = _BrandListModel;

  factory BrandListModel.fromJson(Map<String, dynamic> json) =>
      _$BrandListModelFromJson(json);
}
