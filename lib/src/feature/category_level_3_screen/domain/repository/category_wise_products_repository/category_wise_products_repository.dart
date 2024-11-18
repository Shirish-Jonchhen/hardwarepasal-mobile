import 'package:dartz/dartz.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../data/model/category_wise_products_model/category_wise_products_model.dart';

abstract class CategoryWithProductsRepository {
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
  });
}