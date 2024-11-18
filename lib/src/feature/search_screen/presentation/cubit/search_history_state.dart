part of 'search_history_cubit.dart';

@freezed
class SearchHistoryState with _$SearchHistoryState {
  const factory SearchHistoryState.initial() = _Initial;
  const factory SearchHistoryState.loading() = _Loading;
  const factory SearchHistoryState.error({required String message}) = _Error;
  const factory SearchHistoryState.noInternet() = _NoInternet;
  const factory SearchHistoryState.success({required List<String> data}) = _Success;
}