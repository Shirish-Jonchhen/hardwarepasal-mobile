import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/core/constants/app_constants.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/usecase/usecase.dart';
import '../../../data/models/logout_model.dart';
import '../../../data/models/user_model.dart';
import '../../../domain/entities/params/login_params.dart';
import '../../../domain/entities/usecase/login_usecase.dart';
import '../../../domain/entities/usecase/logout_usecase.dart';

part 'logout_cubit.freezed.dart';

part 'logout_state.dart';
@injectable
class LogoutCubit extends Cubit<LogoutState>{
  final LogoutUsecase _logoutUseCase;

  LogoutCubit(this._logoutUseCase) : super(const LogoutState.initial());

  Future<void> logout() async{
    emit(const LogoutState.loading());
    final response =
    await _logoutUseCase.call(NoParams());
    emit(
      response.fold(
            (l) => l.when(
            serverError: (message) => LogoutState.error(message: message),
            noInternet: () => const LogoutState.noInternet()),
            (r) {
          FlutterSecureStorage storage = const FlutterSecureStorage();
          StorageHelper loaclStorage = StorageHelper(storage);
          loaclStorage.deleteValue(key: AppConstants.accessToken).then((value){
            print("Session Removed");
          });
          loaclStorage.deleteValue(key: AppConstants.userData).then((value){
            print("User Data Removed");
          });
          return LogoutState.success(message: r.message!, logoutModel: r.data!);
        },
      ),
    );
  }
}