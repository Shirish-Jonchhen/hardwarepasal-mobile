import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/post_review_response_model/post_review_response_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/post_review_data_source.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/add_to_cart_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/post_review_repository.dart';
import '../source/add_to_cart_data_source.dart';

@LazySingleton(as: PostReviewRepository)
class PostReviewRepositoryImpl implements PostReviewRepository{
  const PostReviewRepositoryImpl(this._postReviewDataSource, this._networkInfo);

  final PostReviewDataSource _postReviewDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<PostReviewResponseModel>>> postReview({required String slug,
    required int stars,
    String? description,}) async {
    if(await _networkInfo.isConnected){
      try {
        final response = await _postReviewDataSource.postReview(slug: slug, stars: stars, description: description);
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