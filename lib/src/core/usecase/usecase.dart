import 'package:dartz/dartz.dart';

import '../errors/app_error.dart';

abstract class UseCase<Type, Param>{
  Future<Either<AppError, Type>> call(Param params);
}

class NoParams{
  const NoParams();
}