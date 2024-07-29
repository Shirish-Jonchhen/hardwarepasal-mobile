import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/feature/my_reviews_screen/presentation/widgets/review_tile.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/dashed_line.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class ReviewCard extends StatelessWidget {
  const ReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0.042 * scWidth,
        vertical: 0.021 * scHeight,
      ),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: AppColor.greyButtonBorder,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          //item
          Row(children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(0.034 * scWidth),
                decoration: BoxDecoration(
                  color: AppColor.lightGreyBg,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: CachedNetworkImage(
                  height: 0.056 * scHeight,
                  width: 0.013 * scWidth,
                  imageUrl: StringHelper.coverImageBaseUrl,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      Image.asset(AssetsHelper.placeHolder),
                ),
              ),
            ),
            SizedBox(width: 0.053 * scWidth),
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts(
                    texts: 'Product Name',
                    textStyle: AppStyles.text14PxMedium,
                  ),
                  SizedBox(height: 0.013 * scHeight),
                  Texts(
                    texts: 'Order Date: April 25, 2024',
                    textStyle: AppStyles.text12PxRegular
                        .copyWith(color: const Color(0xff8c8c97)),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(height: 0.014 * scHeight),
          CustomPaint(
            size: Size(double.infinity, 1),
            painter: DashedLinePainter(
              dashWidth: 5,
              dashSpace: 5,
              color: AppColor.greyButtonBorder,
            ),
          ),
          SizedBox(height: 0.014 * scHeight),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
            child: Row(
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: AppColor.appColor,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: AppColor.appColor,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: AppColor.appColor,
                      size: 16,
                    ),
                    const Icon(
                      Icons.star,
                      color: AppColor.appColor,
                      size: 16,
                    ),
                    Texts(
                      texts: ' 4.0',
                      textStyle: AppStyles.text14PxRegular,
                    ),
                  ],
                ),
                const Spacer(),
                Texts(
                  texts: '3 weeks ago',
                  textStyle: AppStyles.text12PxRegular
                      .copyWith(color: AppColor.textGreyColor),
                ),
              ],
            ),
          ),
          SizedBox(height: 0.014 * scHeight),
          const ReviewTile(),

          //details
        ],
      ),
    );
  }
}
