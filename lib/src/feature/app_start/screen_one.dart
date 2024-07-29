import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';

import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double scWidth = size.width;
    final double scHeight = size.height;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: scWidth * 0.064),

        child: Column(
          children: [
            Image.asset(
              'asset/images/screenone.png',
              width: scWidth * 0.78,
              height: scHeight * 0.26,
            ),
            SizedBox(
              height: 0.078 * scHeight,
            ),
            Center(
              child: Texts(
                texts: 'Empowering DIY Dreams',
                textStyle: AppStyles.text24PxMedium,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: size.width,
              child: Texts(
                texts:
                    'Welcome to hardwarepasal.com, where you can explore a vast range of quality hardware tools and materials for your projects.',
                textAlign: TextAlign.center,
                textStyle: AppStyles.text14PxRegular.copyWith(
                  color: AppColor.textGrey,
                ),
              ),
            ),
            SizedBox(
              height: 0.059 * scHeight,
            ),
          ],
        ),
      ),
    );
  }
}
