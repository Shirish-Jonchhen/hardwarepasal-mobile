import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_to_cart_model.freezed.dart';
part 'add_to_cart_model.g.dart';

@freezed
class AddToCartModel with _$AddToCartModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AddToCartModel({
    int? code,
    String? message,
    AddToCartDataModel? data,
  }) = _AddToCartModel;

  factory AddToCartModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartModelFromJson(json);

}

@freezed
class AddToCartDataModel with _$AddToCartDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AddToCartDataModel({
    String? data,
  }) = _AddToCartDataModel;

  factory AddToCartDataModel.fromJson(Map<String, dynamic> json) =>
      _$AddToCartDataModelFromJson(json);
}