import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract class NetworkInfo{
  Future<bool> get isConnected;
}

@LazySingleton(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo{
  final InternetConnectionChecker _connectionChecker;

  const NetworkInfoImpl(InternetConnectionChecker checker): _connectionChecker = checker;

  @override
  Future<bool> get isConnected => _connectionChecker.hasConnection;
}