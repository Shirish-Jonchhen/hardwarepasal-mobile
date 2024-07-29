import 'package:freezed_annotation/freezed_annotation.dart';

import '../product_model/product_model.dart';
import '../render_view_front_model/render_view_front_model.dart';

part 'home_all_products_model.freezed.dart';
part 'home_all_products_model.g.dart';

@freezed
class HomeAllProductsModel with _$HomeAllProductsModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeAllProductsModel({
    int? code,
    String? message,
    HomeAllProductsDataModel? data,
  }) = _HomeAllProductsModel;

  factory HomeAllProductsModel.fromJson(Map<String, dynamic> json) =>
      _$HomeAllProductsModelFromJson(json);
}

@freezed
class HomeAllProductsDataModel with _$HomeAllProductsDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeAllProductsDataModel({
    HomeAllProductsDataProductsModel? products,
}) = _HomeAllProductsDataModel;
  factory HomeAllProductsDataModel.fromJson(Map<String, dynamic> json) =>
      _$HomeAllProductsDataModelFromJson(json);
}


@freezed
class HomeAllProductsDataProductsModel with _$HomeAllProductsDataProductsModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory HomeAllProductsDataProductsModel({
    int? current_page,
    List<ProductModel>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    List<RenderViewFrontLinkModel>? links,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
}) = _HomeAllProductsDataProductsModel;
factory HomeAllProductsDataProductsModel.fromJson(Map<String, dynamic> json) =>
_$HomeAllProductsDataProductsModelFromJson(json);
}
