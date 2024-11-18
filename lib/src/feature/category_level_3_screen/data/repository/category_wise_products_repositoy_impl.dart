import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/category_wise_products_repository/category_wise_products_repository.dart';
import '../model/category_wise_products_model/category_wise_products_model.dart';
import '../source/category_wise_products_source.dart';

@LazySingleton(as: CategoryWithProductsRepository)
class CategoryWithProductsRepositoryImpl
    implements CategoryWithProductsRepository {
  const CategoryWithProductsRepositoryImpl(
      this._categoryWiseProductsSource, this._networkInfo);

  final CategoryWiseProductsSource _categoryWiseProductsSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<CategoryWiseProductsResponseModel>>>
      getCategoryWithProducts({
    required String slug,
    required int page,
    String? sub_cat_id,
    String? search,
    String? sortBy,
    List<String>? Range,
    String? discount,
    String? brand,
    String? brandSearch,
  }) async {
    if (await _networkInfo.isConnected) {
      try {

        final response =
            await _categoryWiseProductsSource.getCategoyWiseProducts(
          slug: slug,
          page: page,
          sub_cat_id: sub_cat_id,
          search: search,
          sortBy: sortBy,
          Range: Range,
          discount: discount,
          brand: brand,
          brandSearch: brandSearch,
        );

        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }
}
