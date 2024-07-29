import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/entity/usecase/my_orders_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/usecase/usecase.dart';
import '../../data/model/my_orders_model/my_orders_model.dart';

part 'my_order_state.dart';
part 'my_order_cubit.freezed.dart';

@injectable
class MyOrderCubit extends Cubit<MyOrderState>{
  final MyOrdersUsecase _myOrderUseCase;
  MyOrderCubit(this._myOrderUseCase) : super(const MyOrderState.initial());

  void getMyOrders() async {
    emit(const MyOrderState.loading());
    final response = await _myOrderUseCase(const NoParams());
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(MyOrderState.error(message: message)),
        noInternet: () => emit(const MyOrderState.noInternet()),
      ),
      (r) => emit(MyOrderState.success(data: r.data!)),
    );
  }

}