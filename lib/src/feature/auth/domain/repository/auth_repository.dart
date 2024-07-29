import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';

import '../../../../core/errors/app_error.dart';
import '../../data/models/logout_model.dart';

abstract class AuthRepository{
  Future<Either<AppError, ApiResponse<UserModel>>> login({
    required String email,
    required String password,
  });

  Future<Either<AppError, ApiResponse<UserModel>>> register({
    required String firstName,
    required String lastName,
    required String contact,
    required String email,
    required String password,
    required String confirmPassword,
  });

  Future<Either<AppError, ApiResponse<LogoutModel>>> logout();
}