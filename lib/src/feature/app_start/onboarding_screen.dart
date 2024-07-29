import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/widgets/app_button.dart';
import 'package:hardwarepasal/src/feature/app_start/screen_one.dart';
import 'package:hardwarepasal/src/feature/app_start/screen_three.dart';
import 'package:hardwarepasal/src/feature/app_start/screen_two.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/screen/home_screen.dart';
import 'package:hardwarepasal/src/feature/auth/presentation/screen/login_screen.dart';


class OnBoardingScreenPage extends StatefulWidget {
  const OnBoardingScreenPage({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenPageState createState() => _OnBoardingScreenPageState();
}

class _OnBoardingScreenPageState extends State<OnBoardingScreenPage> {
  final controller = PageController();
  bool isLastPage = false;
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper(storage).saveInitialAppOpen().then(
      (value) {
        controller.addListener(() {
          setState(() {
            currentPageIndex = controller.page!.round();
            isLastPage = currentPageIndex == 2;
          });
        });
      },
    );

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(
          top: 140.h,
        ),
        child: PageView(
          onPageChanged: (index) {
            setState(() {
              currentPageIndex = index;
              isLastPage = index == 2;
            });
          },
          controller: controller,
          children: [
            const ScreenOne(),
            const ScreenTwo(),
            const ScreenThree(),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 180.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildDot(currentPageIndex == 0),
                    const SizedBox(width: 8),
                    buildDot(currentPageIndex == 1),
                    const SizedBox(width: 8),
                    buildDot(currentPageIndex == 2),
                  ],
                ),
              ),
            ),
            isLastPage
                ? Padding(
                    padding: EdgeInsets.only(bottom: 60.0.h),
                    child: CustomButton(
                      title: 'Get Started',
                      onPressed: () => context.router.replace(const LoginScreenRoute()),
                          // context.router.push(const BottomNavigationRoute()),
                      width: 1.sw,
                      height: 50.h,
                      horizontal: 20.w,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomButton(
                          onPressed: () => controller.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut),
                          title: 'Next',
                          width: 1.sw,
                          height: 50.h,
                          horizontal: 20.w,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        CustomButton(
                            onPressed: () => controller.jumpToPage(2),
                            title: 'Skip',
                            width: 1.sw,
                            height: 50.h,
                            horizontal: 20.w,
                            textcolor: AppColor.appColor,
                            backgroundColor: AppColor.whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            )),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: isActive ? 10.w : 8.w,
      height: isActive ? 10.h : 8.h,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? AppColor.appColor : Colors.black26,
      ),
    );
  }
}
