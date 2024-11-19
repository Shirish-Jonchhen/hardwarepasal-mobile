import 'package:bloc/bloc.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../category_level_3_screen/domain/entity/params/categoty_wise_products_params.dart';
import '../../../category_level_3_screen/domain/entity/usecase/category_wise_products_usecase.dart';
import '../../data/models/home_all_products_model/home_all_products_model.dart';
import '../../domain/entity/params/all_products_params.dart';
import '../../domain/entity/usecase/home_all_products_usecase.dart';

part 'home_all_products_cubit.freezed.dart';
part 'home_all_products_state.dart';


@injectable
class HomeAllProductsCubit extends Cubit<HomeAllProductsState> {
  final HomeAllProductsUseCase _homeAllProductsUseCase;
  final CategoryWiseProductsUsecase _categoryWiseProductsUsecase;
  HomeAllProductsCubit(this._homeAllProductsUseCase, this._categoryWiseProductsUsecase) : super(HomeAllProductsState.initial());

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;



  int _currentCategoryPage = 1;
  String slug = "";
  bool _isCategoryFetching = false;
  bool _hasMoreCategoryProducts = true;
  List<ProductModel> _categoryProducts = [];

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

  void getProductsByCategory(String slug, int page) async {
    print("CUBIT CALLL");
    if(this.slug != slug){
      _currentCategoryPage = 1;
      _categoryProducts = [];
      _hasMoreCategoryProducts = true;
    }
    print(_currentCategoryPage);
    print(_categoryProducts);
    print(_hasMoreCategoryProducts);
    print(_isCategoryFetching);
    print(_isCategoryFetching);

    if(_isCategoryFetching || !_hasMoreCategoryProducts) return;
    print("Hello world eta eta");

    _isCategoryFetching = true;
    emit(const HomeAllProductsState.loading());

    this.slug = slug;
    emit(const HomeAllProductsState.loading());
    final response = await _categoryWiseProductsUsecase.call(CategoryWiseProductsParams(slug: this.slug, page: 1, Range: ["0","99999999999999"]));
    response.fold(
          (l) => l.when(
        serverError: (message) => emit(HomeAllProductsState.error(message: message)),
        noInternet: () => emit(const HomeAllProductsState.noInternet()),
      ),
          (r){

        final products = r.data?.data?.data?.products?.data ?? [];
        if (products.isEmpty) {
          _hasMoreCategoryProducts = false;
          emit(HomeAllProductsState.success(data: []));
        } else {
          _categoryProducts.addAll(products);
          _currentCategoryPage++;
          print(_categoryProducts.length);
          emit(HomeAllProductsState.success(data: _categoryProducts));
        }
        _isCategoryFetching = false;
        // emit(HomeAllProductsState.success(data: _products));
      },
    );
  }

  void loadMoreCategoryProducts() {
    if (_hasMoreProducts) {
      getProductsByCategory(slug, _currentPage);
    }
  }



}