import 'package:dartz/dartz.dart';
import 'package:hardwarepasal/src/app/data/models/image_link_model/image_link_model.dart';
import 'package:hardwarepasal/src/core/api_response/api_response.dart';
import 'package:hardwarepasal/src/feature/auth/data/models/user_model.dart';


import '../../../core/errors/app_error.dart';

abstract class AppDataRepository{
  Future<Either<AppError, ApiResponse<ImageLinkResponseModel>>> getImageLinks();
}