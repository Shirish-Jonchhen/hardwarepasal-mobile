import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/params/brands_params.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/entity/usecase/new_arrivals_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/params/hot_deals_params.dart';
import '../../domain/entity/usecase/hot_deals_usecase.dart';


part 'hot_deals_state.dart';
part 'hot_deals_cubit.freezed.dart';

@injectable
class HotDealsCubit extends Cubit<HotDealsState>{
  HotDealsCubit(this._useCase) : super(const HotDealsState.initial());
  final HotDealsUsecase _useCase;

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;

  Future<void> getHotDeals(int page) async {
    print("k Ho Yoooo");

    if(_isFetching || !_hasMoreProducts) return;

    _isFetching = true;

    emit(const HotDealsState.loading());

    final response = await _useCase.call(HotDealsParams(page: page));

    response.fold(
          (l) => l.when(
        serverError: (message) => emit(HotDealsState.error(message: message)),
        noInternet: () => emit(const HotDealsState.noInternet()),
      ),
          (r){
        final products = r.data?.data?.data?.data ?? [];
        if (products.isEmpty) {
          print("Sakkio sakkio brands sakkio");
          _hasMoreProducts = false;
          emit(HotDealsState.success(data: []));

        } else {
          _products.addAll(products);
          _currentPage++;
          print(_products.length);
          emit(HotDealsState.success(data: _products));
        }
        _isFetching = false;
        // emit(HomeAllProductsState.success(data: _products));
      },
    );
  }

  void loadMoreProducts() {
    print("-----------------");
    print(_hasMoreProducts);
    if (_hasMoreProducts) {
      getHotDeals(_currentPage);
    }else{
      emit(HotDealsState.success(data: _products));
    }
  }
}