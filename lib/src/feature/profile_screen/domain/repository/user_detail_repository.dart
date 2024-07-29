import 'package:dartz/dartz.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../auth/data/models/user_model.dart';

abstract class UserDetailsRepository {
  Future<Either<AppError, ApiResponse<UserDetails>>> getUserDetails();
}