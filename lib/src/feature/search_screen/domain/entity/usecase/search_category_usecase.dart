import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result_model/search_result_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/model/search_category_model/search_category_model.dart';
import '../../repository/search_repository.dart';
import '../params/search_params.dart';

@lazySingleton
class SearchCategoryUseCase extends UseCase<ApiResponse<SearchCategoryModel>, SearchParams> {
  final SearchRepository _searchRepository;
  SearchCategoryUseCase(this._searchRepository);

  @override
  Future<Either<AppError, ApiResponse<SearchCategoryModel>>> call(SearchParams params) =>
      _searchRepository.searchCategory(keyword: params.keyword);
}