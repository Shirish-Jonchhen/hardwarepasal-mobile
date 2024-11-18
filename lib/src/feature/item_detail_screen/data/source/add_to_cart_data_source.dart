import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class AddToCartDataSource {
  Future<ApiResponse<AddToCartModel>> addToCart({
    required String productId,
    required String quantity,
  });
}

@LazySingleton(as: AddToCartDataSource)
class AddToCartDataSourceImpl implements AddToCartDataSource {

  const AddToCartDataSourceImpl(
    @Named('authenticated') Dio dio,
      this._logger,
  ): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<AddToCartModel>> addToCart({
    required String productId,
    required String quantity,
  }) async {
    try {
      final response = await _dio.post(
        'cart/add-product',
        queryParameters: {
          'product': productId,
          'quantity': quantity,
        },
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: AddToCartModel.fromJson(response.data),
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
