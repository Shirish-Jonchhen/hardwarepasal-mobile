import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../data/models/banner_model/banner_model.dart';
import 'home_banner.dart';
import 'home_category.dart';

class HomeShimmer extends StatefulWidget {

  const HomeShimmer({super.key});

  @override
  State<HomeShimmer> createState() => _HomeShimmerState();
}

class _HomeShimmerState extends State<HomeShimmer> {
  List<String> categories = [
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",
    "Loading..",

  ];

  List<Icon> categoryIcons = [
    Icon(
      Icons.ac_unit_outlined,
      color: AppColor.appColor,
    ),
    Icon(Icons.access_time, color: AppColor.appColor),
    Icon(Icons.account_balance, color: AppColor.appColor),
    Icon(Icons.account_tree, color: AppColor.appColor),
  ];

  List<String> apCategory = ["All Products", "Power", "Heater", "Electrical"];

  List<IconData> apIcons = [
    Icons.stars_outlined,
    Icons.offline_bolt_outlined,
    Icons.heat_pump_outlined,
    Icons.electric_meter_outlined,
  ];

  List<List<Color>> apColors = [
    [
      Color(0xffF6982B),
      Color(0xffFFF1E2),
    ],
    [
      Color(0xffF8644A),
      Color(0xffFFE9E5),
    ],
    [
      Color(0xffAE80FF),
      Color(0xffF3EFFA),
    ],
    [
      Color(0xff1BADFF),
      Color(0xffD2EFFF),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(
              bannerModel: BannerModel(),
            ),

            HomeCategory(),
            SizedBox(
              height: 0.019 * scHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: scWidth * 0.013),
              child: Column(
                children: [
                  //categories
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),

                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: scWidth * 0.029),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.029 * scHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Texts(
                                texts: 'Categories',
                                textStyle: AppStyles.text14PxMedium,
                              ),
                              Texts(
                                texts: 'See All',
                                textStyle: AppStyles.text12PxRegular.copyWith(
                                  color: AppColor.appColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.appColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.024 * scHeight,
                          ),
                          SizedBox(
                              height: 0.226 * scHeight,
                              child: GridView.builder(
                                itemCount: categories.length,
                                scrollDirection: Axis.horizontal,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  // mainAxisSpacing: 0.0 * scWidth,
                                  crossAxisSpacing: 0.019 * scHeight,
                                ),
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0.03 * scWidth),
                                    child: Column(
                                      children: [
                                        //icon
                                        Container(
                                          height: 0.128 * scWidth,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            // color: AppColor.transparent,


                                            color: AppColor.appColor
                                                .withOpacity(0.1),
                                            borderRadius:
                                            BorderRadius.circular(10),
                                          ),
                                          child: categoryIcons[(index <
                                              categoryIcons.length)
                                              ? index
                                              : index % categoryIcons.length],
                                        ),
                                        SizedBox(
                                          height: 0.01 * scHeight,
                                        ),
                                        Texts(
                                          texts: categories[index],
                                          textAlign: TextAlign.center,
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                            fontSize: 10,
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              )),
                          SizedBox(
                            height: 0.022 * scHeight,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),

                  //banner 2
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: scWidth * 0.012),
                    child: Container(
                      // height: 0.21 * scHeight,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.appColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 0.035 * scHeight,
                                  horizontal: 0.042 * scWidth),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    AssetsHelper.sthlLogo,
                                    height: 0.02 * scHeight,
                                  ),
                                  SizedBox(
                                    height: 0.015 * scHeight,
                                  ),
                                  Texts(
                                    texts: 'New Arrivals',
                                    textStyle:
                                    AppStyles.text18PxSemiBold.copyWith(
                                      color: AppColor.transparent,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.004 * scHeight,
                                  ),
                                  Texts(
                                    texts: 'Up to 11% off',
                                    textStyle:
                                    AppStyles.text12PxRegular.copyWith(
                                      color: AppColor.transparent,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.009 * scHeight,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Texts(
                                      texts: "Shop Now",
                                      textStyle:
                                      AppStyles.text14PxRegular.copyWith(
                                        color: AppColor.appColor,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Image.asset(
                              AssetsHelper.banner2,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 0.014 * scHeight,
                  ),

                  //shop by brands
                  Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),

                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: scWidth * 0.029),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0.029 * scHeight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Texts(
                                  texts: 'Shop by Brands',
                                  textStyle: AppStyles.text14PxMedium,
                                ),
                                Texts(
                                  texts: 'See All',
                                  textStyle: AppStyles.text12PxRegular.copyWith(
                                    color: AppColor.appColor,
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColor.appColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.024 * scHeight,
                            ),
                            SizedBox(
                              height: 0.2 * scHeight,
                              child: GridView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 15,
                                gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 0.018 * scWidth,
                                  crossAxisSpacing: 0.024 * scHeight,
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                    width: 0.157 * scWidth,
                                    // height: 0.086 * scHeight,
                                    decoration: BoxDecoration(
                                      // color: AppColor.appColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.014 * scWidth),
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 0.128 * scWidth,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: AppColor.textGrey
                                                      .withOpacity(0.1),
                                                  spreadRadius: 0,
                                                  blurRadius: 3,
                                                  offset: const Offset(0, 1),
                                                ),
                                              ],
                                              // color: AppColor.appColor.withOpacity(0.1),
                                              borderRadius:
                                              BorderRadius.circular(10),
                                            ),
                                            child: Image.asset(
                                              (index % 2 == 0)
                                                  ? AssetsHelper.sansungLogo
                                                  : AssetsHelper.bekoLogo,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.01 * scHeight,
                                          ),
                                          Texts(
                                            texts: 'Brand $index',
                                            textAlign: TextAlign.center,
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              fontSize: 10,
                                            ),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 0.022 * scHeight,
                            )
                          ],
                        ),
                      )),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),

                  //featured products
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: scWidth * 0.029),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.029 * scHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Texts(
                                texts: 'Featured Products',
                                textStyle: AppStyles.text14PxMedium,
                              ),
                              Texts(
                                texts: 'See All',
                                textStyle: AppStyles.text12PxRegular.copyWith(
                                  color: AppColor.appColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.appColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.024 * scHeight,
                          ),
                          SizedBox(
                            height: 0.3 * scHeight,
                            child: PageView.builder(
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColor.scaffoldBg,
                                            width: 1,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 0.018 * scHeight),

                                            //image
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.049 * scWidth),
                                              child: Container(
                                                width: double.infinity,
                                                height: 0.31 * scWidth,
                                                color: AppColor.appColor.withOpacity(0),
                                                child: Center(
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                    '',
                                                    placeholder: (context, url) =>
                                                    const CircularProgressIndicator(),
                                                    errorWidget: (context, url, error) =>
                                                        Image.asset( AssetsHelper.placeHolder),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              height: 0.009 * scHeight,
                                            ),

                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  //rating
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 11,
                                                      ),
                                                      Texts(
                                                        texts: "4.1/5 (71)",
                                                        textStyle: AppStyles.text12PxRegular
                                                            .copyWith(color: AppColor.greyButtonText, fontSize: 10),
                                                      )
                                                    ],
                                                  ),

                                                  //name
                                                  Texts(
                                                    texts: 'Product Name',
                                                    textStyle: AppStyles.text12PxMedium,
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),

                                                  SizedBox(
                                                    height: 0.004 * scHeight,
                                                  ),

                                                  //

                                                  Row(
                                                    children: [
                                                      Texts(
                                                        texts: 'Rs. N/A}',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          color: AppColor.appColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 0.01 * scWidth,
                                                      ),
                                                      Texts(
                                                        texts: ' Rs. ' '} ',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          // color: AppColor.appColor,
                                                          decoration: TextDecoration.lineThrough,
                                                          decorationColor: AppColor.greyButtonText,
                                                          decorationThickness: 2,
                                                          color: AppColor.greyButtonText,
                                                          fontSize: 8.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: 0.012 * scHeight,
                                                  ),

                                                  //button
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: double.infinity,
                                                      // height: 0.036 * scHeight,
                                                      decoration: BoxDecoration(
                                                        // color: AppColor.appColor,
                                                        borderRadius: BorderRadius.circular(4),
                                                        border: Border.all(
                                                          color: AppColor.greyButtonBorder,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 0.089 * scWidth,
                                                            vertical: 0.009 * scHeight),
                                                        child: Center(
                                                          child: Row(
                                                            children: [
                                                              Texts(
                                                                texts: 'Add to Cart',
                                                                textStyle: AppStyles.text12PxRegular.copyWith(
                                                                  color: AppColor.greyButtonText,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 0.01 * scWidth,
                                                              ),
                                                              const Icon(
                                                                Icons.shopping_bag_outlined,
                                                                color: AppColor.greyButtonText,
                                                                size: 9,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.021 * scWidth,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColor.scaffoldBg,
                                            width: 1,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 0.018 * scHeight),

                                            //image
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.049 * scWidth),
                                              child: Container(
                                                width: double.infinity,
                                                height: 0.31 * scWidth,
                                                color: AppColor.appColor.withOpacity(0),
                                                child: Center(
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                    '',
                                                    placeholder: (context, url) =>
                                                    const CircularProgressIndicator(),
                                                    errorWidget: (context, url, error) =>
                                                        Image.asset( AssetsHelper.placeHolder),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              height: 0.009 * scHeight,
                                            ),

                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  //rating
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 11,
                                                      ),
                                                      Texts(
                                                        texts: "4.1/5 (71)",
                                                        textStyle: AppStyles.text12PxRegular
                                                            .copyWith(color: AppColor.greyButtonText, fontSize: 10),
                                                      )
                                                    ],
                                                  ),

                                                  //name
                                                  Texts(
                                                    texts: 'Product Name',
                                                    textStyle: AppStyles.text12PxMedium,
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),

                                                  SizedBox(
                                                    height: 0.004 * scHeight,
                                                  ),

                                                  //

                                                  Row(
                                                    children: [
                                                      Texts(
                                                        texts: 'Rs. N/A}',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          color: AppColor.appColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 0.01 * scWidth,
                                                      ),
                                                      Texts(
                                                        texts: ' Rs. ' '} ',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          // color: AppColor.appColor,
                                                          decoration: TextDecoration.lineThrough,
                                                          decorationColor: AppColor.greyButtonText,
                                                          decorationThickness: 2,
                                                          color: AppColor.greyButtonText,
                                                          fontSize: 8.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: 0.012 * scHeight,
                                                  ),

                                                  //button
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: double.infinity,
                                                      // height: 0.036 * scHeight,
                                                      decoration: BoxDecoration(
                                                        // color: AppColor.appColor,
                                                        borderRadius: BorderRadius.circular(4),
                                                        border: Border.all(
                                                          color: AppColor.greyButtonBorder,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 0.089 * scWidth,
                                                            vertical: 0.009 * scHeight),
                                                        child: Center(
                                                          child: Row(
                                                            children: [
                                                              Texts(
                                                                texts: 'Add to Cart',
                                                                textStyle: AppStyles.text12PxRegular.copyWith(
                                                                  color: AppColor.greyButtonText,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 0.01 * scWidth,
                                                              ),
                                                              const Icon(
                                                                Icons.shopping_bag_outlined,
                                                                color: AppColor.greyButtonText,
                                                                size: 9,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 0.011 * scHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildDot(true),
                              const SizedBox(width: 8),
                              buildDot(false),
                              const SizedBox(width: 8),
                              buildDot(false),
                            ],
                          ),
                          SizedBox(
                            height: 0.029 * scHeight,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),

                  //Recently viewed
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: scWidth * 0.029),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 0.029 * scHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Texts(
                                texts: 'Recently Viewed',
                                textStyle: AppStyles.text14PxMedium,
                              ),
                              Texts(
                                texts: 'See All',
                                textStyle: AppStyles.text12PxRegular.copyWith(
                                  color: AppColor.appColor,
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.appColor,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.024 * scHeight,
                          ),
                          SizedBox(
                            height: 0.3 * scHeight,
                            child: PageView.builder(
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColor.scaffoldBg,
                                            width: 1,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 0.018 * scHeight),

                                            //image
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.049 * scWidth),
                                              child: Container(
                                                width: double.infinity,
                                                height: 0.31 * scWidth,
                                                color: AppColor.appColor.withOpacity(0),
                                                child: Center(
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                    '',
                                                    placeholder: (context, url) =>
                                                    const CircularProgressIndicator(),
                                                    errorWidget: (context, url, error) =>
                                                        Image.asset( AssetsHelper.placeHolder),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              height: 0.009 * scHeight,
                                            ),

                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  //rating
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 11,
                                                      ),
                                                      Texts(
                                                        texts: "4.1/5 (71)",
                                                        textStyle: AppStyles.text12PxRegular
                                                            .copyWith(color: AppColor.greyButtonText, fontSize: 10),
                                                      )
                                                    ],
                                                  ),

                                                  //name
                                                  Texts(
                                                    texts: 'Product Name',
                                                    textStyle: AppStyles.text12PxMedium,
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),

                                                  SizedBox(
                                                    height: 0.004 * scHeight,
                                                  ),

                                                  //

                                                  Row(
                                                    children: [
                                                      Texts(
                                                        texts: 'Rs. N/A}',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          color: AppColor.appColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 0.01 * scWidth,
                                                      ),
                                                      Texts(
                                                        texts: ' Rs. ' '} ',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          // color: AppColor.appColor,
                                                          decoration: TextDecoration.lineThrough,
                                                          decorationColor: AppColor.greyButtonText,
                                                          decorationThickness: 2,
                                                          color: AppColor.greyButtonText,
                                                          fontSize: 8.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: 0.012 * scHeight,
                                                  ),

                                                  //button
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: double.infinity,
                                                      // height: 0.036 * scHeight,
                                                      decoration: BoxDecoration(
                                                        // color: AppColor.appColor,
                                                        borderRadius: BorderRadius.circular(4),
                                                        border: Border.all(
                                                          color: AppColor.greyButtonBorder,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 0.089 * scWidth,
                                                            vertical: 0.009 * scHeight),
                                                        child: Center(
                                                          child: Row(
                                                            children: [
                                                              Texts(
                                                                texts: 'Add to Cart',
                                                                textStyle: AppStyles.text12PxRegular.copyWith(
                                                                  color: AppColor.greyButtonText,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 0.01 * scWidth,
                                                              ),
                                                              const Icon(
                                                                Icons.shopping_bag_outlined,
                                                                color: AppColor.greyButtonText,
                                                                size: 9,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.021 * scWidth,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: AppColor.scaffoldBg,
                                            width: 1,
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            SizedBox(height: 0.018 * scHeight),

                                            //image
                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.049 * scWidth),
                                              child: Container(
                                                width: double.infinity,
                                                height: 0.31 * scWidth,
                                                color: AppColor.appColor.withOpacity(0),
                                                child: Center(
                                                  child: CachedNetworkImage(
                                                    imageUrl:
                                                    '',
                                                    placeholder: (context, url) =>
                                                    const CircularProgressIndicator(),
                                                    errorWidget: (context, url, error) =>
                                                        Image.asset( AssetsHelper.placeHolder),
                                                  ),
                                                ),
                                              ),
                                            ),

                                            SizedBox(
                                              height: 0.009 * scHeight,
                                            ),

                                            Padding(
                                              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  //rating
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        Icons.star,
                                                        color: Colors.yellow,
                                                        size: 11,
                                                      ),
                                                      Texts(
                                                        texts: "4.1/5 (71)",
                                                        textStyle: AppStyles.text12PxRegular
                                                            .copyWith(color: AppColor.greyButtonText, fontSize: 10),
                                                      )
                                                    ],
                                                  ),

                                                  //name
                                                  Texts(
                                                    texts: 'Product Name',
                                                    textStyle: AppStyles.text12PxMedium,
                                                    maxLines: 1,
                                                    overflow: TextOverflow.ellipsis,
                                                  ),

                                                  SizedBox(
                                                    height: 0.004 * scHeight,
                                                  ),

                                                  //

                                                  Row(
                                                    children: [
                                                      Texts(
                                                        texts: 'Rs. N/A}',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          color: AppColor.appColor,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 0.01 * scWidth,
                                                      ),
                                                      Texts(
                                                        texts: ' Rs. ' '} ',
                                                        textStyle: AppStyles.text12PxBold.copyWith(
                                                          // color: AppColor.appColor,
                                                          decoration: TextDecoration.lineThrough,
                                                          decorationColor: AppColor.greyButtonText,
                                                          decorationThickness: 2,
                                                          color: AppColor.greyButtonText,
                                                          fontSize: 8.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),

                                                  SizedBox(
                                                    height: 0.012 * scHeight,
                                                  ),

                                                  //button
                                                  InkWell(
                                                    onTap: () {},
                                                    child: Container(
                                                      width: double.infinity,
                                                      // height: 0.036 * scHeight,
                                                      decoration: BoxDecoration(
                                                        // color: AppColor.appColor,
                                                        borderRadius: BorderRadius.circular(4),
                                                        border: Border.all(
                                                          color: AppColor.greyButtonBorder,
                                                          width: 1,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal: 0.089 * scWidth,
                                                            vertical: 0.009 * scHeight),
                                                        child: Center(
                                                          child: Row(
                                                            children: [
                                                              Texts(
                                                                texts: 'Add to Cart',
                                                                textStyle: AppStyles.text12PxRegular.copyWith(
                                                                  color: AppColor.greyButtonText,
                                                                  fontSize: 10,
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 0.01 * scWidth,
                                                              ),
                                                              const Icon(
                                                                Icons.shopping_bag_outlined,
                                                                color: AppColor.greyButtonText,
                                                                size: 9,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: 0.011 * scHeight,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              buildDot(true),
                              const SizedBox(width: 8),
                              buildDot(false),
                              const SizedBox(width: 8),
                              buildDot(false),
                            ],
                          ),
                          SizedBox(
                            height: 0.029 * scHeight,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(

                gradient: const LinearGradient(
                  colors: [
                    AppColor.transparent,
                    AppColor.scaffoldBg,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: scWidth * 0.042),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 0.029 * scHeight,
                    ),
                    Texts(
                      texts: 'All products',
                      textStyle: AppStyles.text14PxMedium,
                    ),
                    SizedBox(
                      height: 0.1 * scHeight,
                      width: scWidth,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: apCategory.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(0.04 * scWidth),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Column(children: [
                                CircleAvatar(
                                  radius: 0.042 * scWidth,
                                  backgroundColor: apColors[index][1],
                                  child: Icon(
                                    apIcons[index],
                                    color: apColors[index][0],
                                    size: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: 0.006 * scHeight,
                                ),
                                Texts(
                                  texts: apCategory[index],
                                  textStyle: AppStyles.text12PxRegular.copyWith(
                                      fontSize: 10, color: apColors[index][0]),
                                )
                              ]),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 0.021 * scWidth,
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      height: 0.024 * scHeight,
                    ),
                    GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 0.021 * scWidth,
                        mainAxisSpacing: 0.021 * scHeight,
                        childAspectRatio: scWidth/ scHeight * 1.5,
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColor.scaffoldBg,
                              width: 1,
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 0.018 * scHeight),

                              //image
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.049 * scWidth),
                                child: Container(
                                  width: double.infinity,
                                  height: 0.31 * scWidth,
                                  color: AppColor.appColor.withOpacity(0),
                                  child: Center(
                                    child: CachedNetworkImage(
                                      imageUrl:
                                      '',
                                      placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset( AssetsHelper.placeHolder),
                                    ),
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 0.009 * scHeight,
                              ),

                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //rating
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 11,
                                        ),
                                        Texts(
                                          texts: "4.1/5 (71)",
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(color: AppColor.greyButtonText, fontSize: 10),
                                        )
                                      ],
                                    ),

                                    //name
                                    Texts(
                                      texts: 'Product Name',
                                      textStyle: AppStyles.text12PxMedium,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),

                                    SizedBox(
                                      height: 0.004 * scHeight,
                                    ),

                                    //

                                    Row(
                                      children: [
                                        Texts(
                                          texts: 'Rs. N/A}',
                                          textStyle: AppStyles.text12PxBold.copyWith(
                                            color: AppColor.appColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 0.01 * scWidth,
                                        ),
                                        Texts(
                                          texts: ' Rs. ' '} ',
                                          textStyle: AppStyles.text12PxBold.copyWith(
                                            // color: AppColor.appColor,
                                            decoration: TextDecoration.lineThrough,
                                            decorationColor: AppColor.greyButtonText,
                                            decorationThickness: 2,
                                            color: AppColor.greyButtonText,
                                            fontSize: 8.sp,
                                          ),
                                        ),
                                      ],
                                    ),

                                    SizedBox(
                                      height: 0.012 * scHeight,
                                    ),

                                    //button
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        width: double.infinity,
                                        // height: 0.036 * scHeight,
                                        decoration: BoxDecoration(
                                          // color: AppColor.appColor,
                                          borderRadius: BorderRadius.circular(4),
                                          border: Border.all(
                                            color: AppColor.greyButtonBorder,
                                            width: 1,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.089 * scWidth,
                                              vertical: 0.009 * scHeight),
                                          child: Center(
                                            child: Row(
                                              children: [
                                                Texts(
                                                  texts: 'Add to Cart',
                                                  textStyle: AppStyles.text12PxRegular.copyWith(
                                                    color: AppColor.greyButtonText,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 0.01 * scWidth,
                                                ),
                                                const Icon(
                                                  Icons.shopping_bag_outlined,
                                                  color: AppColor.greyButtonText,
                                                  size: 9,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: isActive ? 10 : 8,
      height: isActive ? 10 : 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
        isActive ? AppColor.appColor : AppColor.appColor.withOpacity(0.4),
      ),
    );
  }
}
