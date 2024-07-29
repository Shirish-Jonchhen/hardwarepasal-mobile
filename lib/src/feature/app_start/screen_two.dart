import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';

import 'package:hardwarepasal/src/core/widgets/app_texts.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

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
              child: Image.asset('asset/images/screentwo.png'),
            ),
            SizedBox(
              height: 20.h,
            ),
            Container(
              width: size.width,
              child: Center(
                child: Texts(
                  texts: 'Get Quality Tools',
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
                    'We offer a wide range of high-quality tools, equipment, and supplies to help you bring your projects to life.',
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
