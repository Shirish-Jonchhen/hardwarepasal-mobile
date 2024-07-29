import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/user_model.dart';
import '../../../domain/entities/params/login_params.dart';
import '../../../domain/entities/usecase/login_usecase.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';
@injectable
class LoginCubit extends Cubit<LoginState>{
  final LoginUseCase _loginUseCase;

  LoginCubit(this._loginUseCase) : super(const LoginState.initial());

  Future<void> login({required String email, required String password}) async{
    emit(const LoginState.loading());
    final response =
        await _loginUseCase.call(LoginParams(email: email, password: password));
    emit(
      response.fold(
        (l) => l.when(
            serverError: (message) => LoginState.error(message: message),
            noInternet: () => const LoginState.noInternet()),
        (r) {
          FlutterSecureStorage storage = const FlutterSecureStorage();
          StorageHelper(storage).setSession(model: r.data!).then((value){
            print("Session Saved");
          });
          
          StorageHelper(storage).saveUserData(model: r.data!.data!.user_details!).then((value){
            print("User Data Saved");
          });
          return LoginState.success(message: r.message!, userModel: r.data!);
        },
      ),
    );
  }
}