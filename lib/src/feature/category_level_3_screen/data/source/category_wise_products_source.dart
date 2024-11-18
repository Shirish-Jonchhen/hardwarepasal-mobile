import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/model/category_wise_products_model/category_wise_products_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class CategoryWiseProductsSource {
  Future<ApiResponse<CategoryWiseProductsResponseModel>>
      getCategoyWiseProducts({
    required String slug,
    required int? page,
    String? sub_cat_id,
    String? search,
    String? sortBy,
    List<String>? Range,
    String? discount,
    String? brand,
    String? brandSearch,
  });
}

@LazySingleton(as: CategoryWiseProductsSource)
class CategoryWiseProductsSourceImpl implements CategoryWiseProductsSource {
  const CategoryWiseProductsSourceImpl(
      @Named('un-authenticated') Dio dio, this._logger)
      : _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<CategoryWiseProductsResponseModel>>
      getCategoyWiseProducts({
    required String slug,
    required int? page,
    String? sub_cat_id,
    String? search,
    String? sortBy,
    List<String>? Range,
    String? discount,
    String? brand,
    String? brandSearch,
  }) async {
    try {
      final response = await _dio.get('categorywise-products/${slug}?range%5B%5D=${Range![0] ?? 0}&range%5B%5D=${Range![1]?? 999999999999}',
          queryParameters: {
            'page': page ?? 1,
            'sub_cat_id': sub_cat_id ?? null,
            'search': search ?? null,
            'sortBy': sortBy ?? null,
            'discount': discount ?? null,
            'brand': brand ?? null,
            'brandSearch': brandSearch ?? null,
          });

      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: CategoryWiseProductsResponseModel.fromJson(response.data),
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
