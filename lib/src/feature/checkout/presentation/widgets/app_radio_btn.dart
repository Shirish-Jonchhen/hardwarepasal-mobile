import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class AppRadioBtn extends StatelessWidget {
  const AppRadioBtn({super.key, required this.isSelected, required this.value, required this.groupValue, required this.label, required this.onChange
  });
  final bool isSelected;
  final String label;
  final String value;
  final String groupValue;
  final void Function(String?) onChange;

  @override
  Widget build(BuildContext context) {
    final double scHeight = MediaQuery.of(context).size.height;
    final double scWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        color: isSelected?AppColor.appColor.withOpacity(0.08): AppColor.transparent,
        border: Border.all(
          color: isSelected?AppColor.appColor: AppColor.borderGrey,
          width: 0.5,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: 0.016 * scHeight),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              activeColor: AppColor.appColor,
              value: value,
              groupValue: groupValue,
              onChanged: onChange,
            ),
            SizedBox(
              width: 0.015 * scWidth,
            ),
            Texts(
              texts: "Cash on Delivery",
              textStyle: AppStyles.text14PxRegular.copyWith(
                color: (isSelected)
                    ? AppColor.appColor
                    : AppColor.textGreyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
