import 'package:freezed_annotation/freezed_annotation.dart';

part 'ime_pay_response_model.freezed.dart';
part 'ime_pay_response_model.g.dart';

@freezed
class ImePayResponseModel with _$ImePayResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ImePayResponseModel({
    bool? error,
    String? message,
    String? viewdata,
  }) = _ImePayResponseModel;

  factory ImePayResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ImePayResponseModelFromJson(json);
}

// @freezed
// class ImePayDataModel with _$ImePayDataModel {
//   // @JsonSerializable(fieldRename: FieldRename.snake)
//   const factory ImePayDataModel({
//    @JsonKey(name: "TokenId") String? TokenId,
//     @JsonKey(name: "Amount") String? Amount,
//     @JsonKey(name: "RefId")  String? RefId,
//     @JsonKey(name: "MerchantCode")  String? MerchantCode,
//     @JsonKey(name: "IMEPAY_CHECKOUT_URL")  String? IMEPAY_CHECKOUT_URL,
//     @JsonKey(name: "responseUrl")   String? responseUrl,
//   }) = _ImePayDataModel;
//
//   factory ImePayDataModel.fromJson(Map<String, dynamic> json) =>
//       _$ImePayDataModelFromJson(json);
// }