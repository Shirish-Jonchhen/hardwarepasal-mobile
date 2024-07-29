import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_brands_model/home_brands_by_category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/usecase/usecase.dart';
import '../../domain/entity/usecase/home_brands_usecase.dart';


part 'home_brands_cubit.freezed.dart';
part 'home_brands_state.dart';

@injectable
class HomeBrandsCubit extends Cubit<HomeBrandsState> {
  HomeBrandsCubit(this._useCase) : super(const HomeBrandsState.initial());
  final HomeBrandsUseCase _useCase;

  Future<void> getBrands() async {
    emit(const HomeBrandsState.loading());

    final response = await _useCase.call(const NoParams());
    emit(response.fold(
          (l) => l.when(
        serverError: (message) => HomeBrandsState.error(message: message),
        noInternet: () => const HomeBrandsState.noInternet(),
      ),
          (r) => HomeBrandsState.success(data: r),
    ));
  }
}
