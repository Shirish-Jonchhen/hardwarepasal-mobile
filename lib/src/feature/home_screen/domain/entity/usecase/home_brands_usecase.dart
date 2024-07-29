import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_brands_model/home_brands_by_category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/home_model/home_model.dart';
import '../../repository/home_repository.dart';

@lazySingleton
class HomeBrandsUseCase extends UseCase<ApiResponse<HomeBrandsByCategoryModel>, NoParams>{
  final HomeRepository _homeRepository;
  HomeBrandsUseCase(this._homeRepository);

  @override
  Future<Either<AppError, ApiResponse<HomeBrandsByCategoryModel>>> call(NoParams params) => _homeRepository.getBrandsWithCategory();

}