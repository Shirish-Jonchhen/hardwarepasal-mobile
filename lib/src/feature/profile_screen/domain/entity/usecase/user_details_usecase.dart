import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/errors/app_error.dart';
import '../../../../../core/usecase/usecase.dart';
import '../../../../auth/data/models/user_model.dart';
import '../../repository/user_detail_repository.dart';

@lazySingleton
class UserDetailsUseCase extends UseCase<ApiResponse<UserDetails>, NoParams> {
  final UserDetailsRepository _userDetailsRepository;
  UserDetailsUseCase(this._userDetailsRepository);

  @override
  Future<Either<AppError, ApiResponse<UserDetails>>> call(NoParams params) => _userDetailsRepository.getUserDetails();
}