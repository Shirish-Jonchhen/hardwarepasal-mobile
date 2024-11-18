import 'package:bloc/bloc.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/api_response/api_response.dart';
import '../../data/models/home_all_products_model/home_all_products_model.dart';
import '../../domain/entity/params/all_products_params.dart';
import '../../domain/entity/usecase/home_all_products_usecase.dart';

part 'home_all_products_cubit.freezed.dart';
part 'home_all_products_state.dart';


@injectable
class HomeAllProductsCubit extends Cubit<HomeAllProductsState> {
  final HomeAllProductsUseCase _homeAllProductsUseCase;
  HomeAllProductsCubit(this._homeAllProductsUseCase) : super(HomeAllProductsState.initial());

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;

  void getAllProducts(int page) async {
    if(_isFetching || !_hasMoreProducts) return;

    _isFetching = true;
    emit(const HomeAllProductsState.loading());

    final response = await _homeAllProductsUseCase.call(AllProductsParams(page: page));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(HomeAllProductsState.error(message: message)),
        noInternet: () => emit(const HomeAllProductsState.noInternet()),
      ),
      (r){
        final products = r.data?.data?.products?.data ?? [];
        if (products.isEmpty) {
          _hasMoreProducts = false;
        } else {
          _products.addAll(products);
          _currentPage++;
          print(_products.length);
          emit(HomeAllProductsState.success(data: _products));
        }
        _isFetching = false;
        // emit(HomeAllProductsState.success(data: _products));
      },
    );
  }

  void loadMoreProducts() {
    if (_hasMoreProducts) {
      getAllProducts(_currentPage);
    }
  }
}