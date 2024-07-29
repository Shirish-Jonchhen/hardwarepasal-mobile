import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_model/home_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/repository/home_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class HomeUseCase extends UseCase<ApiResponse<HomeModel>, NoParams>{
  final HomeRepository _homeRepository;
  HomeUseCase(this._homeRepository);

  @override
  Future<Either<AppError, ApiResponse<HomeModel>>> call(NoParams params) => _homeRepository.getProducts();

}