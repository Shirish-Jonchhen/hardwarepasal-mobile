import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/add_to_cart_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../source/add_to_cart_data_source.dart';

@LazySingleton(as: AddToCartRepository)
class AddToCartRepositoryImpl implements AddToCartRepository{
  const AddToCartRepositoryImpl(this._addToCartDataSource, this._networkInfo);

  final AddToCartDataSource _addToCartDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<AddToCartModel>>> addToCart({required String productId, required String quantity}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _addToCartDataSource.addToCart(productId: productId, quantity: quantity);
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