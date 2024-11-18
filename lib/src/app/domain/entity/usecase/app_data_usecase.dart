import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/app/data/models/image_link_model/image_link_model.dart';
import 'package:hardwarepasal/src/app/domain/repository/app_data_repository.dart';
import 'package:hardwarepasal/src/core/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

@lazySingleton
class AppDataUsecase extends UseCase<ApiResponse<ImageLinkResponseModel>, NoParams> {
  final AppDataRepository _appDataRepository;

  AppDataUsecase(this._appDataRepository);

  @override
  Future<Either<AppError, ApiResponse<ImageLinkResponseModel>>> call(NoParams params) async => _appDataRepository.getImageLinks();
}