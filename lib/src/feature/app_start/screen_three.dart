import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: 300.h,
              color: Colors.white,
              child: Image.asset(
                'asset/images/screenthree.png',
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: size.width,
              child: Center(
                child: Texts(
                  texts: 'Professional Equipment',
                  textStyle: AppStyles.text20PxSemiBold,

                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            Container(
              width: size.width,
              child: Texts(
                texts:
                    'Our mission is to provide you with the finest selection of hardware, power tools, gardening equipment, safety gear, and more.',
                textAlign: TextAlign.center,
                textStyle: AppStyles.text14PxRegular,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
