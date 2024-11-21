import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/errors/app_exceptions.dart';
import 'package:hardwarepasal/src/core/network/network_info.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/featured_brands_model/featured_brands_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_all_products_model/home_all_products_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_brands_model/home_brands_by_category_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../domain/repository/home_repository.dart';
import '../models/home_model/home_model.dart';
import '../source/home_data_source.dart';

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl(this._homeDataSource, this._networkInfo);

  final HomeDataSource _homeDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<HomeModel>>> getProducts() async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _homeDataSource.getProducts();
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
  Future<Either<AppError, ApiResponse<HomeBrandsByCategoryModel>>> getBrandsWithCategory() async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _homeDataSource.getBrandsWithCategory();
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
  Future<Either<AppError, ApiResponse<HomeAllProductsModel>>> getAllProducts({required int page}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _homeDataSource.getAllProducts(page: page);
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
  Future<Either<AppError, ApiResponse<int>>> addRecentlyViewedProduct(
      {required ProductModel product}) async {
    try {
      final response = await _homeDataSource.addRecentlyViewedProduct(product);
      return Right(
        ApiResponse(
            data: response.data,
            message: response.message,
            error: response.error),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }

  @override
  Future<Either<AppError, ApiResponse<List<ProductModel>>>> getRecentlyViewedProducts() async {
    try {
      final response = await _homeDataSource.getRecentlyViewedProducts();
      return Right(
        ApiResponse(
            data: response.data,
            message: response.message,
            error: response.error),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }

  @override
  Future<Either<AppError, ApiResponse<FeaturedBrandsModel>>> getFeaturedBrands() async {
    try {
      final response = await _homeDataSource.getFeaturedBrands();
      return Right(
        ApiResponse(
            data: response.data,
            message: response.message,
            error: response.error),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }
}
