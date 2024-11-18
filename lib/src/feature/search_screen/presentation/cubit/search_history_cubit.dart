import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_history_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/model/search_result/search_result.dart';
import '../../domain/entity/params/search_filter_params.dart';
import '../../domain/entity/params/search_history_add_params.dart';
import '../../domain/entity/usecase/clear_history_usecase.dart';
import '../../domain/entity/usecase/search_history_add_usecase.dart';

part 'search_history_cubit.freezed.dart';

part 'search_history_state.dart';

@injectable
class SearchHistoryCubit extends Cubit<SearchHistoryState> {
  final SearchHistoryUsecase _searchHistoryUsecase;
  final SearchHistoryAddUsecase _searchHistoryAddUsecase;
  final ClearHistoryUsecase _clearHistoryUsecase;

  SearchHistoryCubit(this._searchHistoryUsecase, this._clearHistoryUsecase, this._searchHistoryAddUsecase) : super(SearchHistoryState.initial());

  void getSearchHistory() async {
    emit(SearchHistoryState.loading());
    final response = await _searchHistoryUsecase.call(NoParams());
    response.fold(
        (l) => l.when(
              serverError: (message) =>
                  emit(SearchHistoryState.error(message: message)),
              noInternet: () => emit(const SearchHistoryState.noInternet()),
            ),
        (r) => emit(SearchHistoryState.success(data: r.data!)));
  }

  void addSearchHistory(String searchText) async {
    emit(SearchHistoryState.loading());
    final response = await _searchHistoryAddUsecase.call(SearchHistoryAddParams(searchText: searchText));
    response.fold(
        (l) => l.when(
              serverError: (message) =>
                  emit(SearchHistoryState.error(message: message)),
              noInternet: () => emit(const SearchHistoryState.noInternet()),
            ),
        (r) => getSearchHistory());
  }

  void clearSearchHistory() async {
    emit(SearchHistoryState.loading());
    final response = await _clearHistoryUsecase.call(NoParams());
    response.fold(
        (l) => l.when(
              serverError: (message) =>
                  emit(SearchHistoryState.error(message: message)),
              noInternet: () => emit(const SearchHistoryState.noInternet()),
            ),
        (r) => getSearchHistory());
  }


}