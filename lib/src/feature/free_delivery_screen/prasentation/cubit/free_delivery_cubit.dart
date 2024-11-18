import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/params/brands_params.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/entity/usecase/new_arrivals_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entity/params/free_delivery_params.dart';
import '../../domain/entity/usecase/free_delivery_usecase.dart';

part 'free_delivery_state.dart';
part 'free_delivery_cubit.freezed.dart';

@injectable
class FreeDeliveryCubit extends Cubit<FreeDeliveryState>{
  FreeDeliveryCubit(this._useCase) : super(const FreeDeliveryState.initial());
  final FreeDeliveryUsecase _useCase;

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;

  Future<void> getFreeDelivery(int page) async {
    print("k Ho Yoooo");

    if(_isFetching || !_hasMoreProducts) return;

    _isFetching = true;

    emit(const FreeDeliveryState.loading());

    final response = await _useCase.call(FreeDeliveryParams(page: page));

    response.fold(
          (l) => l.when(
        serverError: (message) => emit(FreeDeliveryState.error(message: message)),
        noInternet: () => emit(const FreeDeliveryState.noInternet()),
      ),
          (r){
        final products = r.data?.data?.data?.data ?? [];
        if (products.isEmpty) {
          print("Sakkio sakkio brands sakkio");
          _hasMoreProducts = false;
          emit(FreeDeliveryState.success(data: []));
        } else {
          _products.addAll(products);
          _currentPage++;
          print(_products.length);
          emit(FreeDeliveryState.success(data: _products));
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
      getFreeDelivery(_currentPage);
    }else{
      emit(FreeDeliveryState.success(data: _products));
    }
  }
}