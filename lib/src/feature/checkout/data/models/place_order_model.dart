import 'package:freezed_annotation/freezed_annotation.dart';

part 'place_order_model.freezed.dart';
part 'place_order_model.g.dart';

@freezed
class PlaceOrderModel with _$PlaceOrderModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlaceOrderModel({
    String? customer_name,
    String? customer_address,
    String? customer_email,
    String? customer_number,
    double? total_weight,
    String? delivery,
    double? delivery_charge,
    double? totalCharge,
    String? payment_id,
    String? order_comments,
    List<PlaceOrderProductModel>? products,
  }) = _PlaceOrderModel;

  factory PlaceOrderModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderModelFromJson(json);
}

@freezed
class PlaceOrderProductModel with _$PlaceOrderProductModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PlaceOrderProductModel({
    int? product_id,
    int? quantity,
  }) = _PlaceOrderProductModel;

  factory PlaceOrderProductModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceOrderProductModelFromJson(json);
}
