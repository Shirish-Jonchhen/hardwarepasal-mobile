import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/auth/domain/entities/params/register_params.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/user_model.dart';
import '../../../domain/entities/usecase/register_usercase.dart';


part 'register_state.dart';
part 'register_cubit.freezed.dart';


@injectable
class RegisterCubit extends Cubit<RegisterState>{
  final RegisterUseCase _registerUseCase;

  RegisterCubit(this._registerUseCase) : super(const RegisterState.initial());

  Future<void> register({required String firstName, required String lastName, required String contact, required String email, required String password, required String confirmPassword}) async{
    emit(const RegisterState.loading());
    final response  = await _registerUseCase.call(RegisterParams(firstName: firstName, lastName: lastName, contact: contact, email: email, password: password, confirmPassword: confirmPassword));
    emit(response.fold(
          (l) => l.when(serverError: (message) => RegisterState.error(message: message), noInternet: ()=> const RegisterState.noInternet()),
          (r) => RegisterState.success(message: r.message!, userModel: r.data!),
    ));
  }
}