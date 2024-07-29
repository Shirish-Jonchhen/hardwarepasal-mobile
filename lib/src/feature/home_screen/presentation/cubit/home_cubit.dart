import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/home_model/home_model.dart';
import '../../domain/entity/usecase/home_usecase.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._useCase) : super(const HomeState.initial());
  final HomeUseCase _useCase;

  Future<void> getProducts() async {
    emit(const HomeState.loading());

    final response = await _useCase.call(const NoParams());
    emit(response.fold(
      (l) => l.when(
        serverError: (message) => HomeState.error(message: message),
        noInternet: () => const HomeState.noInternet(),
      ),
      (r) => HomeState.success(data: r),
    ));
  }
}
