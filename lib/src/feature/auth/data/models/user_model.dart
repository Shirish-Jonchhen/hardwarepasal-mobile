import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserModel({
    int? code,
    String? message,
    DataModel? data,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class DataModel with _$DataModel {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory DataModel({
    String? access_token,
    String? token_type,
    UserDetails? user_details,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class UserDetails with _$UserDetails{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserDetails({
    int? user_id,
    String? first_name,
    String? last_name,
    String? contact,
    String? address,
    String? image,
    String? gender,
    String? dob,
    String? email,
}) = _UserDetails;

  factory UserDetails.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsFromJson(json);

}
