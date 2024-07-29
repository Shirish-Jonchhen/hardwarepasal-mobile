import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:ticket_widget/ticket_widget.dart';

import '../../../../core/di/injection.dart';
import '../../../item_detail_screen/presentation/screen/item_detail_screen.dart';
import '../cubit/cart_data_cubit.dart';

class CartScreenPage extends StatefulWidget {
  const CartScreenPage({super.key});

  @override
  State<CartScreenPage> createState() => _CartScreenPageState();
}

class _CartScreenPageState extends State<CartScreenPage> {
  FlutterSecureStorage storage = const FlutterSecureStorage();
  late StorageHelper storageHelper;
  late double total = 0;
  late double discount = 0;

  int couponIndex = 0;

  @override
  initState() {
    super.initState();
    storageHelper = StorageHelper(storage);
  }

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
              texts: 'Your Cart',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            InkWell(
              // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SearchAreaScreen())),
              child: Image.asset(
                AssetsHelper.notificationBtn,
                width: 0.064 * scWidth,
                height: 0.064 * scWidth,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              width: 0.026 * scWidth,
            ),
            Icon(
              Icons.more_vert,
              color: AppColor.black,
              size: 0.064 * scWidth,
            ),
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) => getIt<CartDataCubit>()..getCart(true),
        child: BlocBuilder<CartDataCubit, CartDataState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              noInternet: () => const Center(
                child: Text('No Internet'),
              ),
              error: (message) => Center(
                child: Text(message),
              ),
              success: (data) {
                final List<ProductModel> products = data.data!.cartdata!;

                return Scaffold(
                  backgroundColor: AppColor.scaffoldBg,
                  body: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0413 * scWidth),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          products.isEmpty
                              ? Container(
                                  margin: EdgeInsets.only(
                                      top: 0.01 * scHeight,
                                      bottom: 0.014 * scHeight),
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.041 * scWidth,
                                      vertical: 0.053 * scHeight),
                                  child: Column(children: [
                                    Image.asset(
                                      AssetsHelper.cartEmpty,
                                      width: 0.7 * scWidth,
                                      height: 0.3 * scHeight,
                                    ),
                                    SizedBox(
                                      height: 0.059 * scHeight,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.051 * scWidth),
                                      child: Column(
                                        children: [
                                          Texts(
                                            texts: 'Cart Empty',
                                            textStyle: AppStyles.text20PxMedium
                                                .copyWith(
                                              color: Color(0xff303133),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.01 * scHeight,
                                          ),
                                          Texts(
                                            textAlign: TextAlign.center,
                                            texts:
                                                'Sorry, we cannot find any matches for your search.',
                                            textStyle: AppStyles.text16PxRegular
                                                .copyWith(
                                              color: Color(0xff909193),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.019 * scHeight,
                                    ),
                                    SizedBox(
                                      width: double.infinity,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          // context.router.pop();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          backgroundColor: AppColor.appColor,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 0.042 * scWidth,
                                              vertical: 0.021 * scHeight),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.r),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Texts(
                                              texts: "Continue Shopping",
                                              textStyle: AppStyles
                                                  .text16PxRegular
                                                  .copyWith(
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
                                  ]))
                              : Column(
                                  children: [
                                    SizedBox(
                                      height: 0.019 * scHeight,
                                    ),
                                    ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 0.029 * scWidth,
                                        ),
                                        itemBuilder:
                                            (BuildContext context, index) {
                                          return AppCartCardWidget(
                                            product: products[index],
                                            scWidth: scWidth,
                                            scHeight: scHeight,
                                            quantity: products[index].quantity!,
                                            onAdd: () {
                                              context
                                                  .read<CartDataCubit>()
                                                  .updateCart(
                                                      products[index].id!,
                                                      products[index]
                                                              .quantity! +
                                                          1);
                                            },
                                            onSubtract: () {
                                              if (products[index].quantity! >
                                                  1) {
                                                context
                                                    .read<CartDataCubit>()
                                                    .updateCart(
                                                        products[index].id!,
                                                        products[index]
                                                                .quantity! -
                                                            1);
                                              } else {
                                                print("0 HUNDAINA");
                                              }

                                              // storageHelper
                                              //     .subtractQuantityFromCart(
                                              //     product:
                                              //     cartItems[index].product!)
                                              //     .then((val) => setState(() {}));
                                            },
                                            onDelete: () {
                                              context
                                                  .read<CartDataCubit>()
                                                  .removeFromCart(
                                                      products[index].id!);
                                            },
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: 0.009 * scHeight,
                                          );
                                        },
                                        itemCount: products.length),
                                    SizedBox(
                                      height: 0.024 * scHeight,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.052 * scWidth),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: AppColor.appColor,
                                          borderRadius:
                                              BorderRadius.circular(4),
                                        ),
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0.042 * scWidth,
                                            vertical: 0.016 * scHeight),
                                        child: Row(
                                          children: [
                                            Texts(
                                              texts: 'Download Quotation',
                                              textStyle: AppStyles
                                                  .text14PxMedium
                                                  .copyWith(
                                                      color:
                                                          AppColor.whiteColor),
                                            ),
                                            const Spacer(),
                                            Icon(
                                              Icons.picture_as_pdf_rounded,
                                              color: AppColor.whiteColor,
                                              size: 0.064 * scWidth,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.024 * scHeight,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.all(0.053 * scWidth),
                                      decoration: BoxDecoration(
                                        color: AppColor.whiteColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Texts(
                                            texts: "Apply Coupon",
                                            textStyle: AppStyles.text14PxMedium,
                                          ),
                                          SizedBox(
                                            height: 0.019 * scHeight,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: TextField(
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                0.042 * scWidth,
                                                            vertical: 0.022 *
                                                                scHeight),
                                                    hintText:
                                                        "Coupon Code (if any)",
                                                    hintStyle: AppStyles
                                                        .text14PxRegular
                                                        .copyWith(
                                                            color: AppColor
                                                                .textGrey),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .only(
                                                        topLeft:
                                                            Radius.circular(4),
                                                        bottomLeft:
                                                            Radius.circular(4),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color: AppColor.textGrey
                                                            .withOpacity(0.2),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        const OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(4),
                                                        bottomLeft:
                                                            Radius.circular(4),
                                                      ),
                                                      borderSide: BorderSide(
                                                        color:
                                                            AppColor.appColor,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal:
                                                          0.042 * scWidth,
                                                      vertical:
                                                          0.023 * scHeight),
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: AppColor.appColor,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topRight:
                                                          Radius.circular(4),
                                                      bottomRight:
                                                          Radius.circular(4),
                                                    ),
                                                  ),
                                                  child: Center(
                                                    child: Texts(
                                                      texts: 'Apply',
                                                      textStyle: AppStyles
                                                          .text14PxMedium
                                                          .copyWith(
                                                              color: AppColor
                                                                  .whiteColor),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 0.024 * scHeight,
                                    ),
                                  ],
                                ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppColor.whiteColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  // horizontal: 0.029 * scWidth,
                                  vertical: 0.022 * scHeight),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 0.029 * scWidth,
                                    ),
                                    child: Texts(
                                      texts: "Collect Coupons",
                                      textStyle: AppStyles.text14PxMedium,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.019 * scHeight,
                                  ),
                                  Container(
                                    height: 0.168 * scHeight,
                                    width: double.infinity,
                                    child: PageView.builder(
                                      onPageChanged: (index) {
                                        setState(() {
                                          couponIndex = index;
                                        });
                                      },
                                      itemCount: data.data!.voucherlist!.length,
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 0.029 * scWidth,
                                          ),
                                          child: TicketWidget(
                                            width: double.infinity,
                                            height: 0.168 * scHeight,
                                            color: AppColor.appColor,
                                            isCornerRounded: true,
                                            child: Padding(
                                              padding: EdgeInsets.all(2),
                                              child: TicketWidget(
                                                width: double.infinity,
                                                height: 0.168 * scHeight,
                                                color: AppColor.whiteColor,
                                                isCornerRounded: true,
                                                child: TicketWidget(
                                                  color: AppColor.appColor
                                                      .withOpacity(0.2),
                                                  isCornerRounded: true,
                                                  width: double.infinity,
                                                  // padding: EdgeInsets.symmetric(
                                                  //     vertical: 0.023 * scHeight,
                                                  //     horizontal: 0.058 * scWidth),
                                                  height: 0.168 * scHeight,
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 0.02 *
                                                                    scHeight,
                                                                horizontal:
                                                                    0.058 *
                                                                        scWidth),
                                                        child: Row(
                                                          children: [
                                                            Texts(
                                                              texts:
                                                                  "${data.data!.voucherlist![index].discount_value}% OFF",
                                                              textStyle: AppStyles
                                                                  .text24PxSemiBold
                                                                  .copyWith(
                                                                      color: AppColor
                                                                          .appColor),
                                                            ),
                                                            const Spacer(),
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Texts(
                                                                  texts:
                                                                      "Min Spend",
                                                                  textStyle: AppStyles
                                                                      .text12PxRegular
                                                                      .copyWith(
                                                                    color: AppColor
                                                                        .appColor,
                                                                    fontSize:
                                                                        10,
                                                                  ),
                                                                ),
                                                                Texts(
                                                                  texts:
                                                                      "NRs. ${data.data!.voucherlist![index].min_order}",
                                                                  textStyle: AppStyles
                                                                      .text16PxMedium
                                                                      .copyWith(
                                                                    color: AppColor
                                                                        .appColor,
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2,
                                                        color:
                                                            AppColor.appColor,
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical: 0.012 *
                                                                    scHeight,
                                                                horizontal:
                                                                    0.058 *
                                                                        scWidth),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Texts(
                                                              texts:
                                                                  "${data.data!.voucherlist![index].coupon_name}",
                                                              textStyle: AppStyles
                                                                  .text16PxMedium,
                                                            ),
                                                            const Spacer(),
                                                            AppButton(
                                                                scWidth:
                                                                    scWidth,
                                                                scHeight:
                                                                    scHeight,
                                                                title:
                                                                    "Collect",
                                                                onTap: () {}),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.029 * scHeight,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      data.data!.voucherlist!.length,
                                      (index) {
                                        return Row(
                                          children: [
                                            buildDot(index == couponIndex),
                                            SizedBox(
                                              width: 0.012 * scWidth,
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  bottomNavigationBar: (products.isEmpty)
                      ? null
                      : Container(
                          height: 0.2 * scHeight,
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.064 * scWidth,
                              vertical: 0.014 * scHeight),
                          decoration: BoxDecoration(
                            color: AppColor.whiteColor,
                            border: Border(
                              top: BorderSide(
                                color: AppColor.textGrey.withOpacity(0.2),
                                width: 1,
                              ),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Texts(
                                    texts: 'Discounts',
                                    textStyle: AppStyles.text12PxRegular,
                                  ),
                                  Builder(
                                    builder: (context) {
                                      discount = products.fold(
                                          0,
                                          (previousValue, element) =>
                                              (previousValue +
                                                  (
                                                      ( element.old_price!
                                                                .isEmpty
                                                            ? element.price!
                                                            : int.parse(element
                                                                .old_price!)
                                                        -element.price!
                                                      ) *
                                                      element.quantity!)));
                                      return Texts(
                                        texts: 'Rs. $discount',
                                        textStyle: AppStyles.text12PxRegular,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0.007 * scHeight,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Texts(
                                    texts: 'Grand Total',
                                    textStyle: AppStyles.text12PxRegular,
                                  ),
                                  Builder(
                                    builder: (BuildContext context) {
                                      total = products.fold(
                                        0,
                                        (previousValue, element) =>
                                            previousValue +
                                            (element.price! *
                                                element.quantity!),
                                      );
                                      return Texts(
                                        texts: 'Rs. $total',
                                        textStyle: AppStyles.text12PxRegular,
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 0.007 * scHeight,
                              ),
                              Texts(
                                texts:
                                    '*Delivery charge will be calculated at checkout',
                                textStyle: AppStyles.text12PxRegular.copyWith(
                                  color: AppColor.textGrey.withOpacity(0.5),
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              SizedBox(
                                height: 0.024 * scHeight,
                              ),
                              InkWell(
                                onTap: () => context.router.push(
                                    CheckoutScreenRoute(products: products)),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: AppColor.appColor,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.042 * scWidth,
                                      vertical: 0.016 * scHeight),
                                  child: Row(
                                    children: [
                                      Texts(
                                        texts: 'Proceed to Checkout',
                                        textStyle: AppStyles.text14PxMedium
                                            .copyWith(
                                                color: AppColor.whiteColor),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: AppColor.whiteColor,
                                        size: 0.064 * scWidth,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                );
              },
              // orElse: () => Container(),
            );
          },
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

class AppCartCardWidget extends StatelessWidget {
  AppCartCardWidget({
    super.key,
    required this.product,
    required this.scWidth,
    required this.scHeight,
    required this.quantity,
    required this.onAdd,
    required this.onSubtract,
    required this.onDelete,
  });

  final double scWidth;
  final double scHeight;
  final ProductModel product;
  final int quantity;
  final void Function() onAdd;
  final void Function() onSubtract;
  final void Function() onDelete;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: AppColor.textGrey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(0.032 * scWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: 0.2 * scWidth,
                height: 0.2 * scWidth,
                decoration: BoxDecoration(
                  color: AppColor.lightGreyBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: EdgeInsets.all(0.042 * scWidth),
                  child: Center(
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://images.unsplash.com/photo-1612838320302-4b3b3b3b3b3b',
                      placeholder: (context, url) =>
                          const CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          Image.asset(AssetsHelper.placeHolder),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts(
                    texts: product.name!,
                    textStyle: AppStyles.text12PxRegular,
                  ),
                  Row(
                    children: [
                      Texts(
                        texts: 'Rs. ${product.price} ',
                        textStyle: AppStyles.text12PxMedium
                            .copyWith(color: AppColor.appColor),
                      ),
                      Texts(
                        texts: 'Rs. ${product.old_price} ',
                        textStyle: AppStyles.text12PxMedium.copyWith(
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
                    height: 0.002 * scHeight,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.013 * scWidth,
                            vertical: 0.006 * scHeight),
                        decoration: BoxDecoration(
                          // color: AppColor.appColor.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: AppColor.textGrey.withOpacity(0.2),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: onSubtract,
                              child: Container(
                                padding: EdgeInsets.all(0.007 * scWidth),
                                decoration: BoxDecoration(
                                  // color: AppColor.textGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(3.38),
                                  border: Border.all(
                                    color: AppColor.textGrey.withOpacity(0.2),
                                    width: 1,
                                  ),
                                ),
                                child: Icon(
                                  Icons.remove,
                                  color: AppColor.textGrey.withOpacity(0.5),
                                  size: 0.03 * scWidth,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 0.059 * scWidth,
                            ),
                            Texts(
                              texts: quantity.toString(),
                              textStyle: AppStyles.text14PxRegular,
                            ),
                            SizedBox(
                              width: 0.059 * scWidth,
                            ),
                            InkWell(
                              onTap: onAdd,
                              child: Container(
                                padding: EdgeInsets.all(0.007 * scWidth),
                                decoration: BoxDecoration(
                                  // color: AppColor.textGrey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(3.38),
                                  border: Border.all(
                                    color: AppColor.textGrey.withOpacity(0.2),
                                    width: 1,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  color: AppColor.textGrey.withOpacity(0.5),
                                  size: 0.03 * scWidth,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: onDelete,
                        child: Icon(
                          Icons.delete,
                          color: AppColor.textGrey.withOpacity(0.5),
                          size: 0.05 * scWidth,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
