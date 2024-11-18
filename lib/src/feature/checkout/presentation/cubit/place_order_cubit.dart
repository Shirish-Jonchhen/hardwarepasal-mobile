
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/ime_pay_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_model.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/place_order_response_model.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/params/place_order_params.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/place_order_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../domain/entity/usecase/ime_pay_usecase.dart';

part 'place_order_state.dart';
part 'place_order_cubit.freezed.dart';

@injectable
class PlaceOrderCubit extends Cubit<PlaceOrderState> {
  final PlaceOrderUsecase _placeOrderUsecase;
  final ImePayUsecase _imePayUsecase;

  PlaceOrderCubit(this._placeOrderUsecase, this._imePayUsecase)
      : super(const PlaceOrderState.initial());

  void placeOrder({PlaceOrderModel? placeOrderModel}) async {
    emit(const PlaceOrderState.loading());
    final response = await _placeOrderUsecase.call(PlaceOrderParams(
      placeOrderModel: placeOrderModel!,
    ));
    response.fold(
          (l) => l.when(
        serverError: (message) => emit(PlaceOrderState.error(message: message)),
        noInternet: () => emit(const PlaceOrderState.noInternet()),
      ),
          (r) {
            emit(PlaceOrderState.success(data: r));
          }
    );

  }

}

