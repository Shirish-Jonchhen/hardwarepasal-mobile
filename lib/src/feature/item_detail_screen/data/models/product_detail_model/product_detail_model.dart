import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/actual_product_model/actual_product_model.dart';

import '../../../../home_screen/data/models/product_model/product_model.dart';
import '../voucher_model/voucher_model.dart';

part 'product_detail_model.freezed.dart';
part 'product_detail_model.g.dart';


@freezed
class ProductDetailModel with _$ProductDetailModel{
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductDetailModel({
  int? status,
  String? message,
  ProductDetailDataModel? data,
  }) = _ProductDetailModel;

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailModelFromJson(json);
}


@freezed
class ProductDetailDataModel with _$ProductDetailDataModel{
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductDetailDataModel({
  ProductDetailInnerDataModel? data,
  }) = _ProductDetailDataModel;

  factory ProductDetailDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailDataModelFromJson(json);

}

@freezed
class ProductDetailInnerDataModel with _$ProductDetailInnerDataModel{
@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ProductDetailInnerDataModel({
  ActualProductModel? product,
  @JsonKey(name: 'productYouMightLike')List<ProductModel>? productYouMightLike,
  @JsonKey(name: 'customersAreAlsoViewing')List<ProductModel>? customersAreAlsoViewing,
  List<ProductModel>? recently_viewed_products,
  @JsonKey(name: 'voucherlist')List<VoucherModel>? voucherList,
  List<ProductModel>? brand_products,
  }) = _ProductDetailInnerDataModel;

  factory ProductDetailInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailInnerDataModelFromJson(json);
}