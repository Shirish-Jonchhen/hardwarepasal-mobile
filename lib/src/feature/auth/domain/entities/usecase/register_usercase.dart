import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../repository/auth_repository.dart';
import '../params/register_params.dart';

@lazySingleton
class RegisterUseCase extends UseCase<ApiResponse<UserModel>, RegisterParams> {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  @override
  Future<Either<AppError, ApiResponse<UserModel>>> call(RegisterParams params) async => _authRepository.register(
    firstName: params.firstName,
    lastName: params.lastName,
    contact: params.contact,
    email: params.email,
    password: params.password,
    confirmPassword: params.confirmPassword,
  );
}