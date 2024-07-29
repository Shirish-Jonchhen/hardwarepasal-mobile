import 'package:dartz/dartz.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../data/model/change_password_model.dart';

abstract class ChangePasswordRepository {
  Future<Either<AppError, ApiResponse<ChangePasswordModel>>> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  });
}