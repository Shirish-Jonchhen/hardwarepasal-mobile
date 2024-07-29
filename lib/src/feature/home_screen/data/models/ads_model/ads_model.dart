import 'package:freezed_annotation/freezed_annotation.dart';
part 'ads_model.freezed.dart';
part 'ads_model.g.dart';

@freezed
class AdsDataModel with _$AdsDataModel{
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AdsDataModel({
    dynamic id,
    String? name,
    String? description,
    String? image,
    String? link,
    String? status,
    int? created_by,
    int? updated_by,
    String? created_at,
    String? updated_at,
    int? position,


  }) = _AdsDataModel;

  factory AdsDataModel.fromJson(Map<String, dynamic> json) =>
      _$AdsDataModelFromJson(json);
}


@freezed
class AdsModel with _$AdsModel{
  // @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AdsModel({
    @JsonKey(name: '0') List<AdsDataModel>? zero,
    @JsonKey(name: '1') List<AdsDataModel>? one,
    @JsonKey(name: '2') List<AdsDataModel>? two,
    @JsonKey(name: '3') List<AdsDataModel>? three,
    @JsonKey(name: '4') List<AdsDataModel>? four,
    @JsonKey(name: '5') List<AdsDataModel>? five,
    @JsonKey(name: '6') List<AdsDataModel>? six,
    @JsonKey(name: '10') List<AdsDataModel>? ten,
    @JsonKey(name: '11') List<AdsDataModel>? eleven,
    @JsonKey(name: '12') List<AdsDataModel>? twelve,
    @JsonKey(name: '13') List<AdsDataModel>? thirteen,
    @JsonKey(name: '14') List<AdsDataModel>? fourteen,
    @JsonKey(name: '101') List<AdsDataModel>? oneHundredOne,
  }) = _AdsModel;

  factory AdsModel.fromJson(Map<String, dynamic> json) =>
      _$AdsModelFromJson(json);
}