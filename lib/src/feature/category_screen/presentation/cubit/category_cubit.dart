import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart';
import 'package:hardwarepasal/src/feature/category_screen/domain/entity/usecase/category_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/model/category_model/category_model.dart';

part 'category_state.dart';
part 'category_cubit.freezed.dart';

@injectable
class CategoryCubit extends Cubit<CategoryState>{
  CategoryCubit(this._useCase) : super(const CategoryState.initial());
  final CategoryUsecase _useCase;

  Future<void> getCategories() async {
    emit(const CategoryState.loading());

    final response = await _useCase.call(const NoParams());
    emit(response.fold(
          (l) => l.when(
        serverError: (message) => CategoryState.error(message: message),
        noInternet: () => const CategoryState.noInternet(),
      ),
          (r) => CategoryState.success(data: r),
    ));
  }
}