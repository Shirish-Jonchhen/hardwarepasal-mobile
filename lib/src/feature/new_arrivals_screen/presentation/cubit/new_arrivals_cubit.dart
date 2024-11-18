import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/params/brands_params.dart';
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/entity/usecase/new_arrivals_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/new_arrivals_response_model/new_arrivals_response_model.dart';
import '../../domain/entity/params/new_arrival_params.dart';

part 'new_arrivals_state.dart';
part 'new_arrivals_cubit.freezed.dart';

@injectable
class NewArrivalsCubit extends Cubit<NewArrivalsState>{
  NewArrivalsCubit(this._useCase) : super(const NewArrivalsState.initial());
  final NewArrivalsUsecase _useCase;

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;

  Future<void> getNewArrivals(int page) async {
    print("k Ho Yoooo");

    if(_isFetching || !_hasMoreProducts) return;

    _isFetching = true;

    emit(const NewArrivalsState.loading());

    final response = await _useCase.call(NewArrivalParams(page: page));

    response.fold(
          (l) => l.when(
        serverError: (message) => emit(NewArrivalsState.error(message: message)),
        noInternet: () => emit(const NewArrivalsState.noInternet()),
      ),
          (r){
        final products = r.data?.data?.data?.data ?? [];
        if (products.isEmpty) {
          print("Sakkio sakkio brands sakkio");
          _hasMoreProducts = false;
        } else {
          _products.addAll(products);
          _currentPage++;
          print(_products.length);
          emit(NewArrivalsState.success(data: _products));
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
      getNewArrivals(_currentPage);
    }else{
      emit(NewArrivalsState.success(data: _products));
    }
  }
}