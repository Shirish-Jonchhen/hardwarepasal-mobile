import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/helpers/storage_helper.dart';

abstract class UserDetailsDataSource {
  Future<ApiResponse<UserDetails>> getUserDetails();
}

@LazySingleton(as: UserDetailsDataSource)
class UserDetailsDataSourceImpl implements UserDetailsDataSource {
  const UserDetailsDataSourceImpl();

  @override
  Future<ApiResponse<UserDetails>> getUserDetails() async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    UserDetails userDetails = await storageHelper.getUserData();
    return ApiResponse(data: userDetails, message: 'message');
  }
}