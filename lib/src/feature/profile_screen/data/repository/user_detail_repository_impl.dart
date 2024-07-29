import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/feature/profile_screen/domain/repository/user_detail_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/errors/app_error.dart';
import '../../../../core/errors/app_exceptions.dart';
import '../../../auth/data/models/user_model.dart';
import '../source/user_details_source.dart';

@LazySingleton(as: UserDetailsRepository)
class UserDetailRepositoryImpl implements UserDetailsRepository {
  const UserDetailRepositoryImpl(this._userDetailsDataSource);

  final UserDetailsDataSource _userDetailsDataSource;

  @override
  Future<Either<AppError, ApiResponse<UserDetails>>> getUserDetails() async {
    try {
      final response = await _userDetailsDataSource.getUserDetails();
      return Right(
        ApiResponse(
            data: response.data,
            message: response.message,
            error: response.error),
      );
    } on AppException catch (e) {
      return Left(AppError.serverError(message: e.message));
    }
  }
}