import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class ReviewTile extends StatefulWidget {
  const ReviewTile({super.key});

  @override
  State<ReviewTile> createState() => _ReviewTileState();
}

class _ReviewTileState extends State<ReviewTile> {

  double _rotationAngle = 1.57;


  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 0.002 * scWidth,
        vertical: 0.002 * scWidth,
      ),
      decoration: BoxDecoration(
        color: AppColor.lightGreyBg,
        borderRadius: BorderRadius.circular(4),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            onExpansionChanged: (value) {
              print(value);
              setState(() {
                _rotationAngle = value ? 1.57*3 : 1.57;
              });
            },
            trailing: Transform.rotate(
              angle: _rotationAngle,
              child:Image.asset(
                AssetsHelper.rightArrow,
                width: 0.042 * scWidth,
              ),
            ),
            collapsedBackgroundColor: AppColor.lightGreyBg,
            backgroundColor: AppColor.lightGreyBg,
            title: Texts(
              texts: 'Review',
              textStyle: AppStyles.text12PxRegular
                  .copyWith(color: const Color(0xff8c8c97)),
            ),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: 0.042 * scWidth,
                    right: 0.042 * scWidth,
                    bottom: 0.042 * scWidth),
                child: Texts(
                  texts:
                  'Review: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec purus feugiat, vestibulum nunc sit amet, ultrices felis. Nullam ac nisi',
                  textStyle: AppStyles.text12PxRegular.copyWith(
                    fontWeight: FontWeight.w300,
                    color: AppColor.textGreyColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
