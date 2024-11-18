import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../home_screen/data/models/product_model/product_model.dart';

part 'my_orders_model.freezed.dart';

part 'my_orders_model.g.dart';

@freezed
class MyOrdersModel with _$MyOrdersModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyOrdersModel({
    int? code,
    String? message,
    MyOrderDataModel? data,
  }) = _MyOrdersModel;

  factory MyOrdersModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrdersModelFromJson(json);
}

@freezed
class MyOrderDataModel with _$MyOrderDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyOrderDataModel({
    MyOrderInnerDataModel? data,
  }) = _MyOrderDataModel;

  factory MyOrderDataModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrderDataModelFromJson(json);
}

@freezed
class MyOrderInnerDataModel with _$MyOrderInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory MyOrderInnerDataModel({
    int? current_page,
    List<OrderData>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    String? next_page_url,
    String? path,
    int? per_page,
    String? prev_page_url,
    int? to,
    int? total,
  }) = _MyOrderInnerDataModel;

  factory MyOrderInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$MyOrderInnerDataModelFromJson(json);
}

@freezed
class OrderData with _$OrderData {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OrderData({
    int? id,
    String? order_id,
    int? user_id,
    String? session_id,
    String? name,
    String? address,
    String? district,
    String? city,
    String? contact,
    String? delivery,
    double? deliveryCharge,
    double? totalWeight,
    double? totalQuantityCharge,
    String? status,
    String? created_at,
    String? updated_at,
    int? express,
    String? express_price,
    int? seen,
    String? totaldeliverycharge,
    String? order_note,
    String? coupon_discount,
    String? payment_id,
    int? payment_status,
    String? used_coupon_code,
    int? is_customize,
    int? cancel_reason_id,
    List<ProductModel>? products,
  }) = _OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);
}