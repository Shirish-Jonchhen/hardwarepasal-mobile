import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/update_cart_model/update_cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/source/cart_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/cart_data_repository.dart';

@LazySingleton(as: CartDataRepository)
class CartDataRepositoryImpl implements CartDataRepository {
  const CartDataRepositoryImpl(this._cartDataSource, this._networkInfo);

  final CartDataSource _cartDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<CartModel>>> getCart() async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _cartDataSource.getCart();
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<RemoveFromCartModel>>> removeFromCart(int productId) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _cartDataSource.removeFromCart(productId);
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }

  @override
  Future<Either<AppError, ApiResponse<UpdateCartModel>>> updateCart(int productId, int quantity) async{
    if (await _networkInfo.isConnected) {
      try {
        final response = await _cartDataSource.updateCart(productId, quantity);
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }

}
