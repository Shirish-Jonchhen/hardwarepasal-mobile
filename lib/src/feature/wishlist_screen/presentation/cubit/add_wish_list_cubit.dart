import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../domain/entity/params/add_wish_list_params.dart';
import '../../domain/entity/usecase/add_wish_list_usecase.dart';

part 'add_wish_list_state.dart';
part 'add_wish_list_cubit.freezed.dart';

@injectable
class AddWishListCubit extends Cubit<AddWishListState> {
  final AddWishListUsecase _addWishListUsecase;

  AddWishListCubit(this._addWishListUsecase) : super(const AddWishListState.initial());

  void addWishList(ProductModel product) async {
    emit(const AddWishListState.loading());
    final response = await _addWishListUsecase.call(AddWishListParams(product: product));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(AddWishListState.error(message)),
        noInternet: () => emit(const AddWishListState.noInternet()),
      ),
      (r) => emit(AddWishListState.success(result: r.data!)),
    );
  }
}