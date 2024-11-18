import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/checkout_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/source/checkout_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/checkout_repository.dart';

@LazySingleton(as: CheckoutRepository)
class CheckoutRepositoryImpl implements CheckoutRepository{
  const CheckoutRepositoryImpl(this._checkoutDataSource, this._networkInfo);

  final CheckoutDataSource _checkoutDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<CheckoutResponseModel>>> getCheckout({required String cuponCode, required List<Map<String, dynamic>> products}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _checkoutDataSource.getCheckout(cuponCode: cuponCode, products: products);
        return Right(
          ApiResponse(
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