import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/routes/app_router.dart';
import '../cubit/brand_details_cubit.dart';
import '../../../brands_screen/data/model/brands_model/brands_model.dart';
import '../../../category_screen/presentation/widget/loading_widget.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../category_screen/data/model/category_model/category_model.dart';
import '../../../category_screen/presentation/widget/error_widget.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';

class BrandDetailScreenPage extends StatefulWidget {
  const BrandDetailScreenPage({super.key, required this.slug});
  final String slug;

  @override
  State<BrandDetailScreenPage> createState() => _BrandDetailScreenPageState();
}

class _BrandDetailScreenPageState extends State<BrandDetailScreenPage> {
  bool isReadMoreActive = false;
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    context.read<BrandDetailsCubit>().getBrandDetails(widget.slug);
    super.initState();
  }

  String removeHtmlTags(String htmlText){
    final RegExp exp = RegExp(r'<[^>]*>', multiLine: true, caseSensitive: true);
    return htmlText.replaceAll(exp, '');
  }

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
              texts: 'Brand Details',
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
                color: AppColor.black,
              ),
            ),
            SizedBox(
              width: 0.042 * scWidth,
            ),
          ],
        ),
      ),
      body: BlocConsumer<BrandDetailsCubit, BrandDetailsState>(
        listener: (BuildContext context,  state) {
          state.maybeWhen(
            success: (data) {
              setState(() {});
            },
            orElse: () {},
          );
        },
        builder: (BuildContext context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            loading: () => const LoadingWidget(),
            error: (message) => ErrorScreen(message: message, onTap: () {
              context.read<BrandDetailsCubit>().getBrandDetails(widget.slug!);
            }),
            noInternet: () => ErrorScreen(message: "No Internet Connection", onTap: () {
          context.read<BrandDetailsCubit>().getBrandDetails(widget.slug!);
          }),
            success: (data)
            {
              BrandsItemModel brandData = data.data!.data!.data!.brand!;
              List<CategoryItemModel> categoryData = data.data!.data!.data!.filteredCategories!;
              List<ProductModel> productData = data.data!.data!.data!.products!.data!;
              List<ProductModel> displayData = productData.where((e) => e.product_cat_id == categoryData[selectedIndex].id,).toList();
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 0.029 * scHeight,
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: AppColor.borderGrey,
                                    ),
                                  ),
                                  child: CachedNetworkImage(
                                    height: 0.2 * scWidth,
                                    width: 0.2 * scWidth,
                                    imageUrl:
                                        "${StringHelper.brandImageBastUrl}${data.data!.data!.data!.brand!.image}",
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(AssetsHelper.placeHolder),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.042 * scWidth,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Texts(
                                      texts: brandData.name!,
                                      textStyle: AppStyles.text14PxMedium,
                                    ),
                                    Texts(
                                      texts: "Nepal",
                                      textStyle: AppStyles.text12PxRegular,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.019 * scHeight,
                            ),
                            Texts(
                              texts:
                                  removeHtmlTags(data.data!.data!.data!.brand!.description!),
                              textStyle: AppStyles.text14PxRegular.copyWith(
                                color: AppColor.textGreyColor,
                                fontWeight: FontWeight.w300,
                              ),
                              maxLines: isReadMoreActive ? 1000 : 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isReadMoreActive = !isReadMoreActive;
                                    });
                                  },
                                  child: Texts(
                                    texts: isReadMoreActive
                                        ? 'Read Less'
                                        : 'Read More',
                                    textStyle:
                                        AppStyles.text14PxMedium.copyWith(
                                      color: AppColor.appColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Transform.rotate(
                                  angle: isReadMoreActive ? 1.57 * 3 : 1.57,
                                  child: Image.asset(
                                    AssetsHelper.rightArrow,
                                    height: 14.h,
                                    width: 14.w,
                                    color: AppColor.appColor,
                                  ),
                                ),
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
                      height: 0.024 * scHeight,
                    ),

                    productData.isEmpty && categoryData.isEmpty
                        ? Center(
                            child: Texts(
                              texts: 'No Products Found',
                              textStyle: AppStyles.text14PxRegular.copyWith(
                                color: AppColor.appColor,
                              ),
                            ),
                          )
                        :
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            AppColor.whiteColor,
                            AppColor.scaffoldBg,
                          ],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 0.029 * scHeight,
                            ),
                            Texts(
                              texts: 'Brand Products',
                              textStyle: AppStyles.text14PxMedium,
                            ),
                            SizedBox(
                              height: 0.024 * scHeight,
                            ),
                            if(categoryData.isNotEmpty)
                            SizedBox(
                              height: 0.11 * scHeight,
                              child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemCount: categoryData.length,
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
                                            ? AppColor.appColor.withOpacity(0.1)
                                            : AppColor.whiteColor,
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
                                            // width: 0.21 * scWidth,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 0.004 * scWidth,
                                              vertical: 0.004 * scHeight,
                                            ),
                                            decoration: BoxDecoration(
                                              color: AppColor.transparent,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Center(
                                              child: CachedNetworkImage(
                                                height: 0.061 * scHeight,
                                                width: 0.18 * scWidth,
                                                imageUrl:"${categoryData[index].image_url}",
                                                placeholder: (context, url) =>
                                                    const CircularProgressIndicator(),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        Image.asset(AssetsHelper
                                                            .placeHolder),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 0.006 * scHeight),
                                          Texts(
                                            texts: categoryData[index].name!,
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              fontSize: 9.sp,
                                              color: (selectedIndex == index)
                                                  ? AppColor.appColor
                                                  : AppColor.textGreyColor,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder:
                                    (BuildContext context, int index) =>
                                        SizedBox(width: 0.021 * scWidth),
                              ),
                            ),
                            SizedBox(
                              height: 0.024 * scHeight,
                            ),
                            GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: displayData.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 0.021 * scWidth,
                                mainAxisSpacing: 0.021 * scHeight,
                                childAspectRatio: 0.7,
                              ),
                              itemBuilder: (context, index) {
                                return AppItemCard(
                                  productModel: displayData[index],
                                );
                                // return Container();
                              },
                            ),
                            SizedBox(
                              height: 0.029 * scHeight,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            initial: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
