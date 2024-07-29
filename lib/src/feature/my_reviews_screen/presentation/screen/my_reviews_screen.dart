import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/feature/my_reviews_screen/presentation/widgets/review_card.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../my_orders_screen/presentation/widgets/order_card.dart';

class MyReviewsScreenPage extends StatefulWidget {
  const MyReviewsScreenPage({super.key});

  @override
  State<MyReviewsScreenPage> createState() => _MyReviewsScreenPageState();
}

class _MyReviewsScreenPageState extends State<MyReviewsScreenPage> {
  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery.of(context).size.width;
    final scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.router.pop(),
          child: Padding(
            padding: EdgeInsets.only(left: 0.042 * scWidth),
            child: Image.asset(
              AssetsHelper.backBtn,
              color: AppColor.black,
            ),
          ),
        ),
        leadingWidth: 0.12 * scWidth,
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Texts(
              texts: 'My Reviews',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            Image.asset(
              AssetsHelper.cartBtn,
              width: 0.064 * scWidth,
              color: AppColor.black,
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
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                // shrinkWrap: true,
                itemBuilder: (context, index) => const ReviewCard(),
                separatorBuilder: (context, index) =>
                    SizedBox(height: 0.0194 * scHeight),
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
