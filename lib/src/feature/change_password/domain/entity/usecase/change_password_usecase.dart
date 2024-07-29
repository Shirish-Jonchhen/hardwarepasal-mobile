import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/core/usecase/usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/api_response/api_response.dart';
import '../../../data/model/change_password_model.dart';
import '../../repository/change_password_repository.dart';
import '../params/change_password_params.dart';

@lazySingleton
class ChangePasswordUsecase extends UseCase<ApiResponse<ChangePasswordModel>, ChangePasswordParams> {

  final ChangePasswordRepository _changePasswordRepository;
  ChangePasswordUsecase(this._changePasswordRepository);

  @override
  Future<Either<AppError, ApiResponse<ChangePasswordModel>>> call(params) async => _changePasswordRepository.changePassword(
    oldPassword: params.oldPassword,
    newPassword: params.newPassword,
    confirmPassword: params.confirmPassword,
  );

}






