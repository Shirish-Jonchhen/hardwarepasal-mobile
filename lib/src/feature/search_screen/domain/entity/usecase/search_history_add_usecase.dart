import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/params/search_history_add_params.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/model/search_result/search_result.dart';
import '../../repository/search_repository.dart';
import '../params/search_filter_params.dart';

@lazySingleton
class SearchHistoryAddUsecase
    extends UseCase<ApiResponse<int>, SearchHistoryAddParams> {
  final SearchRepository _searchRepository;

  SearchHistoryAddUsecase(this._searchRepository);

  @override
  Future<Either<AppError, ApiResponse<int>>> call(SearchHistoryAddParams params) => _searchRepository.addSearchHistory(params.searchText);


}
