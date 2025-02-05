import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_category_usecase.dart';
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/search_category_model/search_category_model.dart';
import '../../data/model/search_result/search_result.dart';
import '../../data/model/search_result_model/search_result_model.dart';
import '../../domain/entity/params/search_filter_params.dart';
import '../../domain/entity/params/search_params.dart';
import '../../domain/entity/usecase/search_usecase.dart';

part 'search_category_cubit.freezed.dart';
part 'search_category_state.dart';

@injectable
class SearchCategoryCubit extends Cubit<SearchCategoryState> {
  final SearchCategoryUseCase _searchCategoryUseCase;

  SearchCategoryCubit(this._searchCategoryUseCase) : super(SearchCategoryState.initial());

  void searchCategory(String keyword) async {
    emit(SearchCategoryState.loading());
    final response = await _searchCategoryUseCase
        .call(SearchParams(keyword: keyword));
    response.fold(
            (l) => l.when(
          serverError: (message) =>
              emit(SearchCategoryState.error(message: message)),
          noInternet: () => emit(const SearchCategoryState.noInternet()),
        ),
            (r) => emit(SearchCategoryState.success(data: r.data!)));
  }
}
