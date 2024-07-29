import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../domain/entity/params/remove_wish_list_params.dart';
import '../../domain/entity/usecase/remove_wish_list_usecase.dart';

part 'remove_wish_list_state.dart';
part 'remove_wish_list_cubit.freezed.dart';

@injectable
class RemoveWishListCubit extends Cubit<RemoveWishListState> {
  final RemoveWishListUsecase _removeWishListUsecase;

  RemoveWishListCubit(this._removeWishListUsecase) : super(const RemoveWishListState.initial());

  void removeWishList(int productId) async {
    emit(const RemoveWishListState.loading());
    final response = await _removeWishListUsecase.call(RemoveWishListParams(productId: productId));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(RemoveWishListState.error(message)),
        noInternet: () => emit(const RemoveWishListState.noInternet()),
      ),
      (r) => emit(const RemoveWishListState.success()),
    );
  }
}