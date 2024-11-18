
part of 'connectips_cubit.dart';

@freezed
class ConnectipsState with _$ConnectipsState{
  const factory ConnectipsState.initial() = _Initial;
  const factory ConnectipsState.loading() = _Loading;
  const factory ConnectipsState.error({required String message}) = _Error;
  const factory ConnectipsState.noInternet() = _NoInternet;
  const factory ConnectipsState.success({required ApiResponse<ConnectipsResponseModel> data}) = _Success;
}
