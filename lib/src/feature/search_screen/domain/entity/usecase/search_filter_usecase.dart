import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/model/search_result/search_result.dart';
import '../../repository/search_repository.dart';
import '../params/search_filter_params.dart';

@lazySingleton
class SearchFilterUseCase
    extends UseCase<ApiResponse<SearchResult>, SearchFilterParams> {
  final SearchRepository _searchRepository;

  SearchFilterUseCase(this._searchRepository);

  @override
  Future<Either<AppError, ApiResponse<SearchResult>>> call(
          SearchFilterParams params) =>
      _searchRepository.searchFilterProducts(
        searchText: params.searchText,
        sortBy: params.sortBy,
        lowRange: params.lowRange,
        highRange: params.highRange,
        discount: params.discount,
        brand: params.brand,
        brandSearch: params.brandSearch,
      );
}
