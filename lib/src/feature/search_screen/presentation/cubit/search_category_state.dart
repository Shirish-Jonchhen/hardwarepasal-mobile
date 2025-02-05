part of 'search_category_cubit.dart';


@freezed
class SearchCategoryState with _$SearchCategoryState {
  const factory SearchCategoryState.initial() = _Initial;
  const factory SearchCategoryState.loading() = _Loading;
  const factory SearchCategoryState.error({required String message}) = _Error;
  const factory SearchCategoryState.noInternet() = _NoInternet;
  const factory SearchCategoryState.success({required SearchCategoryModel data}) = _Success;
}