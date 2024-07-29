import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_model/home_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/params/recently_viewed_params.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class AddRecentlyViewedUsecase extends UseCase<ApiResponse<int>, RecentlyViewedParams>{
  final HomeRepository _homeRepository;
  AddRecentlyViewedUsecase(this._homeRepository);

  @override
  Future<Either<AppError, ApiResponse<int>>> call(RecentlyViewedParams params) => _homeRepository.addRecentlyViewedProduct( product: params.productModel);
}