import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/app/domain/entity/usecase/app_data_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../core/helpers/storage_helper.dart';

part 'app_state.dart';
part 'app_cubit.freezed.dart';

@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit(this._helper, this._appDataUsecase) : super(const AppState.initial());
  final StorageHelper _helper;
  final AppDataUsecase _appDataUsecase;

  Future<void> checkAuthState() async {
    final hasAccessToken = await _helper.hasAccessToken;
    if (hasAccessToken) {
      emit(const AppState.authenticated());
    } else {
      emit(const AppState.unAuthenticated(message: 'Unauthenticated'));
    }
  }
  

}