import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/usecase/usecase.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_category_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/params/brands_params.dart';
import 'package:injectable/injectable.dart';

import '../../repository/brands_repository/brands_repository.dart';

@lazySingleton
class BrandsCategoryUsecase extends UseCase<ApiResponse<BrandsCategoryModel>, NoParams>{
  final BrandsRepository _brandsRepository;
  BrandsCategoryUsecase(this._brandsRepository);

  @override
  Future<Either<AppError, ApiResponse<BrandsCategoryModel>>> call(NoParams params) => _brandsRepository.getBrandsCategory();
}