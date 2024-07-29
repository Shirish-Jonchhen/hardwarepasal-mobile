import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/model/brands_model/brands_model.dart';

part 'brands_state.dart';
part 'brands_cubit.freezed.dart';

@injectable
class BrandsCubit extends Cubit<BrandsState>{
  BrandsCubit(this._useCase) : super(const BrandsState.initial());
  final BrandsUsecase _useCase;

  Future<void> getBrands() async {
    emit(const BrandsState.loading());

    final response = await _useCase.call(const NoParams());
    emit(response.fold(
          (l) => l.when(
        serverError: (message) => BrandsState.error(message: message),
        noInternet: () => const BrandsState.noInternet(),
      ),
          (r) => BrandsState.success(data: r),
    ));
  }
}