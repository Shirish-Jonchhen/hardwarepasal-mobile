
part of 'category_cubit.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _Initial;
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.error({required String message}) = _Error;
  const factory CategoryState.noInternet() = _NoInternet;
  const factory CategoryState.success({required ApiResponse<CategoryModel> data}) = _Success;
}
