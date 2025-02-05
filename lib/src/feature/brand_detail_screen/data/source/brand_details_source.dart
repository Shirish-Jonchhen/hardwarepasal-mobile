import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class BrandDetailsDataSource {
  Future<ApiResponse<BrandDetailsResponseModel>> getBrandDetails({required String slug, required int page, List<String>? Range, String? discount});
}

@LazySingleton(as: BrandDetailsDataSource)
class BrandDetailsDataSourceImpl implements BrandDetailsDataSource {
  const BrandDetailsDataSourceImpl(@Named('un-authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<BrandDetailsResponseModel>> getBrandDetails({required String slug, required int page,  List<String>? Range, String? discount}) async {
    try {
      final response = await _dio.get('brand/$slug?range%5B%5D=${Range?[0] ?? 0}&range%5B%5D=${Range?[1]?? 999999999999}',
      queryParameters: {
        'page': page,
        'discount': discount ?? null,
      });
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: BrandDetailsResponseModel.fromJson(response.data),
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
