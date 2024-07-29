import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_cart_model.freezed.dart';
part 'update_cart_model.g.dart';

@freezed
class UpdateCartModel with _$UpdateCartModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UpdateCartModel({
    int? code,
    String? message,
    UpdateCartDataModel? data,
  }) = _UpdateCartModel;

  factory UpdateCartModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartModelFromJson(json);
}


@freezed
class UpdateCartDataModel with _$UpdateCartDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UpdateCartDataModel({
    UpdateCartDetailModel? data,
  }) = _UpdateCartDataModel;

  factory UpdateCartDataModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartDataModelFromJson(json);
}

@freezed
class UpdateCartDetailModel with _$UpdateCartDetailModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UpdateCartDetailModel({
    int? id,
    int? product_id,
    int? user_id,
    int? sup_id,
    String? additional_info,
    String? quantity,
    int? status,
    String? created_at,
    String? mail_date,
    String? updated_at,
  }) = _UpdateCartDetailModel;

  factory UpdateCartDetailModel.fromJson(Map<String, dynamic> json) =>
      _$UpdateCartDetailModelFromJson(json);
}