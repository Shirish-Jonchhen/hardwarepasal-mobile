import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/core/helpers/snackbar_helper.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/params/quotation_email_params.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/quotation_email_usecase.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/quatation_model/quotation_model.dart';

part 'quotation_email_cubit.freezed.dart';

part 'quotation_email_state.dart';

@injectable
class QuotationEmailCubit extends Cubit<QuotationEmailState> {
  final QuotationEmailUsecase _quotationEmailUsecase;

  QuotationEmailCubit(this._quotationEmailUsecase)
      : super(const QuotationEmailState.initial());

  void sendEmail(String email) async {
    final response =
        await _quotationEmailUsecase.call(QuotationEmailParams(email: email));
    response.fold(
      (l) => l.when(
        serverError: (message) {
          print("Error hello hello");
          emit(QuotationEmailState.error(message: message));

        },
        noInternet: () {
          print("Error hello hello 1");
          emit(const QuotationEmailState.noInternet());

        },
      ),
      (r) {
        print("Error Success hello");

        emit(QuotationEmailState.success(couponSuccess: r.data!));

      },
    );
  }
}
