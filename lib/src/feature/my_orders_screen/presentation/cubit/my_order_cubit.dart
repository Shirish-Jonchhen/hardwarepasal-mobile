import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/entity/params/my_order_params.dart';
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

  List<OrderData> data = [];


  void getMyOrders(int page) async {
    emit(const MyOrderState.loading());
    final response = await _myOrderUseCase(MyOrderParams(page: page));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(MyOrderState.error(message: message)),
        noInternet: () => emit(const MyOrderState.noInternet()),
      ),
      (r){
        data.addAll(r.data!.data!.data!.data!);

        if(r.data!.data!.data!.next_page_url != null){
          getMyOrders(page + 1);
        }else{
          ApiResponse<MyOrdersModel> response = ApiResponse<MyOrdersModel>(
            data: MyOrdersModel(
              code: 200,
              data: MyOrderDataModel(
                data: MyOrderInnerDataModel(
                  current_page: r.data!.data!.data!.current_page,
                  data: data,
                  first_page_url: r.data!.data!.data!.first_page_url,
                  from: r.data!.data!.data!.from,
                  last_page: r.data!.data!.data!.last_page,
                  last_page_url: r.data!.data!.data!.last_page_url,
                  next_page_url: r.data!.data!.data!.next_page_url,
              ),
            ),
            message: r.message,
          ),
          );


          emit(MyOrderState.success(data: response.data!));
        }

      },
    );
  }

}