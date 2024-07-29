import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/app/presentation/app.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';

import '../../../core/helpers/assets_helper.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_styles.dart';
import '../../../core/widgets/app_texts.dart';

AppBar customAppBar(
    {required bool needBackBtn, required String title, required BuildContext context}) {
  final double scWidth = MediaQuery
      .of(context)
      .size
      .width;
  final double scHeight = MediaQuery
      .of(context)
      .size
      .height;
  return AppBar(
    leading: needBackBtn ? InkWell(
      onTap: () => context.router.pop(),
      child: Padding(
        padding: EdgeInsets.only(left: 0.042 * scWidth),
        child: Image.asset(
          AssetsHelper.backBtn,
          color: AppColor.black,
        ),
      ),
    ) : null,
    leadingWidth: 0.12 * scWidth,
    backgroundColor: AppColor.whiteColor,
    surfaceTintColor: AppColor.whiteColor,
    title: Row(
      // mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Texts(
          texts: title,
          textStyle: AppStyles.text18PxRegular,
        ),
        const Spacer(),
        InkWell(
          onTap: () => context.router.push(const CartScreenRoute()),
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
      ],
    ),
  );
}

// class CustomAppBar extends StatelessWidget {
//   const CustomAppBar({super.key, required this.needBackBtn, required this.title});
//   final bool needBackBtn;
//   final String title;
//
//
//   @override
//   Widget build(BuildContext context) {
//     final double scWidth = MediaQuery.of(context).size.width;
//     final double scHeight = MediaQuery.of(context).size.height;
//
//
//   }
// }
