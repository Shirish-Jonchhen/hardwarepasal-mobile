
part of 'ime_pay_cubit.dart';


@freezed
class ImePayState with _$ImePayState{
  const factory ImePayState.initial() = _Initial;
  const factory ImePayState.loading() = _Loading;
  const factory ImePayState.error({required String message}) = _Error;
  const factory ImePayState.noInternet() = _NoInternet;
  const factory ImePayState.success({required ApiResponse<ImePayResponseModel> data}) = _Success;
}
