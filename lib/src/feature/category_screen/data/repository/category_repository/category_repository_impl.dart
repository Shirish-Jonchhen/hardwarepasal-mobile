import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/network/network_info.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/repository/brands_repository/brands_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_exceptions.dart';
import '../../../domain/repository/category_repository/category_repository.dart';
import '../../model/category_model/category_model.dart';
import '../../source/category_data_source.dart';

@LazySingleton(as: CategoryRepository)
class CategoryRepositoryImpl implements CategoryRepository{
  const CategoryRepositoryImpl(this._categoryDataSource, this._networkInfo);

  final CategoryDataSource _categoryDataSource;
  final NetworkInfo _networkInfo;
  @override
  Future<Either<AppError, ApiResponse<CategoryModel>>> getCategory() async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _categoryDataSource.getCategory();
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }
}