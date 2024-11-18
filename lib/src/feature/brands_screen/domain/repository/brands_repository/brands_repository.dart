import 'package:dartz/dartz.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../data/model/brands_model/brands_model.dart';

abstract class BrandsRepository {
  Future<Either<AppError, ApiResponse<BrandsModel>>> getBrands(int page);
}