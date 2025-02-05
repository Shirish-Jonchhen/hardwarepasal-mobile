import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/model/brands_model/brands_category_model.dart';
import '../../domain/entity/usecase/brands_category_usecase.dart';

part 'brands_category_state.dart';
part 'brands_category_cubit.freezed.dart';

@injectable
class BrandsCategoryCubit extends Cubit<BrandsCategoryState>{
  BrandsCategoryCubit(this._useCase) : super(const BrandsCategoryState.initial());
  final BrandsCategoryUsecase _useCase;



  Future<void> getBrandsCategory() async {
    print("1 lll");


    emit(const BrandsCategoryState.loading());

    print("2 lll");

    final response = await _useCase.call(const NoParams());

    print("3 lll");


    response.fold(
          (l) => l.when(
        serverError: (message) => emit(BrandsCategoryState.error(message: message)),
        noInternet: () => emit(const BrandsCategoryState.noInternet()),
      ),
          (r){
            print("Successfully sent");
          emit(BrandsCategoryState.success(data: r.data?.data?.data ?? []));
        }
    );
  }

}