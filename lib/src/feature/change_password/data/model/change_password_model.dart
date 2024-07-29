import 'package:freezed_annotation/freezed_annotation.dart';

part 'change_password_model.freezed.dart';
part 'change_password_model.g.dart';

@freezed
class ChangePasswordModel with _$ChangePasswordModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ChangePasswordModel({
    int? code,
    String? message,
    List<dynamic>? data,
  }) = _ChangePasswordModel;

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);
}