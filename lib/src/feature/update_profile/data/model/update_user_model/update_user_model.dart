import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel with _$UpdateUserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UpdateUserModel({
    int? code,
    String? message,
    UpdateUserDataModel? data,
  }) = _UpdateUserModel;

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) => _$UpdateUserModelFromJson(json);
}


@freezed
class UpdateUserDataModel with _$UpdateUserDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UpdateUserDataModel({
    @JsonKey(name: 'userDetails') UserDetails? userDetails,
}) = _UpdateUserDataModel;

  factory UpdateUserDataModel.fromJson(Map<String, dynamic> json) => _$UpdateUserDataModelFromJson(json);
}