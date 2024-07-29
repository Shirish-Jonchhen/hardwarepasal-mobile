import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_all_products_model/home_all_products_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_brands_model/home_brands_by_category_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/params/all_products_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/home_model/home_model.dart';
import '../../repository/home_repository.dart';

@lazySingleton
class HomeAllProductsUseCase extends UseCase<ApiResponse<HomeAllProductsModel>, AllProductsParams>{
  final HomeRepository _homeRepository;
  HomeAllProductsUseCase(this._homeRepository);

  @override
  Future<Either<AppError, ApiResponse<HomeAllProductsModel>>> call(AllProductsParams params) => _homeRepository.getAllProducts(page: params.page);

}