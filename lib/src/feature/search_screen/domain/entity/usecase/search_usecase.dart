import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/search_screen/data/model/search_result_model/search_result_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../repository/search_repository.dart';
import '../params/search_params.dart';

@lazySingleton
class SearchUseCase extends UseCase<ApiResponse<SearchResultModel>, SearchParams> {
  final SearchRepository _searchRepository;
  SearchUseCase(this._searchRepository);

  @override
  Future<Either<AppError, ApiResponse<SearchResultModel>>> call(SearchParams params) =>
      _searchRepository.searchProducts(keyword: params.keyword);
}