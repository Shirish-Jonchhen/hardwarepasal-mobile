import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/connectips_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/ime_pay_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/source/place_order_source.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/repository/place_order_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../models/place_order_model.dart';

@LazySingleton(as: PlaceOrderRepository)
class PlaceOrderRepositoryImpl implements PlaceOrderRepository{
  const PlaceOrderRepositoryImpl(this._placeOrderDataSource, this._networkInfo);

  final PlaceOrderDataSource _placeOrderDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<PlaceOrderResponseModel>>> placeOrder({
    required PlaceOrderModel placeOrderModel,
}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _placeOrderDataSource.placeOrder(placeOrderModel: placeOrderModel);
        return Right(
          ApiResponse<PlaceOrderResponseModel>(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<ImePayResponseModel>>> imePayOrder({required PlaceOrderModel placeOrderModel}) async{
    if(await _networkInfo.isConnected){
      try {
        final response = await _placeOrderDataSource.imePayOrder(placeOrderModel: placeOrderModel);
        print("==repositoryImpl====");
        print(response);
        return Right(
          ApiResponse<ImePayResponseModel>(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<ConnectipsResponseModel>>> connectipsOrder({required PlaceOrderModel placeOrderModel}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _placeOrderDataSource.connectipsOrder(placeOrderModel: placeOrderModel);
        print("==repositoryImpl====");
        print(response);
        return Right(
          ApiResponse<ConnectipsResponseModel>(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    }else{
      return const Left(AppError.noInternet());
    }
  }

}