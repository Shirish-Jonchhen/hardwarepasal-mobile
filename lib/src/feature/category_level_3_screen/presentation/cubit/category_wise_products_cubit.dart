import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/entity/params/categoty_wise_products_params.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/entity/usecase/category_wise_products_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../data/model/category_wise_products_model/category_wise_products_model.dart';

part 'category_wise_products_state.dart';

part 'category_wise_products_cubit.freezed.dart';

@injectable
class CategoryWiseProductsCubit extends Cubit<CategoryWiseProductsState> {
  CategoryWiseProductsCubit(this._useCase)
      : super(const CategoryWiseProductsState.initial());
  final CategoryWiseProductsUsecase _useCase;

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;
  String slug = "";

  Future<void> getCategoryWiseProducts({
    required String slug,
    String? sub_cat_id,
    String? search,
    String? sortBy,
    List<String>? Range,
    String? discount,
    String? brand,
    String? brandSearch,
    bool filter = false,
  }) async {
    if(this.slug!=slug){
      print("Slug Changed");
      this.slug=slug;
      _currentPage=1;
      _products=[];
      _hasMoreProducts=true;
    }
    if(filter){
      _currentPage=1;
      _products=[];
      _hasMoreProducts=true;
    }
    print("Fetch fetch");
    print(_currentPage);
    print(_hasMoreProducts);
    print(_isFetching);

    if (_isFetching || !_hasMoreProducts) return;

    _isFetching = true;
    // emit(const HomeAllProductsState.loading());
    emit(const CategoryWiseProductsState.loading());

    final response = await _useCase.call(CategoryWiseProductsParams(
      slug: slug,
      page: _currentPage,
      sub_cat_id: sub_cat_id,
      sortBy: sortBy,
      search: search,
      Range: Range,
      discount: discount,
      brandSearch: brandSearch,
      brand: brand,
    ));
    _isFetching = false;
    emit(response.fold(
          (l) =>
          l.when(
            serverError: (message) =>
                CategoryWiseProductsState.error(message: message),
            noInternet: () => const CategoryWiseProductsState.noInternet(),
          ),
          (r) {
            _isFetching = false;
        final products = r.data?.data?.data?.products!.data ?? [];
        if (products.isEmpty) {
          print("helo helo");
          _hasMoreProducts = false;
          _isFetching = false;
          return CategoryWiseProductsState.success(
            data: ApiResponse<CategoryWiseProductsResponseModel>(
              message: "Successfully Fetched",
              data: CategoryWiseProductsResponseModel(
                message: r.data?.message,
                id: r.data?.id,
                data: CategoryWiseProductsDataModel(
                  data: CategoryWiseProductsInnerDataModel(
                    products: BrandDetailsProductsModel(
                      data: _products,
                      current_page: r.data?.data?.data?.products?.current_page,
                      first_page_url: r.data?.data?.data?.products?.first_page_url,
                      from: r.data?.data?.data?.products?.from,
                      last_page: r.data?.data?.data?.products?.last_page,
                      last_page_url: r.data?.data?.data?.products?.last_page_url,
                      next_page_url: r.data?.data?.data?.products?.next_page_url,
                      links: r.data?.data?.data?.products?.links,
                      path: r.data?.data?.data?.products?.path,
                      per_page: r.data?.data?.data?.products?.per_page,
                      prev_page_url: r.data?.data?.data?.products?.prev_page_url,
                      to: r.data?.data?.data?.products?.to,
                      total: r.data?.data?.data?.products?.total,
                    ),
                    brand_list: r.data?.data?.data?.brand_list,
                    category: r.data?.data?.data?.category,
                    colorList: r.data?.data?.data?.colorList,
                    filteredCategories: r.data?.data?.data?.filteredCategories,
                    grouping_catlist: r.data?.data?.data?.grouping_catlist,
                  ),
                ),
              ),
            ),);
        } else {
          _products.addAll(products);
          _currentPage++;
          print(_products.length);
          _isFetching = false;
          return CategoryWiseProductsState.success(
            data: ApiResponse<CategoryWiseProductsResponseModel>(
              message: "Successfully Fetched",
              data: CategoryWiseProductsResponseModel(
                message: r.data?.message,
                id: r.data?.id,
                data: CategoryWiseProductsDataModel(
                  data: CategoryWiseProductsInnerDataModel(
                    products: BrandDetailsProductsModel(
                      data: _products,
                      current_page: r.data?.data?.data?.products?.current_page,
                      first_page_url: r.data?.data?.data?.products?.first_page_url,
                      from: r.data?.data?.data?.products?.from,
                      last_page: r.data?.data?.data?.products?.last_page,
                      last_page_url: r.data?.data?.data?.products?.last_page_url,
                      next_page_url: r.data?.data?.data?.products?.next_page_url,
                      links: r.data?.data?.data?.products?.links,
                      path: r.data?.data?.data?.products?.path,
                      per_page: r.data?.data?.data?.products?.per_page,
                      prev_page_url: r.data?.data?.data?.products?.prev_page_url,
                      to: r.data?.data?.data?.products?.to,
                      total: r.data?.data?.data?.products?.total,
                    ),
                    brand_list: r.data?.data?.data?.brand_list,
                    category: r.data?.data?.data?.category,
                    colorList: r.data?.data?.data?.colorList,
                    filteredCategories: r.data?.data?.data?.filteredCategories,
                    grouping_catlist: r.data?.data?.data?.grouping_catlist,
                  ),
                ),
              ),
            ),);
        }
        _isFetching = false;
      },
    ));
  }

  void loadMoreProducts({
    required String slug,
    String? sub_cat_id,
    String? search,
    String? sortBy,
    List<String>? Range,
    String? discount,
    String? brand,
    String? brandSearch,
  }) {
    if (_hasMoreProducts) {
      print("More products on the wayy");
      getCategoryWiseProducts(
        slug: slug,
        sub_cat_id: sub_cat_id,
        search: search,
        sortBy: sortBy,
        Range: Range,
        discount: discount,
        brand: brand,
        brandSearch: brandSearch,
      );
    }else{
      _currentPage=0;
    }
  }
}
