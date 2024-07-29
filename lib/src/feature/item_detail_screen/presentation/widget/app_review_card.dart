import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/helpers/date_time_helper.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/product_review_model/product_review_model.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class AppReviewCard extends StatelessWidget {
  const AppReviewCard({super.key, required this.reviewModel});
  final ProductReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    final double scHeight = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: AppColor.appColor,
                  size: 11,
                ),
                const Icon(
                  Icons.star,
                  color: AppColor.appColor,
                  size: 11,
                ),
                const Icon(
                  Icons.star,
                  color: AppColor.appColor,
                  size: 11,
                ),
                const Icon(
                  Icons.star,
                  color: AppColor.appColor,
                  size: 11,
                ),
                Texts(
                  texts: " " + reviewModel.stars.toString(),
                  textStyle: AppStyles.text12PxRegular
                      .copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Texts(
              texts: DateTimeHelper.timeAgo(reviewModel.created_at.toString()),
              textStyle:
              AppStyles.text12PxRegular.copyWith(
                color: AppColor.textGrey,
                fontSize: 10,
              ),
            )
          ],
        ),
        SizedBox(
          height: 0.009 * scHeight,
        ),
        Texts(
          texts: reviewModel.user_id.toString(),
          textStyle:
          AppStyles.text12PxRegular.copyWith(
            color: AppColor.appColor,
          ),
        ),
        SizedBox(
          height: 0.012 * scHeight,
        ),
        Texts(
          texts:
          reviewModel.description.toString(),
          textStyle: AppStyles.text12PxRegular
              .copyWith(
              color: AppColor.textGrey
                  .withOpacity(0.7),
              fontWeight: FontWeight.w300),
        ),
      ],
    );
  }
}
