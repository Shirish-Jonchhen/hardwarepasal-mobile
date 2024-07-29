import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/logout_model.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/auth_repository.dart';
import '../params/login_params.dart';

@lazySingleton
class LogoutUsecase extends UseCase<ApiResponse<LogoutModel>, NoParams> {
  final AuthRepository _authRepository;

  LogoutUsecase(this._authRepository);

  @override
  Future<Either<AppError, ApiResponse<LogoutModel>>> call(NoParams params) async => _authRepository.logout();
}
