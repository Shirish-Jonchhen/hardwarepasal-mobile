import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/auth_repository.dart';
import '../params/login_params.dart';

@lazySingleton
class LoginUseCase extends UseCase<ApiResponse<UserModel>, LoginParams> {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> call(LoginParams params) async => _authRepository.login(
        email: params.email,
        password: params.password,
      );
}