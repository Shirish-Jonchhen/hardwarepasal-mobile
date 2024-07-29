import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/search_result/search_result.dart';
import '../../domain/entity/params/search_filter_params.dart';

part 'search_cubit.freezed.dart';

part 'search_state.dart';

@injectable
class SearchCubit extends Cubit<SearchState> {
  final SearchFilterUseCase _searchFilterUseCase;

  SearchCubit(this._searchFilterUseCase) : super(SearchState.initial());

  void searchProducts(String keyword) async {
    emit(SearchState.loading());
    final response = await _searchFilterUseCase
        .call(SearchFilterParams(searchText: keyword,sortBy: 0));
    response.fold(
        (l) => l.when(
              serverError: (message) =>
                  emit(SearchState.error(message: message)),
              noInternet: () => emit(const SearchState.noInternet()),
            ),
        (r) => emit(SearchState.success(data: r.data!)));
  }

  void filterProducts({
    required String searchText,
    int? sortBy,
    String? lowRange,
    String? highRange,
    String? discount,
    String? brand,
    String? brandSearch,
  }) async {
    emit(SearchState.loading());
    final response = await _searchFilterUseCase.call(SearchFilterParams(
        searchText: searchText,
        sortBy: sortBy,
        lowRange: lowRange,
        highRange: highRange,
        discount: discount,
        brand: brand,
        brandSearch: brandSearch));
    response.fold(
        (l) => l.when(
              serverError: (message) =>
                  emit(SearchState.error(message: message)),
              noInternet: () => emit(const SearchState.noInternet()),
            ),
        (r) => emit(SearchState.success(data: r.data!)));
  }
}
