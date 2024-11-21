import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/usecase/usecase.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/add_to_cart_model/add_to_cart_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/post_review_response_model/post_review_response_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/params/add_to_cart_params.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/params/post_review_params.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/post_review_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../repository/add_to_cart_repository.dart';

@lazySingleton
class PostReviewUsecase extends UseCase<ApiResponse<PostReviewResponseModel>, PostReviewParams>{
  final PostReviewRepository _repository;
  PostReviewUsecase(this._repository);

  @override
  Future<Either<AppError, ApiResponse<PostReviewResponseModel >>> call(PostReviewParams params) => _repository.postReview(slug: params.slug, stars: params.stars, description: params.description);
}