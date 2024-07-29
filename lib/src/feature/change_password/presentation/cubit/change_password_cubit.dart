
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/change_password_model.dart';
import '../../domain/entity/params/change_password_params.dart';
import '../../domain/entity/usecase/change_password_usecase.dart';


part 'change_password_state.dart';
part 'change_password_cubit.freezed.dart';

@injectable
class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordUsecase _changePasswordUseCase;

  ChangePasswordCubit(this._changePasswordUseCase) : super(const ChangePasswordState.initial());


  Future<void> changePassword({
    required String oldPassword,
    required String newPassword,
    required String confirmPassword,
  }) async {
    emit(const ChangePasswordState.loading());
    final response = await _changePasswordUseCase.call(ChangePasswordParams(
      oldPassword: oldPassword,
      newPassword: newPassword,
      confirmPassword: confirmPassword,
    ));
    emit(
      response.fold(
        (l) => l.when(
          serverError: (message) => ChangePasswordState.error(message: message),
          noInternet: () => const ChangePasswordState.noInternet(),
        ),
        (r) => ChangePasswordState.success(message: r.data!),
      ),
    );
  }
}