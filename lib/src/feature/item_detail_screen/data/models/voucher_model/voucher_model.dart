import 'package:freezed_annotation/freezed_annotation.dart';

part 'voucher_model.freezed.dart';

part 'voucher_model.g.dart';

@freezed
class VoucherModel with _$VoucherModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory VoucherModel({
    int? id,
    String? coupon_name,
    String? coupon_code,
    String? discount_type,
    String? discount_value,
    String? max_discount_value,
    String? description,
    String? usage_limit_coupon,
    String? usage_limit_user,
    String? use_count,
    String? min_order,
    String? expire_date,
    String? show_on_product,
    String? show_on_cart,
    String? applicable_area,
    String? status,
    String? created_at,
    String? updated_at,
  }) = _VoucherModel;

  factory VoucherModel.fromJson(Map<String, dynamic> json) =>
      _$VoucherModelFromJson(json);
}
