
part of 'checkout_cubit.dart';

@freezed
class CheckoutState with _$CheckoutState{
  const factory CheckoutState.initial() = _Initial;
  const factory CheckoutState.loading() = _Loading;
  const factory CheckoutState.error({required String message}) = _Error;
  const factory CheckoutState.noInternet() = _NoInternet;
  const factory CheckoutState.success({required ApiResponse<CheckoutResponseModel> data}) = _Success;
}
