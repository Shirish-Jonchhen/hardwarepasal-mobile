import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/update_cart_model/update_cart_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../models/cart_model/cart_model.dart';

abstract class CartDataSource {
  Future<ApiResponse<CartModel>> getCart();
  Future<ApiResponse<RemoveFromCartModel>> removeFromCart(int productId);
  Future<ApiResponse<UpdateCartModel>> updateCart(int productId, int quantity);
}

@LazySingleton(as: CartDataSource)
class CartDataSourceImpl implements CartDataSource{
  const CartDataSourceImpl(@Named('authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;
  @override
  Future<ApiResponse<CartModel>> getCart() async{
    try {
      final response = await _dio.get('cart');
      if (response.statusCode == 200) {
        print(response.data);
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }else{
          return ApiResponse(
            data: CartModel.fromJson(response.data),
            message: 'message',
          );
        }
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }

  }

  @override
  Future<ApiResponse<RemoveFromCartModel>> removeFromCart(int productId) async {
    try {
      final response = await _dio.delete('cart/$productId');
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: RemoveFromCartModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }

  @override
  Future<ApiResponse<UpdateCartModel>> updateCart(int productId, int quantity) async{
    try {
      final response = await _dio.post('cart/update?product_id=$productId&quantity=$quantity');
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: UpdateCartModel.fromJson(response.data),
          message: 'message',
        );
      } else {
        throw const AppException(message: 'Unknown Error');
      }
    } on DioError catch (e) {
      throw AppException.fromDioError(e);
    }
  }




}