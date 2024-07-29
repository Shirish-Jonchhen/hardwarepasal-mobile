import 'package:flutter/material.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';

class AppPaymentCard extends StatelessWidget {
  const AppPaymentCard({super.key, required this.isSelected, required this.onTap, required this.imageUrl});
  final bool isSelected;
  final void Function() onTap;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 0.013 * scHeight,
        ),
        decoration: BoxDecoration(
          color: isSelected?  AppColor.appColor.withOpacity(0.08): AppColor.whiteColor ,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected?  AppColor.appColor: AppColor.borderGrey,
            width: 0.5,
          ),
        ),
        child: Center(
          child: Container(
            color: Colors.transparent,
            height: 0.075 * scHeight,
            width: 0.28 * scWidth,
            child: Image.asset(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
