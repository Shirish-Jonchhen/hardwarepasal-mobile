import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/connectips_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../data/models/connectips_response_model.dart';
import '../../data/models/place_order_model.dart';
import '../../domain/entity/params/place_order_params.dart';

part 'connectips_state.dart';
part 'connectips_cubit.freezed.dart';

@injectable
class ConnectipsCubit extends Cubit<ConnectipsState> {
  final ConnectipsUsecase _connectipsUsecase;

  ConnectipsCubit(this._connectipsUsecase)
      : super(const ConnectipsState.initial());

  void placeOrder({PlaceOrderModel? placeOrderModel}) async {
    emit(const ConnectipsState.loading());
    final response = await _connectipsUsecase.call(PlaceOrderParams(
      placeOrderModel: placeOrderModel!,
    ));
    response.fold(
            (l) => l.when(
          serverError: (message) => emit(ConnectipsState.error(message: message)),
          noInternet: () => emit(const ConnectipsState.noInternet()),
        ),
            (r) {
          emit(ConnectipsState.success(data: r));
        }
    );

  }

}