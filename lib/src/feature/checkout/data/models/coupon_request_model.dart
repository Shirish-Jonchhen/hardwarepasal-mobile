import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_request_model.freezed.dart';
part 'coupon_request_model.g.dart';

@freezed
class CouponRequestModel with _$CouponRequestModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CouponRequestModel({
    required String couponCode,
    required List<CouponProduct> products,
  }) = _CouponRequestModel;

  factory CouponRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CouponRequestModelFromJson(json);
}

@freezed
class CouponProduct with _$CouponProduct {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CouponProduct({
    required int productId,
    required int quantity,
  }) = _CouponProduct;

  factory CouponProduct.fromJson(Map<String, dynamic> json) =>
      _$CouponProductFromJson(json);
}