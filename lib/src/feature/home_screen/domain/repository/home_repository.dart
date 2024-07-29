import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_all_products_model/home_all_products_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../data/models/home_brands_model/home_brands_by_category_model.dart';
import '../../data/models/home_model/home_model.dart';

abstract class HomeRepository {
  Future<Either<AppError,ApiResponse<HomeModel>>> getProducts();

  Future<Either<AppError, ApiResponse<HomeBrandsByCategoryModel>>> getBrandsWithCategory();


  Future<Either<AppError, ApiResponse<HomeAllProductsModel>>> getAllProducts({
    required int page,
});

  Future<Either<AppError, ApiResponse<List<ProductModel>>>> getRecentlyViewedProducts();

  Future<Either<AppError, ApiResponse<int>>> addRecentlyViewedProduct(
      {required ProductModel product});
}