import 'package:bloc/bloc.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/params/item_detail_params.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/product_detail_model/product_detail_model.dart';
import '../../domain/entity/usecase/item_detail_usecase.dart';

part 'item_details_state.dart';
part 'item_details_cubit.freezed.dart';

@injectable
class ItemDetailsCubit extends Cubit<ItemDetailsState> {
  final ItemDetailUsecase _itemDetailUsecase;

  ItemDetailsCubit(this._itemDetailUsecase) : super(ItemDetailsState.initial());

  void getItemDetail(String slug) async {
    emit(ItemDetailsState.loading());
    final response = await _itemDetailUsecase(ItemDetailParams(slug: slug));
    response.fold(
      (l) => l.when(
        serverError: (message) => ItemDetailsState.error(message: message),
        noInternet: () => const ItemDetailsState.noInternet(),
      ),
      (r) => emit(ItemDetailsState.success(data: r.data!)),
    );
  }
}