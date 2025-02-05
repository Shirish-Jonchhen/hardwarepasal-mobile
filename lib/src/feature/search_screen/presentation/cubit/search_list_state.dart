part of 'search_list_cubit.dart';

@freezed
class SearchListState with _$SearchListState {
  const factory SearchListState.initial() = _Initial;
  const factory SearchListState.loading() = _Loading;
  const factory SearchListState.error({required String message}) = _Error;
  const factory SearchListState.noInternet() = _NoInternet;
  const factory SearchListState.success({required SearchResultModel data}) = _Success;
}