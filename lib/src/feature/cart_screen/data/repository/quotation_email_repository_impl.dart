import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/core/errors/app_error.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/quatation_model/quotation_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/update_cart_model/update_cart_model.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/source/cart_data_source.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/source/quotation_email_data_source.dart';
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/quotation_email_repository.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/errors/app_exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repository/cart_data_repository.dart';

@LazySingleton(as: QuotationEmailRepository)
class QuotationEmailRepositoryImpl implements QuotationEmailRepository {
  const QuotationEmailRepositoryImpl(this._quotationEmailDataSource, this._networkInfo);

  final QuotationEmailDataSource _quotationEmailDataSource;
  final NetworkInfo _networkInfo;

  @override
  Future<Either<AppError, ApiResponse<QuotationModel>>> quotationEmail(String email) async {
    if (await _networkInfo.isConnected) {
      try {
        final response = await _quotationEmailDataSource.quotationEmail(email);
        return Right(
          ApiResponse(
              data: response.data,
              message: response.message,
              error: response.error),
        );
      } on AppException catch (e) {
        return Left(AppError.serverError(message: e.message));
      }
    } else {
      return const Left(AppError.noInternet());
    }
  }


}
