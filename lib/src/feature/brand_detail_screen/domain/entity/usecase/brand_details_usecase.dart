import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/entity/params/brand_details_params.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/repository/brand_details_repository/brand_details_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class BrandDetailsUsecase extends UseCase<ApiResponse<BrandDetailsResponseModel>, BrandDetailsParams>{
  final BrandDetailsRepository _repository;
  BrandDetailsUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<BrandDetailsResponseModel>>> call(BrandDetailsParams params) => _repository.getBrandDetails(slug: params.slug);
}