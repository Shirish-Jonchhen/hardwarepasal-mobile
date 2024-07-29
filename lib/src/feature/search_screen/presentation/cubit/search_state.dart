part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = _Loading;
  const factory SearchState.error({required String message}) = _Error;
  const factory SearchState.noInternet() = _NoInternet;
  const factory SearchState.success({required SearchResult data}) = _Success;
}