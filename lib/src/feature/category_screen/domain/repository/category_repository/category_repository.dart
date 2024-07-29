import 'package:dartz/dartz.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../data/model/category_model/category_model.dart';

abstract class CategoryRepository {
  Future<Either<AppError, ApiResponse<CategoryModel>>> getCategory();
}