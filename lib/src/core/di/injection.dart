import 'package:get_it/get_it.dart';

import 'package:injectable/injectable.dart';

import 'injection.config.dart';

GetIt getIt = GetIt.instance;
@InjectableInit(
  preferRelativeImports: false,
)
Future<void> configureInjection() async {

  getIt.init(environment: Environment.prod);
}
