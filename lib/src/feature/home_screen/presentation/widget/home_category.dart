import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';

import '../../../../core/themes/app_colors.dart';

class HomeCategory extends StatelessWidget {
  HomeCategory({super.key});

  List<Map<String, dynamic>> categories = [
    {
      'name': 'Free Delivery',
      'icon': Icons.delivery_dining,
      'color': Colors.greenAccent
    },
    {
      'name': 'Hot Deals',
      'icon': Icons.local_fire_department,
      'color': Colors.redAccent,
    },
    {
      'name': 'Sell With Us',
      'icon': Icons.label,
      'color': Colors.purpleAccent
    },
    {
      'name': 'New Arivals',
      'icon': Icons.arrow_circle_down,
      'color': Colors.blueAccent,
    },
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    double scWidth = MediaQuery.of(context).size.width;
    double scHeight = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 0.014* scWidth),
      padding: EdgeInsets.symmetric(horizontal: 0.026 * scWidth, vertical: 0.019 * scHeight),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.whiteColor,
      ),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 8.w,
          mainAxisSpacing: 8.h,
          childAspectRatio: 1.0,
        ),
        itemBuilder: (context, index) {
          return buildCategoryItem(categories[index], scHeight, scWidth);
        },
      ),
    );
  }

  Widget buildCategoryItem(Map<String, dynamic> category, double scHeight, double scWidth) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffFBFBFB),
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Color(0xFFF5F5F5),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0xffFBFBFB),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(8.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: category['color'],
              radius: 0.042 * scWidth,
              child: Icon(
                category['icon'],
                color: AppColor.whiteColor,
                size: 24.sp,
              ),
            ),
            SizedBox(height: 0.004 * scHeight),
            Texts(
              texts: category['name'],
              textStyle: AppStyles.text14PxRegular.copyWith(
                color: category['color'],
                fontSize: 10.sp,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,

            ),
          ],
        ),
      ),
    );
  }
}
