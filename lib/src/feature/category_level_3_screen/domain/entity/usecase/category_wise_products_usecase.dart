import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/model/category_wise_products_model/category_wise_products_model.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/source/category_wise_products_source.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/entity/params/categoty_wise_products_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';
import '../../repository/category_wise_products_repository/category_wise_products_repository.dart';

@lazySingleton
class CategoryWiseProductsUsecase extends UseCase<
    ApiResponse<CategoryWiseProductsResponseModel>,
    CategoryWiseProductsParams> {
  
  final CategoryWithProductsRepository _repository;

  CategoryWiseProductsUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<CategoryWiseProductsResponseModel>>> call(
          CategoryWiseProductsParams params) =>
      _repository.getCategoryWithProducts(
        slug: params.slug,
        page: params.page,
        brand: params.brand,
        brandSearch: params.brandSearch,
        discount: params.discount,
        Range: params.Range,
        search: params.search,
        sortBy: params.sortBy,
        sub_cat_id: params.sub_cat_id,
      );
}
