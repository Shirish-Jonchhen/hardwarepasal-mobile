import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {


  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Container(
      height: 34.h,
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
      ).copyWith(top: 60.h),
      child: Row(
        children: [
          Image.asset(
            'asset/images/logo.png',
            width: 130.w,
            height: 28.h,
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              context.router.push(const CartScreenRoute());
              // Navigator.pushNamed(context, Routes.searchScreen);
            },
            child: Image.asset(
              AssetsHelper.cartBtn,
              width: 0.064 * scWidth,
              color: AppColor.black,
            ),
          ),
          SizedBox(
            width: 0.026 * scWidth,
          ),
          Image.asset(
            AssetsHelper.notificationBtn,
            width: 0.064 * scWidth,
            color: AppColor.black,
          ),
          // Icon(
          //   Icons.notifications_none_outlined,
          //   color: AppColor.appColor,
          //   size: 28.sp,
          // ),
        ],
      ),
    );
  }
}
