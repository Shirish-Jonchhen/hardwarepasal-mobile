import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_model.freezed.dart';
part 'logout_model.g.dart';

@freezed
class LogoutModel with _$LogoutModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LogoutModel({
    int? code,
    String? message,
    List<dynamic>? data,
  }) = _LogoutModel;

  factory LogoutModel.fromJson(Map<String, dynamic> json) =>
      _$LogoutModelFromJson(json);
}