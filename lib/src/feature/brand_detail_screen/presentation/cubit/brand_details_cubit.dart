import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../data/model/brand_details_model/brand_details_model.dart';
import '../../domain/entity/params/brand_details_params.dart';
import '../../domain/entity/usecase/brand_details_usecase.dart';

part 'brand_details_state.dart';
part 'brand_details_cubit.freezed.dart';

@injectable
class BrandDetailsCubit extends Cubit<BrandDetailsState> {
  BrandDetailsCubit(this._useCase) : super(const BrandDetailsState.initial());
  final BrandDetailsUsecase _useCase;

  Future<void> getBrandDetails(String slug) async {
    emit(const BrandDetailsState.loading());

    final response = await _useCase.call(BrandDetailsParams(slug: slug));
    emit(response.fold(
          (l) => l.when(
        serverError: (message) => BrandDetailsState.error(message: message),
        noInternet: () => const BrandDetailsState.noInternet(),
      ),
          (r) => BrandDetailsState.success(data: r),
    ));
  }
}