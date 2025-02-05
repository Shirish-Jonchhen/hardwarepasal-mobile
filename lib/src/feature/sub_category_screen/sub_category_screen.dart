import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/category_screen/data/model/category_model/category_model.dart';
import 'package:shimmer/shimmer.dart';

import '../../core/helpers/assets_helper.dart';
import '../../core/helpers/string_helper.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';
import '../../core/widgets/app_texts.dart';

class SubCategoryScreenPage extends StatefulWidget {
  const SubCategoryScreenPage({super.key, required this.categoryItemModel});
  final CategoryItemModel categoryItemModel;

  @override
  State<SubCategoryScreenPage> createState() => _SubCategoryScreenPageState();
}

class _SubCategoryScreenPageState extends State<SubCategoryScreenPage> {

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
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
              texts: widget.categoryItemModel.name!,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 0.024 * scHeight,
              ),
              ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  // physics: AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        print(widget.categoryItemModel);
                        context.router.push(
                          CategoryLevel3ScreenRoute(
                            slug: widget.categoryItemModel.sub_categories![index].slug!,
                          ),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(0.03 * scWidth),
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          children: [
                            Container(
                          height: 0.08 * scWidth,
                          width: 0.08 * scWidth,
                          decoration: BoxDecoration(
                            // color: AppColor.appColor.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: CachedNetworkImage(
                              imageUrl:
                              '${StringHelper.productCategoryImageBastUrl}${widget.categoryItemModel.sub_categories![index].icon}',
                              // placeholder: (context, url) =>
                              placeholder: (context, url) =>
                              const Shimmer(child: Icon(Icons.downloading_outlined) , gradient: LinearGradient(colors: [Colors.grey, Colors.white])),
                        errorWidget: (context, url, error) =>
                            Image.asset(AssetsHelper.placeHolder),
                            ),
                            // child: Image.asset(
                            //   AssetsHelper.categoryIcon,
                            //   height: 0.042 * scWidth,
                            //   width: 0.042 * scWidth,
                            //   color: AppColor.appColor,
                            // ),
                          ),
                        ),
                        SizedBox(
                          width: 0.042 * scWidth,
                        ),
                            Texts(
                              texts: widget.categoryItemModel.sub_categories![index].name!,
                              textStyle: AppStyles.text14PxMedium.copyWith(
                                color: const Color(0xff545464),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                              AssetsHelper.rightArrow,
                              height: 0.053 * scWidth,
                              width: 0.053 * scWidth,
                              // color: AppColor.black,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 0.009 * scHeight,
                    );
                  },
                  itemCount: widget.categoryItemModel.sub_categories!.length),
              SizedBox(
                height: 0.024 * scHeight,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
