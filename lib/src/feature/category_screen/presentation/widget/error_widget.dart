import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../item_detail_screen/presentation/screen/item_detail_screen.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key, required this.message, required this.onTap});

  final String message;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: 0.1 * scHeight,
        ),
        Image.asset(
          message == "The server Detected this request as bot generated request."?
          AssetsHelper.botImg:
          message.toLowerCase() == "no internet connection"?
          AssetsHelper.noInternetImg:
          AssetsHelper.errorImg,

          color: AppColor.appColor,
          height: 0.5 * scWidth,
        ),
        SizedBox(
          height: 0.01 * scHeight,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.1 * scWidth),
          child: Center(
            child: Texts(
              texts: message,
              textAlign: TextAlign.center,
              textStyle: AppStyles.text14PxMedium.copyWith(
                color: AppColor.black,
              ),
            ),
          ),
        ),

        SizedBox(
          height: 0.03 * scHeight,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.1 * scWidth),
          child: AppButton(
            scWidth: scWidth,
            scHeight: scHeight,
            title: "Try Again",
            onTap: onTap,
          ),
        ),
        // Add more widgets here if needed
      ],
    );
  }
}
