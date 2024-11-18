import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../data/model/search_result/search_result.dart';
import '../../repository/search_repository.dart';
import '../params/search_filter_params.dart';

@lazySingleton
class ClearHistoryUsecase
    extends UseCase<ApiResponse<int>, NoParams> {
  final SearchRepository _searchRepository;

  ClearHistoryUsecase(this._searchRepository);

  @override
  Future<Either<AppError, ApiResponse<int>>> call(NoParams params) => _searchRepository.clearSearchHistory();
}
