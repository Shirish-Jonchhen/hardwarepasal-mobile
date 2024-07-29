import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/usecase/usecase.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:hardwarepasal/src/feature/category_screen/data/model/category_model/category_model.dart';
import 'package:hardwarepasal/src/feature/category_screen/domain/repository/category_repository/category_repository.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class CategoryUsecase extends UseCase<ApiResponse<CategoryModel>, NoParams>{
  final CategoryRepository _categoryRepository;
  CategoryUsecase(this._categoryRepository);

  @override
  Future<Either<AppError, ApiResponse<CategoryModel>>> call(NoParams params) => _categoryRepository.getCategory();
}