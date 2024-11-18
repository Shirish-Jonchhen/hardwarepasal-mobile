part of 'new_arrivals_cubit.dart';


@freezed
class NewArrivalsState with _$NewArrivalsState {
  const factory NewArrivalsState.initial() = _Initial;
  const factory NewArrivalsState.loading() = _Loading;
  const factory NewArrivalsState.error({required String message}) = _Error;
  const factory NewArrivalsState.noInternet() = _NoInternet;
  const factory NewArrivalsState.success({required List<ProductModel> data}) = _Success;
}