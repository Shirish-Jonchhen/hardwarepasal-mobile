import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class MyOrderCard extends StatelessWidget {
  const MyOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0.053 * scWidth,
        vertical: 0.008 * scHeight,
      ),
      decoration: BoxDecoration(
        color: AppColor.appColor,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Texts(
        texts: 'Shipping',
        textStyle: AppStyles.text14PxRegular
            .copyWith(color: AppColor.whiteColor),
      ),
    );
  }
}
