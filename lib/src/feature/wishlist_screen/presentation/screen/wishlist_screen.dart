import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/cart_item_model/cart_item_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../cubit/wishlist_cubit.dart';

class WishListScreenPage extends StatefulWidget {
  const WishListScreenPage({super.key});

  @override
  State<WishListScreenPage> createState() => _WishListScreenPageState();
}

class _WishListScreenPageState extends State<WishListScreenPage> {
  late List<CartItemModel> wishList = [];

  @override
  void initState() {
    super.initState();
    context.read<WishlistCubit>().getWishList();
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    // final bool empty = false;

    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      appBar: AppBar(
        toolbarHeight: 0.073 * scHeight,
        // leading: InkWell(
        //   onTap: () => context.router.pop(),
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 0.042 * scWidth),
        //     child: Image.asset(
        //       AssetsHelper.backBtn,
        //       color: AppColor.black,
        //     ),
        //   ),
        // ),
        // leadingWidth: 0.12 * scWidth,
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Texts(
              texts: 'Wish List',
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
      body: BlocConsumer<WishlistCubit, WishlistState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (data) {
              wishList = data;
              setState(() {
                wishList = data;
              });
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => const Center(child: Text('Wishlist is empty')),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (message) => Center(child: Text('Error: $message')),
            noInternet: () =>
                const Center(child: Text('No internet connection')),
            success: (data)
            {
              if(data.isEmpty || data == null)
              {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.1 * scWidth),
                    child: Column(

                      children: [
                        SizedBox(
                          height: 0.120*scHeight,
                        ),
                        Image.asset(AssetsHelper.emptyLogo),
                        SizedBox(
                          height: 0.0590*scHeight,
                        ),
                        Texts(
                          texts: "Wish List Empty",
                          textStyle: AppStyles.text20PxSemiBold,
                        ),
                        SizedBox(
                          height: 0.008*scHeight,
                        ),
                        Texts(
                          textAlign: TextAlign.center,
                          texts: "Sorry, we cannot find any matches \n for your search. ",
                          textStyle: AppStyles.text16PxRegular.copyWith(
                            color: AppColor.textGrey,
                          ),
                        ),
                        SizedBox(
                          height: 0.019*scHeight,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(


                            onPressed: () {
                              AutoTabsRouter.of(context).setActiveIndex(0);
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: AppColor.appColor,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.042*scWidth, vertical: 0.021*scHeight),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Texts(
                                  texts: "Continue Shopping",
                                  textStyle: AppStyles.text16PxRegular.copyWith(
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                                SizedBox(
                                  width: 8.w,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: AppColor.whiteColor,
                                )
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),

                );
              }else {
                return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.042 * scWidth, vertical: 0.029 * scHeight),
                  child: ListView.separated(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(0.032 * scWidth),
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: AppColor.borderGrey,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.all(0.034 * scWidth),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: AppColor.borderGrey,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.r),
                                  child: Center(
                                    child: CachedNetworkImage(
                                      height: 0.059 * scHeight,
                                      width: 0.138 * scHeight,
                                      imageUrl:
                                      '${StringHelper
                                          .coverImageBaseUrl}${data[index]
                                          .product!.cover_image}',
                                      placeholder: (context, url) =>
                                      const CircularProgressIndicator(),
                                      errorWidget: (context, url, error) =>
                                          Image.asset(
                                              height: 0.059 * scHeight,
                                              width: 0.138 * scHeight,
                                              AssetsHelper.placeHolder),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 0.021 * scWidth,
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      //name and price
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Texts(
                                            texts:
                                            "${data[index].product!.name!
                                                .length > 20 ? '${data[index]
                                                .product!.name!.substring(
                                                0, 20)}...' : data[index]
                                                .product!.name}",
                                            textStyle: AppStyles
                                                .text12PxRegular,
                                          ),
                                          SizedBox(
                                            height: 0.008 * scHeight,
                                          ),
                                          Texts(
                                            texts:
                                            'Rs. ${data[index].product!.price}',
                                            textStyle:
                                            AppStyles.text14PxMedium.copyWith(
                                              color: AppColor.appColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),

                                      //inStock
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.021 * scWidth,
                                            vertical: 0.008 * scHeight),
                                        decoration: BoxDecoration(
                                          color: AppColor.borderGrey,
                                          borderRadius:
                                          BorderRadius.circular(48.r),
                                        ),
                                        child: Texts(
                                          texts: 'In Stock',
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                              color: AppColor.textGreyColor,
                                              fontSize: 8.sp),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.h,
                                  ),

                                  //rating cart and love
                                  Row(children: [
//rating
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 16.sp,
                                          color: Colors.yellow,
                                        ),
                                        SizedBox(
                                          width: 0.008 * scWidth,
                                        ),
                                        Texts(
                                          texts: '4.5/5  71 Reviews',
                                          textStyle:
                                          AppStyles.text12PxRegular.copyWith(
                                            color: AppColor.textGrey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    //cart and love
                                    Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            context
                                                .read<AddToCartCubit>()
                                                .addToCart(
                                                data[index]
                                                    .product!
                                                    .id
                                                    .toString(),
                                                1.toString());
                                            context
                                                .read<WishlistCubit>()
                                                .removeWishlist(
                                                data[index].product!.id!);
                                          },
                                          child: CircleAvatar(
                                            radius: 12.5.r,
                                            backgroundColor: AppColor.appColor
                                                .withOpacity(0.2),
                                            child: Image.asset(
                                              AssetsHelper.cartBtn,
                                              width: 0.042 * scWidth,
                                              color: AppColor.appColor,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            context
                                                .read<WishlistCubit>()
                                                .removeWishlist(
                                                data[index].product!.id!);
                                          },
                                          child: CircleAvatar(
                                              radius: 12.5.r,
                                              backgroundColor: AppColor.appColor
                                                  .withOpacity(0.2),
                                              child: const Icon(
                                                Icons.favorite,
                                                size: 14,
                                                color: AppColor.appColor,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) =>
                        SizedBox(
                          height: 0.014 * scHeight,
                        ),
                    itemCount: data.length,
                  ),
                );
              }
            },
            orElse: () => Center(child: Text('Error')),
          );
        },
      ),
    );
  }
}
