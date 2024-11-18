import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotation_model.freezed.dart';
part 'quotation_model.g.dart';

@freezed
class QuotationModel with _$QuotationModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory QuotationModel({
    int? code,
    int? message,
    Data? data,
  }) = _QuotationModel;

  factory QuotationModel.fromJson(Map<String, dynamic> json) =>
      _$QuotationModelFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Data({
    String? message,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
