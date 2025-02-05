import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/search_result/search_result.dart';
import '../../data/model/search_result_model/search_result_model.dart';
import '../../domain/entity/params/search_filter_params.dart';
import '../../domain/entity/params/search_params.dart';
import '../../domain/entity/usecase/search_usecase.dart';

part 'search_list_cubit.freezed.dart';
part 'search_list_state.dart';

@injectable
class SearchListCubit extends Cubit<SearchListState> {
  final SearchUseCase _searchUseCase;

  SearchListCubit(this._searchUseCase) : super(SearchListState.initial());

  void searchProducts(String keyword) async {
    emit(SearchListState.loading());
    final response = await _searchUseCase
        .call(SearchParams(keyword: keyword));
    response.fold(
            (l) => l.when(
          serverError: (message) =>
              emit(SearchListState.error(message: message)),
          noInternet: () => emit(const SearchListState.noInternet()),
        ),
            (r) => emit(SearchListState.success(data: r.data!)));
  }
}
