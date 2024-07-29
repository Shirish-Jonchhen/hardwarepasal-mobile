import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';

import '../../core/helpers/assets_helper.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';
import '../../core/widgets/app_texts.dart';

class NotificationScreenPage extends StatefulWidget {
  const NotificationScreenPage({super.key});

  @override
  State<NotificationScreenPage> createState() => _NotificationScreenPageState();
}

class _NotificationScreenPageState extends State<NotificationScreenPage> {
  List<Map<String, dynamic>> notificaitonList = [
    {
      'time': '2:00 PM',
      'success': true,
    },
    {
      'time': '1:54 PM',
      'success': false,
    }, {
      'time': '1:28 PM',
      'success': false,
    }, {
      'time': '12:50 PM',
      'success': true,
    }, {
      'time': '12:22 PM',
      'success': true,
    }, {
      'time': '12:10 PM',
      'success': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        toolbarHeight: 0.073 * scHeight,
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
              texts: 'Notification',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            InkWell(
              onTap: () => context.router.push(const CartScreenRoute()),
              child: Image.asset(
                AssetsHelper.cartBtn,
                width: 0.064 * scWidth,
                height: 0.064 * scWidth,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              width: 0.026 * scWidth,
            ),
            InkWell(
              onTap: () => context.router.push(const NotificationScreenRoute()),
              child: Image.asset(
                AssetsHelper.notificationBtn,
                width: 0.064 * scWidth,
                height: 0.064 * scWidth,
                color: AppColor.appColor,
              ),
            ),
            SizedBox(
              width: 0.042 * scWidth,
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Divider(),
          SizedBox(
            height: 0.013 * scHeight,
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: notificaitonList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(0.015 * scWidth),
                child: ListTile(
                  leading: Container(
                    height: 0.128 * scWidth,
                    width: 0.128 * scWidth,
                    decoration: BoxDecoration(
                      color: notificaitonList[index]['success']
                          ? AppColor.successBgColor
                          : AppColor.errorBgColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      notificaitonList[index]['success']
                          ? Icons.check_circle
                          : Icons.remove_circle_sharp,
                      color: notificaitonList[index]['success']
                          ? AppColor.successColor
                          : AppColor.errorColor,
                    ),

                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Texts(
                        texts: notificaitonList[index]['success']
                            ? 'Order Success'
                            : 'Unsuccessful',
                        textStyle: AppStyles.text16PxMedium.copyWith(
                          color: AppColor.textDarkColor,
                        ),
                      ),
                      Texts(
                        texts: notificaitonList[index]['success']
                            ? 'Your order delivered successfully. Thank you for shopping with us.'
                            : 'Your order was not delivered. Please contact us for more information.',
                        textStyle: AppStyles.text12PxRegular.copyWith(
                          color: AppColor.greyButtonText,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  trailing: Texts(
                    texts: notificaitonList[index]['time'],
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
