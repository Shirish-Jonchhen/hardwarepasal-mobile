// import 'dart:js_interop';


import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/helpers/string_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart';

import '../../feature/item_detail_screen/presentation/screen/item_detail_screen.dart';
import '../di/injection.dart';
import '../helpers/assets_helper.dart';
import '../helpers/snackbar_helper.dart';
import '../themes/app_colors.dart';
import '../themes/app_styles.dart';
import 'app_texts.dart';


class AppItemCard extends StatelessWidget {
  const AppItemCard({required this.productModel, super.key});

  final ProductModel productModel;
  final StorageHelper storageHelper =
      const StorageHelper(FlutterSecureStorage());

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        context
            .read<HomeRecentlyViewedCubit>()
            .addRecentlyViewedProduct(productModel);
        context.router.push(ItemDetailScreenRoute(productModel: productModel));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
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
                        '${StringHelper.productCoverImageBastUrl}${productModel.cover_image}',
                    placeholder: (context, url) =>
                        const CircularProgressIndicator(),
                    errorWidget: (context, url, error) =>
                        Image.asset(AssetsHelper.placeHolder),
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
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 11,
                      ),
                      productModel.reviews != null?
                      Texts(
                        texts: "${(productModel.reviews!.fold(0.0, (previousValue, element) {
                          return previousValue + element.stars!;
                        },)/productModel.reviews!.length).toStringAsFixed(1) }/5 (${productModel.reviews!.length})",
                        textStyle: AppStyles.text12PxRegular.copyWith(
                            color: AppColor.greyButtonText, fontSize: 10),
                      )
                          :  Texts(
                        texts: "0/5 (0)",
                        textStyle: AppStyles.text12PxRegular.copyWith(
                            color: AppColor.greyButtonText, fontSize: 10),
                      )
                    ],
                  ),

                  //name
                  Texts(
                    texts: productModel.name ?? 'Product Name',
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
                        texts: 'Rs. ${productModel.price ?? 'N/A'}',
                        textStyle: AppStyles.text12PxBold.copyWith(
                          color: AppColor.appColor,
                        ),
                      ),
                      SizedBox(
                        width: 0.01 * scWidth,
                      ),

                      if(productModel.old_price != null && productModel.old_price!.isNotEmpty && productModel.old_price!.trim() != "")
                      Texts(
                        texts: ' Rs. ${productModel.old_price ?? ' '} ',
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
                  BlocProvider(
                    create: (context) => getIt<AddToCartCubit>(),
                    child: BlocListener<AddToCartCubit, AddToCartState>(
                      listener: (BuildContext context, AddToCartState state) {
                        state.maybeWhen(
                          orElse: () => Container(),
                          success: (data) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(11),
                                ),
                                content: Container(
                                  padding: EdgeInsets.all(0.037 * scWidth),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          Texts(
                                            texts: "Item added to cart",
                                            textStyle: AppStyles.text14PxMedium
                                                .copyWith(
                                                    color: AppColor.whiteColor),
                                          ),
                                          SizedBox(
                                            height: 0.0041 * scHeight,
                                          ),
                                          Texts(
                                            texts: "Continue to Checkout",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                                    color: AppColor.whiteColor),
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      AppButton(
                                        scWidth: scWidth,
                                        scHeight: scHeight,
                                        title: "Continue",
                                        onTap: () {
                                          context.router
                                              .push(const CartScreenRoute());
                                        },
                                        hollow: true,
                                      )
                                    ],
                                  ),
                                ),
                                duration: Duration(seconds: 3),
                                behavior: SnackBarBehavior.floating,
                                backgroundColor: AppColor.appColor,
                              ),
                            );
                          },
                          loading: () =>
                              const Center(child: CircularProgressIndicator()),
                          error: (String message) {
                            SnackBarHelper.showSnackBar(
                              message: message,
                              context: context,
                              isError: true,
                            );
                          },
                          noInternet: () {
                            SnackBarHelper.showSnackBar(
                              message: "No Internet Connection",
                              context: context,
                              isError: true,
                            );
                          },
                        );
                      },
                      child: BlocBuilder<AddToCartCubit, AddToCartState>(
                        builder: (context, state) {
                          bool isLoading = state.maybeWhen(
                            orElse: () => false,
                            loading: () => true,
                            // error: (String message) => false,
                          );

                          return InkWell(
                            onTap: () {
                              if (!isLoading) {
                                context
                                    .read<AddToCartCubit>()
                                    .addToCart(productModel.id.toString(), "1");
                              }
                            },
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Texts(
                                        texts: (isLoading)
                                            ? 'Adding...'
                                            : 'Add to Cart',
                                        textStyle:
                                            AppStyles.text12PxRegular.copyWith(
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
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
