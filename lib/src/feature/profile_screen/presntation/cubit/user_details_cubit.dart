import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/usecase/usecase.dart';
import '../../../auth/data/models/user_model.dart';
import '../../domain/entity/usecase/user_details_usecase.dart';

part 'user_details_state.dart';
part 'user_details_cubit.freezed.dart';

@injectable
class UserDetailsCubit extends Cubit<UserDetailsState>{
  final UserDetailsUseCase _useCase;

  UserDetailsCubit(this._useCase) : super(const UserDetailsState.initial());

  Future<void> getUserDetails() async {
    emit(const UserDetailsState.loading());

    final response = await _useCase.call(const NoParams());
    emit(response.fold(
          (l) =>
          l.when(
            serverError: (message) => UserDetailsState.error(message: message),
            noInternet: () => const UserDetailsState.noInternet(),
          ),
          (r) => UserDetailsState.success(data: r),
    ));
  }

}