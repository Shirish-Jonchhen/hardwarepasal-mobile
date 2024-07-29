import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../search_screen/presentation/screen/search_area_screen.dart';

class CategoryLevel3ScreenPage extends StatefulWidget {
  const CategoryLevel3ScreenPage({super.key});

  @override
  State<CategoryLevel3ScreenPage> createState() =>
      _CategoryLevel3ScreenPageState();
}

class _CategoryLevel3ScreenPageState extends State<CategoryLevel3ScreenPage> {
  int selectedIndex = 0;
  bool isGrid = true;

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        surfaceTintColor: AppColor.whiteColor,
        backgroundColor: AppColor.whiteColor,
        elevation: 1008,
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
        toolbarHeight: 0.086 * scHeight,
        title: Row(
          children: [
            Expanded(
              flex: 10,
              child: GestureDetector(
                child: Container(
                  // color: AppColor.appColor,
                  decoration: BoxDecoration(
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 0.05 * scHeight,
                  child: TextField(
                    onTap: () =>
                        context.router.push(const SearchAreaScreenRoute()),
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: AppColor.textGrey,
                      ),
                      suffixIcon: null,
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                        borderSide: BorderSide(color: AppColor.appColor),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                      hintText: 'Search',
                      hintStyle: AppStyles.text12PxRegular.copyWith(
                        color: AppColor.textGrey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        borderSide: BorderSide(
                          color: AppColor.grey.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 0.021 * scWidth) ,
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => context.router.push(const CartScreenRoute()),
                child: Image.asset(
                  AssetsHelper.cartBtn,
                  color: AppColor.black,
                  height: 0.064 * scWidth,
                  width: 0.064 * scWidth,
                ),
              ),
            ),
            SizedBox(width: 0.021 * scWidth),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => context.router
                    .push(SearchFilterScreenRoute(searchText: " ")),
                child: Image.asset(
                  AssetsHelper.filterIcon,
                  color: AppColor.black,
                  height: 0.064 * scWidth,
                  width: 0.064 * scWidth,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 0.15 * scHeight,
              padding: EdgeInsets.all(
                0.042 * scWidth,
              ),
              decoration: const BoxDecoration(
                color: AppColor.whiteColor,
                // borderRadius: BorderRadius.circular(8),
                border: Border(
                  top: BorderSide(
                    color: AppColor.grey, // Border color
                    width: 1.0, // Border width
                    style: BorderStyle.solid, // Border style
                  ),
                ),
              ),
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      // margin: EdgeInsets.only(right: 0.042 * scWidth),
                      padding: EdgeInsets.all(0.01 * scWidth),
                      decoration: BoxDecoration(
                        color: (selectedIndex == index)
                            ? AppColor.appColor.withOpacity(0.2)
                            : AppColor.lightGreyBg,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                          color: (selectedIndex == index)
                              ? AppColor.appColor
                              : AppColor.greyButtonBorder,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 0.004 * scWidth,
                              vertical: 0.004 * scHeight,
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: CachedNetworkImage(
                                height: 0.061 * scHeight,
                                width: 0.18 * scWidth,
                                imageUrl: StringHelper.coverImageBaseUrl,
                                placeholder: (context, url) =>
                                    const CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    Image.asset(AssetsHelper.placeHolder),
                              ),
                            ),
                          ),
                          SizedBox(height: 0.006 * scHeight),
                          Texts(
                            texts: "Side Light",
                            textStyle: AppStyles.text12PxRegular.copyWith(
                              fontSize: 9.sp,
                              color: AppColor.textGreyColor,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 0.021 * scWidth),
              ),
            ),
            SizedBox(height: (12 / 812) * scHeight),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.006 * scWidth),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(0.042 * scWidth),
                    decoration: BoxDecoration(
                      color: AppColor.whiteColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Texts(
                            texts: 'Brands',
                            textStyle: AppStyles.text14PxMedium.copyWith(
                              color: AppColor.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 0.024 * scHeight),
                          SizedBox(
                            height: 0.1 * scHeight,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 0.01 * scWidth,
                                        vertical: 0.013 * scHeight,
                                      ),
                                      decoration: BoxDecoration(
                                        color: AppColor.whiteColor,
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: const [
                                          BoxShadow(
                                            color: AppColor.grey,
                                            spreadRadius: 0,
                                            blurRadius: 0,
                                            offset: Offset(2,
                                                2), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: Center(
                                        child: CachedNetworkImage(
                                          height: 0.033 * scHeight,
                                          width: 0.1 * scWidth,
                                          imageUrl:
                                              StringHelper.coverImageBaseUrl,
                                          placeholder: (context, url) =>
                                              const CircularProgressIndicator(),
                                          errorWidget: (context, url, error) =>
                                              Image.asset(
                                                  AssetsHelper.placeHolder),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 0.009 * scHeight),
                                    Texts(
                                      texts: "Crompton",
                                      textStyle: AppStyles.text10PxMedium,
                                    ),
                                  ],
                                );
                              },
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                      SizedBox(width: 0.031 * scWidth),
                            ),
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: 0.014 * scHeight,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.whiteColor,
                        AppColor.scaffoldBg,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 0.029 * scHeight),
                        Row(
                          children: [
                            Texts(
                              texts: 'Motorcycle Lights',
                              textStyle: AppStyles.text14PxMedium.copyWith(
                                color: AppColor.black,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    isGrid = true;
                                  },
                                );
                              },
                              child: Icon(Icons.grid_view,
                                  color: isGrid
                                      ? AppColor.appColor
                                      : AppColor.textGrey,
                                  size: 24),
                            ),
                            SizedBox(width: 0.021 * scWidth),
                            InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    isGrid = false;
                                  },
                                );
                              },
                              child: Icon(
                                Icons.list,
                                color: isGrid
                                    ? AppColor.textGrey
                                    : AppColor.appColor,
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.024 * scHeight,
                        ),
                        (isGrid)
                            ? GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 10,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 0.021 * scWidth,
                                  mainAxisSpacing: 0.021 * scHeight,
                                  childAspectRatio: 0.7,
                                ),
                                itemBuilder: (context, index) {
                                  return const AppItemCard(
                                    productModel: ProductModel(
                                        id: 373,
                                        product_cat_id: 122,
                                        sup_id: 5,
                                        name: "RGB rope light - per meter",
                                        description:
                                            "<p>A rope light is primarily used as a decorative lighting fixture, featuring small light bulbs linked together and encased in a PVC jacket to create a string of lights. Rope lights can be used in many applications both indoors and outdoors.</p><p>&nbsp;</p><p>Additional connector is required for a rope light to connct to the power socket. Connctor works like an adapter.&nbsp;</p>",
                                        cover_image:
                                            "2024-05-28-15-55-04_6h7Je6DY9Aproduct.jpg",
                                        model_no: "",
                                        old_price: "150",
                                        price: 100,
                                        xtraAttribute: "",
                                        weight: 0,
                                        quantity: 1,
                                        status: "published",
                                        slug: "rgb-rope-light---per-meter",
                                        created_at:
                                            "2018-09-05T07:09:48.000000Z",
                                        updated_at:
                                            "2024-05-28T10:10:04.000000Z",
                                        brand_id: 0,
                                        group_category_id: null,
                                        // clearanceSale: "1",
                                        specification:
                                            "<ul><li>Color: warm, white and blue</li><li>Water proof</li><li>LED type: 3014 (120leds/m) for extra brightness</li></ul>",
                                        delivery_days: "",
                                        express_delivery_days: "",
                                        express_delivery_price: 0,
                                        discount: 33,
                                        meta_keywords: null,
                                        meta_description:
                                            "RGB rope light online in Nepal: Choose from wide varieties of designs and brands online. – Best price – Delivery all over Nepal – online support.",
                                        meta_title: null,
                                        hot_deal: "",
                                        warrenty: "",
                                        hpxpress: "",
                                        view_count: 66,
                                        video_link: null,
                                        is_blocked: 0,
                                        is_ask_price: 0),
                                  );
                                  // return Container();
                                },
                              )
                            : ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) =>
                                    ItemListCardWidget(
                                  scWidth: scWidth,
                                  productModel: ProductModel(
                                      id: 373,
                                      product_cat_id: 122,
                                      sup_id: 5,
                                      name: "RGB rope light - per meter",
                                      description:
                                      "<p>A rope light is primarily used as a decorative lighting fixture, featuring small light bulbs linked together and encased in a PVC jacket to create a string of lights. Rope lights can be used in many applications both indoors and outdoors.</p><p>&nbsp;</p><p>Additional connector is required for a rope light to connct to the power socket. Connctor works like an adapter.&nbsp;</p>",
                                      cover_image:
                                      "2024-05-28-15-55-04_6h7Je6DY9Aproduct.jpg",
                                      model_no: "",
                                      old_price: "150",
                                      price: 100,
                                      xtraAttribute: "",
                                      weight: 0,
                                      quantity: 1,
                                      status: "published",
                                      slug: "rgb-rope-light---per-meter",
                                      created_at:
                                      "2018-09-05T07:09:48.000000Z",
                                      updated_at:
                                      "2024-05-28T10:10:04.000000Z",
                                      brand_id: 0,
                                      group_category_id: null,
                                      // clearanceSale: "1",
                                      specification:
                                      "<ul><li>Color: warm, white and blue</li><li>Water proof</li><li>LED type: 3014 (120leds/m) for extra brightness</li></ul>",
                                      delivery_days: "",
                                      express_delivery_days: "",
                                      express_delivery_price: 0,
                                      discount: 33,
                                      meta_keywords: null,
                                      meta_description:
                                      "RGB rope light online in Nepal: Choose from wide varieties of designs and brands online. – Best price – Delivery all over Nepal – online support.",
                                      meta_title: null,
                                      hot_deal: "",
                                      warrenty: "",
                                      hpxpress: "",
                                      view_count: 66,
                                      video_link: null,
                                      is_blocked: 0,
                                      is_ask_price: 0),
                                ),
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 0.009 * scHeight,
                                ),
                                itemCount: 10,
                              ),
                      ]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
