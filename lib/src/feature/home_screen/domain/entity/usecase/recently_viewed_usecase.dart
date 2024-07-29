import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_model/home_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class RecentlyViewedUsecase extends UseCase<ApiResponse<List<ProductModel>>, NoParams>{
  final HomeRepository _homeRepository;
  RecentlyViewedUsecase(this._homeRepository);

  @override
  Future<Either<AppError, ApiResponse<List<ProductModel>>>> call(NoParams params) => _homeRepository.getRecentlyViewedProducts();

}