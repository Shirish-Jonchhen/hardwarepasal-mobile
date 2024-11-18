
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

part 'ime_pay_state.dart';
part 'ime_pay_cubit.freezed.dart';

@injectable
class ImePayCubit extends Cubit<ImePayState> {
  final ImePayUsecase _imePayUsecase;

  ImePayCubit(this._imePayUsecase)
      : super(const ImePayState.initial());

  void placeOrder({PlaceOrderModel? placeOrderModel}) async {
    emit(const ImePayState.loading());
    final response = await _imePayUsecase.call(PlaceOrderParams(
      placeOrderModel: placeOrderModel!,
    ));
    response.fold(
            (l) => l.when(
          serverError: (message) => emit(ImePayState.error(message: message)),
          noInternet: () => emit(const ImePayState.noInternet()),
        ),
            (r) {
          emit(ImePayState.success(data: r));
        }
    );

  }

}

