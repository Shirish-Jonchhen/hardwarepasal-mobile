import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/src/adapters/io_adapter.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';

import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:logger/logger.dart';
import '../helpers/storage_helper.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  AppRouter get router => AppRouter();

  @lazySingleton
  Logger get  logger => Logger(
        printer: PrettyPrinter(
            methodCount: 2,
            // number of method calls to be displayed
            errorMethodCount: 8,
            // number of method calls if stacktrace is provided
            lineLength: 60,
            // width of the output
            colors: true,
            // Colorful log messages
            printEmojis: true,
            // Print an emoji for each log message
            printTime: true // Should each log print contain a timestamp
            ),
      );
  @lazySingleton
  Dio get dio => Dio();

  @lazySingleton
  InternetConnectionChecker get internetConnectionChecker =>
      InternetConnectionChecker();

  @lazySingleton
  FlutterSecureStorage get storage => const FlutterSecureStorage(
        // iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
        // aOptions: AndroidOptions(encryptedSharedPreferences: true),
      );

  @lazySingleton
  StorageHelper get storageHelper => StorageHelper(storage);

  @Named('authenticated')
  @lazySingleton
  Dio get authenticatedDio => Dio(
        BaseOptions(
          // baseUrl: 'https://rknlws6b-7000.inc1.devtunnels.ms/',
          baseUrl: 'https://hardwarepasal.com/api/',
          // baseUrl: 'https://hardwarepasalapi.checkmysite.live/api/',
          receiveTimeout: 60000,
          connectTimeout: 60000,
          responseType: ResponseType.json,
          headers: <String, dynamic>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      )
        ..interceptors.addAll([
          HttpFormatter(),
          LogInterceptor(),
          QueuedInterceptorsWrapper(
            onRequest: (options, handler) async {
              final token = await storageHelper.getToken();
              // final token ='eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYmZkMWQ5ZDU3NmZjNmRhNWNkYzVkNzI2NWViMTNkODdmZDM1OWViNzE0MTRlMjE4NjE5NzNmZDU0ODYwMTY1YWI1MzE0ODEzOTc0YWFiNDUiLCJpYXQiOjE3MTk0ODA3ODUuNzA3OTQ3LCJuYmYiOjE3MTk0ODA3ODUuNzA3OTQ4LCJleHAiOjE3NTEwMTY3ODUuNzA2NDk1LCJzdWIiOiI0MjciLCJzY29wZXMiOltdfQ.GQZ95kAogejF1HHhgYICQjhZlZujUzsfXAb_V26HTXgek8w7FQYaPrQU5u8dSYdX3U30vHr20cC04A_jA8N170PgeHO_fg4R8LtPHQxjuVL-lZPT7yPwvw_03hgUsSq3HyoBWH4FR_PnS7pzkGT_kCfVfNceptsf5ypm1MNVO36HZFThBvdCHIqrHoUG4Up9-O6OWzD8jNisraZwSrLiaF45quV6a9mqBGpmE3OcnXTNuRBqyWJMXQFPWyxurMnC3CuDoVn3nfTGi_tqADsspRM3ZmqiDGLoYgUGJ-8oQVUyuaORXQo_C-MIpnKUvHPboBPdddeq0YYX2L4nN-7EQOLu3E2uPAC_A1ZkzgMQdE08dkBAPeVnFPVjNk2KJQn0zlTnVG3NoA5211b_MJajDEQuK2-sDqAlJVGzFj-w7_AP5zcvDUSKECEpK90IsvO6hy5bG5iBMBBqRP7uMETROd1Isph7WtRez3um_lzP-MfoZxUW0KeM1NJ7QlJ_Goa6HrYYlpGGwoQ4h_swhCi_jjYVyeXYf6rRFyKyk5CYDN3Y2ypsZ8poqYGJJi3p4tmWTstI1K3k87XJinabZRCqYpImvYgwbHPdBfyf96LHcBCdCvbWP0CpjDoFTY36kw2bPf5gwm3JnP6wQxbkHQdTe_b4M44Yqhu-6GIft74xTTE';
              try {
                print("bearer token is 12341234");
                logger.i('bearer token is ' + token!);
                options.headers.addAll(<String, dynamic>{
                  'Authorization': 'Bearer $token',
                });
                handler.next(options);
              } on DioError catch (e) {
                print("Bearer token is123123123123123123");
                handler.reject(e);
              }
            },
            onError: (error, handler) async {
              if (error.response?.statusCode == 401) {
                var options = error.response!.requestOptions;
                if (error.response?.data['message'] == 'Unauthenticated.') {
                  logger.d('here');
                  final accessToken = await _refreshToken();
                  if (accessToken == 'Unauthenticated') {
                    handler.reject(error);
                    return;
                  } else {
                    logger.i('bearer token is ' + accessToken);
                    options.headers.addAll(
                      {
                        'Authorization': 'Bearer $accessToken',
                      },
                    );
                    authenticatedDio.fetch(options).then(
                      (r) => handler.resolve(r),
                      onError: (e) {
                        return handler.reject(e);
                      },
                    );
                  }

                  return;
                } else {
                  try {
                    final hasAccessToken = await storageHelper.hasAccessToken;
                    final isTokenExpired = await storageHelper.isTokenExpired;
                    if (hasAccessToken && isTokenExpired) {
                      final accessToken = await _refreshToken();
                      options.headers.addAll(
                        {
                          'Authorization': 'Bearer $accessToken',
                        },
                      );
                      authenticatedDio.fetch(options).then(
                        (r) => handler.resolve(r),
                        onError: (e) {
                          return handler.next(e);
                        },
                      );
                      return;
                    }
                    return handler.next(error);
                  } on DioError catch (e) {
                    return handler.next(e);
                  }
                }
              } else {
                return handler.next(error);
              }
            },
          ),
        ])
        ..httpClientAdapter = CustomHttpClientAdapter();
//https://api.getsyoujob.com/
//https://stagingapi.getsyouemployee.com/
  @Named('un-authenticated')
  @lazySingleton
  Dio get unauthenticatedDio => Dio(
        BaseOptions(
          // baseUrl: 'https://rknlws6b-7000.inc1.devtunnels.ms/',
          baseUrl: 'https://hardwarepasal.com/api/',
          // baseUrl: 'https://hardwarepasalapi.checkmysite.live/api/',
          receiveTimeout: 60000,
          connectTimeout: 60000,
          responseType: ResponseType.json,
          headers: <String, dynamic>{
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      )
        ..interceptors.addAll(
          [
            HttpFormatter(),
            LogInterceptor(),
            QueuedInterceptorsWrapper(
              onRequest: (options, handler) async {
                handler.next(options);
              },
            ),
          ],
        )
        ..httpClientAdapter = CustomHttpClientAdapter();

  Future<String> _refreshToken() async {
    final tokenDio = Dio()..options = unauthenticatedDio.options;
    try {
      final response = await tokenDio.post('/refresh-token');
      if (response.statusCode == 201) {
        final data = response.data['data'];
        await storageHelper.updateSession(
          accessToken: data['access_token'],
          refreshToken: data['refresh_token'],
          expiryTime: data['expires_in'],
        );
        return data['access_token'];
      } else {
        // await storageHelper.clearAll();
        router.replaceAll([const LoginRoute()]);
        return 'Unauthenticated';
        // throw AppException.fromDioError(DioError(requestOptions: response.requestOptions));
      }
    } on DioError catch (_) {
      // await storageHelper.clearAll();
      router.replaceAll([const LoginRoute()]);
      return 'Unauthenticated';
      // throw AppException.fromDioError(e);
    }
  }
}

class CustomHttpClientAdapter extends DefaultHttpClientAdapter {
  @override
  OnHttpClientCreate? onHttpClientCreate = (client) {
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  };
}
