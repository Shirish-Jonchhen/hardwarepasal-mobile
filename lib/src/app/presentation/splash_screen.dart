import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';

import 'package:hardwarepasal/src/feature/app_start/onboarding_screen.dart';

import '../../core/helpers/storage_helper.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {


  @override
  void initState() {
    // TODO: implement initState
    runStartupLogic();
    super.initState();
  }

  void runStartupLogic() async {

    Future.delayed(const Duration(seconds: 5)).then((value) {
      FlutterSecureStorage storage = const FlutterSecureStorage();
      StorageHelper storageHelper = StorageHelper(storage);

      storageHelper.hasInitiallyOpened.then((value) {
        print("INITIALLY OPENED");
        print(value);
        if (value) {
          storageHelper.hasAccessToken.then((value){
            print("hasAcessToken");
            print(value);
            if(value){
              context.router.replace(const BottomNavigationRoute());
            }else{
              context.router.replace(const LoginScreenRoute());
            }
          });
        }else{
          storageHelper.hasAccessToken.then((value){
            print("hasAcessToken");
            print(value);
            });
          context.router.replace(const OnBoardingScreenRoute());
        }
      });

    },);
  }

  @override
  Widget build(BuildContext context) {

    return buildBody();
  }

  Widget buildBody() {
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: Container(
        child: Stack(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 63.w),
                child: Image.asset('asset/images/logo.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
