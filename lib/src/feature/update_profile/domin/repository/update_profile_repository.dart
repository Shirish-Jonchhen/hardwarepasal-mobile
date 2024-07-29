import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/update_profile/data/model/update_user_model/update_user_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';

abstract class UpdateProfileRepository {
  Future<Either<AppError, ApiResponse<UpdateUserModel>>> updateProfile({
    String? firstName,
    String? lastName,
    String? address,
    String? contact,
    String? imageUrl,
  });
}
