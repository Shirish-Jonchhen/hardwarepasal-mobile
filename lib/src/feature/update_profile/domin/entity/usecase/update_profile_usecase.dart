import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/update_profile/data/model/update_user_model/update_user_model.dart';
import 'package:hardwarepasal/src/feature/update_profile/domin/entity/params/update_profile_params.dart';
import 'package:hardwarepasal/src/feature/update_profile/domin/repository/update_profile_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';

@lazySingleton
class UpdateProfileUsecase
    extends UseCase<ApiResponse<UpdateUserModel>, UpdateProfileParams> {
  final UpdateProfileRepository _updateProfileRepository;

  UpdateProfileUsecase(this._updateProfileRepository);

  @override
  Future<Either<AppError, ApiResponse<UpdateUserModel>>> call(
          UpdateProfileParams params) async =>
      _updateProfileRepository.updateProfile(
        firstName: params.firstName,
        lastName: params.lastName,
        address: params.address,
        contact: params.contact,
        imageUrl: params.imageUrl,
      );
}
