import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_all_products_model/home_all_products_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_brands_model/home_brands_by_category_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_model/home_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/helpers/storage_helper.dart';

abstract class HomeDataSource {
  Future<ApiResponse<HomeModel>> getProducts();
  Future<ApiResponse<HomeBrandsByCategoryModel>> getBrandsWithCategory();
  Future<ApiResponse<HomeAllProductsModel>> getAllProducts({
    required int page,
});

  Future<ApiResponse<List<ProductModel>>> getRecentlyViewedProducts();
  Future<ApiResponse<int>> addRecentlyViewedProduct(ProductModel product);


}

@LazySingleton(as: HomeDataSource)
class HomeDataSourceImpl implements HomeDataSource {
  const HomeDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<HomeModel>> getProducts() async {
    try {
      final response = await _dio.get('');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: HomeModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<HomeBrandsByCategoryModel>> getBrandsWithCategory() async {
    try {
      final response = await _dio.get('/brand-category');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: HomeBrandsByCategoryModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<HomeAllProductsModel>> getAllProducts({required int page}) async {
    try {
      final response = await _dio.get('/random-products?page=$page');
      if (response.statusCode == 200) {
        return ApiResponse(
          data: HomeAllProductsModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<List<ProductModel>>> getRecentlyViewedProducts() async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    List<ProductModel> recent = await storageHelper.getRecentlyViewed();
    return ApiResponse(data: recent.reversed.toList(), message: 'message');
  }

  @override
  Future<ApiResponse<int>> addRecentlyViewedProduct(ProductModel product) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    int result = await storageHelper.addItemsToRecentlyViewed(value: product);
    return ApiResponse(data: result, message: 'message');
  }
}