import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/params/recently_viewed_params.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/recently_viewed_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/models/product_model/product_model.dart';
import '../../domain/entity/usecase/add_recently_viewed_usecase.dart';

part 'home_recently_viewed_cubit.freezed.dart';

part 'home_recently_viewed_state.dart';

@injectable
class HomeRecentlyViewedCubit extends Cubit<HomeRecentlyViewedState> {
  final RecentlyViewedUsecase _getRecentlyViewedProductsUseCase;
  final AddRecentlyViewedUsecase _addRecentlyViewedUsecase;

  HomeRecentlyViewedCubit(
      this._getRecentlyViewedProductsUseCase, this._addRecentlyViewedUsecase)
      : super(const HomeRecentlyViewedState.initial());

  Future<void> getRecentlyViewedProducts() async {
    emit(const HomeRecentlyViewedState.loading());
    final response =
        await _getRecentlyViewedProductsUseCase.call(const NoParams());
    emit(
      response.fold(
        (l) => l.when(
          serverError: (message) =>
              HomeRecentlyViewedState.error(message: message),
          noInternet: () => const HomeRecentlyViewedState.noInternet(),
        ),
        (r) => HomeRecentlyViewedState.success(products: r.data!),
      ),
    );
  }

  Future<void> addRecentlyViewedProduct(ProductModel product) async {
    emit(const HomeRecentlyViewedState.loading());
    final response = await _addRecentlyViewedUsecase
        .call(RecentlyViewedParams(productModel: product));

      response.fold(
        (l) => l.when(
          serverError: (message) =>
              emit(HomeRecentlyViewedState.error(message: message)),
          noInternet: () => emit(const HomeRecentlyViewedState.noInternet()),
        ),
        (r) {
          getRecentlyViewedProducts();
        },
      );
  }
}
