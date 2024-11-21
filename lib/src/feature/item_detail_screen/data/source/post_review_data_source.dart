import 'package:dio/dio.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/post_review_response_model/post_review_response_model.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_exceptions.dart';

abstract class PostReviewDataSource {
  Future<ApiResponse<PostReviewResponseModel>> postReview({
    required String slug,
    required int stars,
    String? description,
  });
}

@LazySingleton(as: PostReviewDataSource)
class PostReviewDataSourceImpl implements PostReviewDataSource {

  const PostReviewDataSourceImpl(
      @Named('authenticated') Dio dio,
      this._logger,
      ): _dio = dio;

  final Dio _dio;
  final Logger _logger;

  @override
  Future<ApiResponse<PostReviewResponseModel>> postReview({
    required String slug,
    required int stars,
    String? description,
  }) async {
    try {
      final response = await _dio.post(
        'review/$slug',
        queryParameters: {
          'stars': stars,
          'description': description,
        },
      );
      if (response.statusCode == 200) {
        if(response.data["message"] == "Access denied by Imunify360 bot-protection. IPs used for automation should be whitelisted"){
          throw const AppException(message: 'The server Detected this request as bot generated request.');
        }
        return ApiResponse(
          data: PostReviewResponseModel.fromJson(response.data),
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
