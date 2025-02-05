import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';

abstract class BrandDetailsRepository{
  Future<Either<AppError, ApiResponse<BrandDetailsResponseModel>>> getBrandDetails({required String slug, required int page, List<String>? Range, String? discount});
}