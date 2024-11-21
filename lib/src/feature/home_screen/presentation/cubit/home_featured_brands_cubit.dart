import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/params/recently_viewed_params.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/featured_brands_usecase.dart';
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/recently_viewed_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/models/featured_brands_model/featured_brands_model.dart';
import '../../data/models/product_model/product_model.dart';
import '../../domain/entity/usecase/add_recently_viewed_usecase.dart';

part 'home_featured_brands_cubit.freezed.dart';

part 'home_featured_brands_state.dart';

@injectable
class HomeFeaturedBrandsCubit extends Cubit<HomeFeaturedBrandsState> {
  final FeaturedBrandsUsecase _featuredBrandsUsecase;

  HomeFeaturedBrandsCubit(
      this._featuredBrandsUsecase)
      : super(const HomeFeaturedBrandsState.initial());

  Future<void> getFeaturedBrands() async {
    emit(const HomeFeaturedBrandsState.loading());
    final response =
    await _featuredBrandsUsecase.call(const NoParams());
    emit(
      response.fold(
            (l) => l.when(
          serverError: (message) =>
              HomeFeaturedBrandsState.error(message: message),
          noInternet: () => const HomeFeaturedBrandsState.noInternet(),
        ),
            (r) => HomeFeaturedBrandsState.success(brands: r.data!),
      ),
    );
  }

}
