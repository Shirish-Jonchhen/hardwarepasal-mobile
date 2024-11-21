import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/post_review_response_model/post_review_response_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

abstract class PostReviewRepository {
  Future<Either<AppError, ApiResponse<PostReviewResponseModel>>> postReview({
    required String slug,
    required int stars,
    String? description,
  });
}