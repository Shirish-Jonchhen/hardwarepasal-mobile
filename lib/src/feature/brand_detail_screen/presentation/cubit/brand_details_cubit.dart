import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../data/model/brand_details_model/brand_details_model.dart';
import '../../domain/entity/params/brand_details_params.dart';
import '../../domain/entity/usecase/brand_details_usecase.dart';

part 'brand_details_state.dart';

part 'brand_details_cubit.freezed.dart';

@injectable
class BrandDetailsCubit extends Cubit<BrandDetailsState> {
  BrandDetailsCubit(this._useCase) : super(const BrandDetailsState.initial());
  final BrandDetailsUsecase _useCase;

  // int _page = 1;
  // List<ProductModel> _products = [];

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;
  String slug = "";
  List<String>? _range;
  String? _discount;

  Future<void> getBrandDetails({
    required String slug,
    List<String>? Range,
    String? discount,
    bool filter = false,
  }) async {
    _isFetching = false;

    print("Hello brand detail eta xaa");
    if (this.slug != slug) {
      _currentPage = 1;
      _products = [];
      _hasMoreProducts = true;
      _isFetching = false;
    }

    if (filter) {
      _currentPage = 1;
      _products = [];
      _hasMoreProducts = true;
      _isFetching = false;
    }

    print("Brand details stage 1");
    print(_isFetching);
    print(_hasMoreProducts);

    if (_isFetching || !_hasMoreProducts) return;

    _isFetching = true;

    this.slug = slug;
    this._range = Range;
    this._discount = discount;

    // emit(const BrandDetailsState.loading());
    print("Brand details stage 2");
    print("Brand details stage 2");

    final response = await _useCase.call(BrandDetailsParams(
        slug: slug, page: _currentPage, Range: Range, discount: discount));

    _isFetching = false;

    response.fold(
      (l) => l.when(
        serverError: (message) =>
            emit(BrandDetailsState.error(message: message)),
        noInternet: () => emit(const BrandDetailsState.noInternet()),
      ),
      (r) {
        final products = r.data?.data?.data?.products?.data ?? [];
        if (products.isEmpty) {
          _hasMoreProducts = false;
          emit(BrandDetailsState.success(
            data: ApiResponse<BrandDetailsResponseModel>(
              message: r.message,
              error: r.error,
              data: BrandDetailsResponseModel(
                message: r.data?.message,
                id: r.data?.id,
                data: BrandDetailsDataModel(
                  data: BrandDetailsInnerDataModel(
                    is_brand: r.data?.data?.data?.is_brand,
                    brand: r.data?.data?.data?.brand,
                    brand_sub_categories:
                        r.data?.data?.data?.brand_sub_categories,
                    brands: r.data?.data?.data?.brands,
                    filteredCategories: r.data?.data?.data?.filteredCategories,
                    products: BrandDetailsProductsModel(
                      links: r.data?.data?.data?.products?.links,
                      path: r.data?.data?.data?.products?.path,
                      per_page: r.data?.data?.data?.products?.per_page,
                      total: r.data?.data?.data?.products?.total,
                      prev_page_url:
                          r.data?.data?.data?.products?.prev_page_url,
                      to: r.data?.data?.data?.products?.to,
                      current_page: r.data?.data?.data?.products?.current_page,
                      first_page_url:
                          r.data?.data?.data?.products?.first_page_url,
                      from: r.data?.data?.data?.products?.from,
                      last_page: r.data?.data?.data?.products?.last_page,
                      last_page_url:
                          r.data?.data?.data?.products?.last_page_url,
                      next_page_url:
                          r.data?.data?.data?.products?.next_page_url,
                      data: _products,
                    ),
                  ),
                ),
              ),
            ),
          ));
        } else {
          _products.addAll(products);
          _currentPage++;
          print(_products.length);
          emit(
            BrandDetailsState.success(
              data: ApiResponse<BrandDetailsResponseModel>(
                message: r.message,
                error: r.error,
                data: BrandDetailsResponseModel(
                  message: r.data?.message,
                  id: r.data?.id,
                  data: BrandDetailsDataModel(
                    data: BrandDetailsInnerDataModel(
                      is_brand: r.data?.data?.data?.is_brand,
                      brand: r.data?.data?.data?.brand,
                      brand_sub_categories:
                          r.data?.data?.data?.brand_sub_categories,
                      brands: r.data?.data?.data?.brands,
                      filteredCategories:
                          r.data?.data?.data?.filteredCategories,
                      products: BrandDetailsProductsModel(
                        links: r.data?.data?.data?.products?.links,
                        path: r.data?.data?.data?.products?.path,
                        per_page: r.data?.data?.data?.products?.per_page,
                        total: r.data?.data?.data?.products?.total,
                        prev_page_url:
                            r.data?.data?.data?.products?.prev_page_url,
                        to: r.data?.data?.data?.products?.to,
                        current_page:
                            r.data?.data?.data?.products?.current_page,
                        first_page_url:
                            r.data?.data?.data?.products?.first_page_url,
                        from: r.data?.data?.data?.products?.from,
                        last_page: r.data?.data?.data?.products?.last_page,
                        last_page_url:
                            r.data?.data?.data?.products?.last_page_url,
                        next_page_url:
                            r.data?.data?.data?.products?.next_page_url,
                        data: _products,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        }
        _isFetching = false;
        // emit(HomeAllProductsState.success(data: _products));
      },
    );
  }

  void loadMoreProducts(
      ) {
    if (_hasMoreProducts) {
      getBrandDetails(slug: slug, Range: _range, discount: _discount);
    }else{
      _currentPage = 1;
    }
  }
}
