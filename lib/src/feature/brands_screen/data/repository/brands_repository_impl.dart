import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/network/network_info.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_category_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/repository/brands_repository/brands_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../source/brands_data_source.dart';

@LazySingleton(as: BrandsRepository)
class BrandsRepositoryImpl implements BrandsRepository{
  const BrandsRepositoryImpl(this._brandsDataSource, this._networkInfo);

  final BrandsDataSource _brandsDataSource;
  final NetworkInfo _networkInfo;
  @override
  Future<Either<AppError, ApiResponse<BrandsModel>>> getBrands(int page) async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _brandsDataSource.getBrands(page);
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

  @override
  Future<Either<AppError, ApiResponse<BrandsCategoryModel>>> getBrandsCategory() async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _brandsDataSource.getBrandsCategory();
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