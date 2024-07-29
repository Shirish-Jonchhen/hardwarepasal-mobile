
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/ads_model/ads_model.dart';

import '../../../../home_screen/data/models/product_model/product_model.dart';
import '../../../../item_detail_screen/data/models/voucher_model/voucher_model.dart';

part 'cart_model.freezed.dart';
part 'cart_model.g.dart';

@freezed
class CartModel with _$CartModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CartModel({
    int? code,
    String? message,
    CartDataModel? data,
  }) = _CartModel;

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
}


@freezed
class CartDataModel with _$CartDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CartDataModel({
   List<ProductModel>? cartdata,
    List<ProductModel>? recently_viewed_product,
    List<dynamic>? voucher,
    List<VoucherModel>? voucherlist,
    List<AdsDataModel>? adslist,
    ProductModel? product,
  }) = _CartDataModel;

  factory CartDataModel.fromJson(Map<String, dynamic> json) =>
      _$CartDataModelFromJson(json);
}


@freezed
class RemoveFromCartModel with _$RemoveFromCartModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory RemoveFromCartModel({
    int? code,
    String? message,
    List<dynamic>? data,
  }) = _RemoveFromCartModel;

  factory RemoveFromCartModel.fromJson(Map<String, dynamic> json) =>
      _$RemoveFromCartModelFromJson(json);
}