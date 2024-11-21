import 'package:freezed_annotation/freezed_annotation.dart';

part 'featured_brands_model.freezed.dart';
part 'featured_brands_model.g.dart';

@freezed
class FeaturedBrandsModel with _$FeaturedBrandsModel {
  const factory FeaturedBrandsModel({
    required int? code,
    required String? message,
    required FeaturedBrandsData? data,
  }) = _FeaturedBrandsModel;

  factory FeaturedBrandsModel.fromJson(Map<String, dynamic> json) => _$FeaturedBrandsModelFromJson(json);
}

@freezed
class FeaturedBrandsData with _$FeaturedBrandsData {
  const factory FeaturedBrandsData({
    required List<Brand>? data,
  }) = _FeaturedBrandsData;

  factory FeaturedBrandsData.fromJson(Map<String, dynamic> json) => _$FeaturedBrandsDataFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    required int? id,
    required String? name,
    required String? image,
    required String? slug,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}
