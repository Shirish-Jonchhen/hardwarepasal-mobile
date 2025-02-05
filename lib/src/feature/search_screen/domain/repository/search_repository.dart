import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_category_model/search_category_model.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result/search_result.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../data/model/search_result_model/search_result_model.dart';

abstract class SearchRepository {
  Future<Either<AppError, ApiResponse<SearchResultModel>>> searchProducts({required String keyword});
  Future<Either<AppError, ApiResponse<SearchCategoryModel>>> searchCategory({required String keyword});
  Future<Either<AppError, ApiResponse<SearchResult>>> searchFilterProducts({
    required String searchText,
    int? sortBy,
    String? lowRange,
    String? highRange,
    String? discount,
    String? brand,
    String? brandSearch,
  });

  Future<Either<AppError, ApiResponse<List<String>>>> getSearchHistory();
  Future<Either<AppError, ApiResponse<int>>> addSearchHistory(String search);
  Future<Either<AppError, ApiResponse<int>>> clearSearchHistory();
}