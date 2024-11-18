import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_response_model.freezed.dart';
part 'place_order_response_model.g.dart';

@freezed
class PlaceOrderResponseModel with _$PlaceOrderResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlaceOrderResponseModel({
    int? code,
    String? message,
    PlaceOrderDataModel? data,
  }) = _PlaceOrderResponseModel;

  factory PlaceOrderResponseModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderResponseModelFromJson(json);
}


@freezed
class PlaceOrderDataModel with _$PlaceOrderDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlaceOrderDataModel({
    PlaceOrderInnerDataModel? data,
  }) = _PlaceOrderDataModel;

  factory PlaceOrderDataModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderDataModelFromJson(json);
}

@freezed
class PlaceOrderInnerDataModel with _$PlaceOrderInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlaceOrderInnerDataModel({
    String? order_id,
    String? session_id,
    String? name,
    String? address,
    String? district,
    String? city,
    String? contact,
    String? delivery,
    String? order_note,
    double? totalWeight,
    int? express,
    String? status,
    String? payment_id,
    int? payment_status,
    int? is_customize,
    int? user_id,
    String? updated_at,
    String? created_at,
    int? id,
    double? totalQuantityCharge,
    double? deliveryCharge,
    double? coupon_discount,
  // "order_id": "4766d5a4ec65a8d",
  // "session_id": "s7JGOJ30FO6C67i0UrIPAahwaoZ8Bg11qM4U9Sb7",
  // "name": "test user",
  // "address": "kupandole",
  // "district": null,
  // "city": null,
  // "contact": "1111111111",
  // "delivery": "outsideRingRoad",
  // "order_note": null,
  // "totalWeight": 2.34,
  // "express": 0,
  // "status": "placed",
  // "payment_id": "cash",
  // "payment_status": 0,
  // "is_customize": 0,
  // "user_id": 454,
  // "updated_at": "2024-09-02T11:43:40.000000Z",
  // "created_at": "2024-09-02T11:43:40.000000Z",
  // "id": 33,
  // "totalQuantityCharge": 1942.7350427350427,
  // "deliveryCharge": 42.73504273504274,
  // "coupon_discount": 0
  }) = _PlaceOrderInnerDataModel;

  factory PlaceOrderInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderInnerDataModelFromJson(json);
}