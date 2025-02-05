
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/ads_model/ads_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/banner_model/banner_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/categories_model/categories_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/clearance_sale_model/clearance_sale_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/render_view_front_model/render_view_front_model.dart';

import '../product_model/product_model.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
class HomeInnerDataModel with _$HomeInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeInnerDataModel({
    BannerModel? banner,
    RenderViewFrontModel? render_view_front,
    @JsonKey(name: 'featuredProducts1') List<ProductModel>? featuredProducts1,
    @JsonKey(name: 'featuredProducts2') List<ProductModel>? featuredProducts2,
    List<CategoriesHomeModel>? categories_home,
    List<ProductModel>? recently_view_product,
    ClearanceSaleModel? clearance_sale,
    // AdsModel? ads,
    List<AdsDataModel>? ads,
    List<AdsDataModel>? noticead,
  }) = _HomeInnerDataModel;

  factory HomeInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeInnerDataModelFromJson(json);
}

@freezed
class HomeDataModel with _$HomeDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeDataModel({
    HomeInnerDataModel? data,
  }) = _HomeDataModel;

  factory HomeDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeDataModelFromJson(json);
}

@freezed
class HomeModel with _$HomeModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeModel({
    int? code,
    String? message,
    HomeDataModel? data,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}