import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/helpers/date_time_helper.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/dashed_line.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key, required this.productName, required this.orderDate, required this.orderStatus, required this.quantity, required this.price});
  final String productName;
  final String orderDate;
  final String orderStatus;
  final String quantity;
  final String price;

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
          Row(
              children:[
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
                      imageUrl:
                      StringHelper.coverImageBaseUrl,
                      placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          Image.asset( AssetsHelper.placeHolder),
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
                        texts: productName,
                        textStyle: AppStyles.text14PxMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 0.013 * scHeight),
                      Texts(
                        texts: 'Order Date: ${DateTimeHelper.dateFormatMMMMDDYYYY(orderDate)}',
                        textStyle: AppStyles.text12PxRegular
                            .copyWith(color: const Color(0xff8c8c97)),
                      ),
                    ],
                  ),
                ),
              ]
          ),
          SizedBox(height: 0.014 * scHeight),
          CustomPaint(
            size: Size(double.infinity,1),
            painter: DashedLinePainter(
              dashWidth: 5,
              dashSpace: 5,
              color: AppColor.greyButtonBorder,
            ),
          ),
          SizedBox(height: 0.014 * scHeight),
          Row(
            children: [
              Texts(
                texts: 'Order Status',
                textStyle: AppStyles.text12PxRegular
                    .copyWith(color: const Color(0xff8c8c97)),
              ),
              const Spacer(),
              Texts(
                texts: orderStatus,
                textStyle: AppStyles.text12PxRegular
                    .copyWith(color: const Color(0xff8948FF)),
              ),
            ],
          ),
          SizedBox(height: 0.014 * scHeight),
          Row(
            children: [
              Texts(
                texts: 'Items',
                textStyle: AppStyles.text12PxRegular
                    .copyWith(color: const Color(0xff8c8c97)),
              ),
              const Spacer(),
              Texts(
                texts: '$quantity Items Purchased',
                textStyle: AppStyles.text12PxRegular
                    .copyWith(color: const Color(0xff8c8c97)),
              ),
            ],
          ),
          SizedBox(height: 0.014 * scHeight),
          Row(
            children: [
              Texts(
                texts: 'Price',
                textStyle: AppStyles.text12PxRegular
                    .copyWith(color: const Color(0xff8c8c97)),
              ),
              const Spacer(),
              Texts(
                texts: 'Rs. ${double.parse(price) * double.parse(quantity)}',
                textStyle: AppStyles.text12PxBold
                    .copyWith(color: AppColor.appColor),
              ),
            ],
          ),
          //details
        ],
      ),
    );
  }
}
