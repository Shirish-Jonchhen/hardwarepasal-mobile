import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectips_response_model.freezed.dart';
part 'connectips_response_model.g.dart';

@freezed
class ConnectipsResponseModel with _$ConnectipsResponseModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConnectipsResponseModel({
    int? code,
    String? message,
    ConnectipsDataModel? data,
  }) = _ConnectipsResponseModel;

  factory ConnectipsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectipsResponseModelFromJson(json);
}

@freezed
class ConnectipsDataModel with _$ConnectipsDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConnectipsDataModel({
    ConnectipsInnerDataModel? data,
  }) = _ConnectipsDataModel;

  factory ConnectipsDataModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectipsDataModelFromJson(json);
}

@freezed
class ConnectipsInnerDataModel with _$ConnectipsInnerDataModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ConnectipsInnerDataModel({
    bool? error,
    String? message,
    String? viewdata,
  }) = _ConnectipsInnerDataModel;

  factory ConnectipsInnerDataModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectipsInnerDataModelFromJson(json);
}