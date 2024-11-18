import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/quatation_model/quotation_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class QuotationEmailDataSource{
  Future<ApiResponse<QuotationModel>> quotationEmail(String email);
}

@LazySingleton(as: QuotationEmailDataSource)
class QuotationEmailDataSourceImpl implements QuotationEmailDataSource
{
  const QuotationEmailDataSourceImpl(@Named('authenticated') Dio dio, this._logger): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<QuotationModel>> quotationEmail(String email) async {
    try {
      final response = await _dio.post('cart/send-quotation',
          data: {
            "email_address": email,
          });
      if (response.statusCode == 200) {
        print(response.data);
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }else{
          return ApiResponse<QuotationModel>(
            data: QuotationModel.fromJson(response.data),
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

}