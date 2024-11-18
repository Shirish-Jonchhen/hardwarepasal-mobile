

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

part 'checkout_model.freezed.dart';
part 'checkout_model.g.dart';

@freezed
class CheckoutResponseModel with _$CheckoutResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CheckoutResponseModel({
    int? code,
    String? message,
    CheckoutDataModel? data,
  }) = _CheckoutResponseModel;

  factory CheckoutResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutResponseModelFromJson(json);
}

@freezed
class CheckoutDataModel with _$CheckoutDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CheckoutDataModel({
    CheckoutInnerDataModel? data,
  }) = _CheckoutDataModelModel;

  factory CheckoutDataModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutDataModelFromJson(json);
}

@freezed
class CheckoutInnerDataModel with _$CheckoutInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory CheckoutInnerDataModel({
    List<ProductModel>? cartdata,
    List<String>? districts,
    double? weight,
    DeliveryChargeModel? delivery_charge,
    List<DistrictModel>? outvalley_list,

  }) = _CheckoutInnerDataModel;

  factory CheckoutInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$CheckoutInnerDataModelFromJson(json);
}

@freezed
class DeliveryChargeModel with _$DeliveryChargeModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DeliveryChargeModel({
    int? inside_ringroad,
    int? outside_ringroad,
    int? outside_valley,
  }) = _DeliveryChargeModel;

  factory DeliveryChargeModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryChargeModelFromJson(json);
}

@freezed
class DistrictModel with _$DistrictModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory DistrictModel({
    int? id,
    String? district,
    String? city,
    String? created_at,
    String? updated_at,
    int? insideRingRoad,
    int? outsideRingRoad,
    int? accept_cod,
  }) = _DistrictModel;

  factory DistrictModel.fromJson(Map<String, dynamic> json) =>
      _$DistrictModelFromJson(json);
}