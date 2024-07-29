import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/clearance_sale_model/clearance_sale_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

import '../../../../category_screen/data/model/category_model/category_model.dart';

part 'brand_details_model.freezed.dart';
part 'brand_details_model.g.dart';

@freezed
class BrandDetailsResponseModel with _$BrandDetailsResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BrandDetailsResponseModel({
    int? id,
    String? message,
    BrandDetailsDataModel? data,
  }) = _BrandDetailsResponseModel;

  factory BrandDetailsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsResponseModelFromJson(json);
}


@freezed
class BrandDetailsDataModel with _$BrandDetailsDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BrandDetailsDataModel({
    BrandDetailsInnerDataModel? data,
  }) = _BrandDetailsDataModel;

  factory BrandDetailsDataModel.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsDataModelFromJson(json);
}

@freezed
class BrandDetailsInnerDataModel with _$BrandDetailsInnerDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BrandDetailsInnerDataModel({
    BrandDetailsProductsModel? products,
    List<dynamic>? brands,
    @JsonKey(name: 'filteredCategories')List<CategoryItemModel>? filteredCategories,
    List<CategoryItemModel>? brand_sub_categories,
    BrandsItemModel? brand,
    bool? is_brand,
  }) = _BrandDetailsInnerDataModel;

  factory BrandDetailsInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsInnerDataModelFromJson(json);
}

@freezed
class BrandDetailsProductsModel with _$BrandDetailsProductsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory BrandDetailsProductsModel({
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

  }) = _BrandDetailsProductsModel;

  factory BrandDetailsProductsModel.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailsProductsModelFromJson(json);
}