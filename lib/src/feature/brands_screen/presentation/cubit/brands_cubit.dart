import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/params/brands_params.dart';
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

  bool _isFetching = false;
  List<BrandsItemModel> _brands = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;

  Future<void> getBrands(int page) async {

    if(_isFetching || !_hasMoreProducts) return;

    _isFetching = true;

    emit(const BrandsState.loading());

    final response = await _useCase.call(BrandsParams(page: page));

    response.fold(
          (l) => l.when(
        serverError: (message) => emit(BrandsState.error(message: message)),
        noInternet: () => emit(const BrandsState.noInternet()),
      ),
          (r){
        final brands = r.data?.data?.data?.data ?? [];
        if (brands.isEmpty) {
          print("Sakkio sakkio brands sakkio");
          _hasMoreProducts = false;
        } else {
          _brands.addAll(brands);
          _currentPage++;
          print(_brands.length);
          emit(BrandsState.success(data: _brands));
        }
        _isFetching = false;
        // emit(HomeAllProductsState.success(data: _products));
      },
    );
  }

  void loadMoreBrands() {
    print("-----------------");
    print(_hasMoreProducts);
    if (_hasMoreProducts) {
      getBrands(_currentPage);
    }else{
      emit(BrandsState.success(data: _brands));
    }
  }
}