import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/helpers/string_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/widget/app_review_section.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/add_wish_list_cubit.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/remove_wish_list_cubit.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/wishlist_cubit.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/couter_helper.dart';
import '../../../../core/helpers/snackbar_helper.dart';
import '../../../../core/helpers/storage_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../data/models/cart_item_model/cart_item_model.dart';

class ItemDetailScreenPage extends StatefulWidget {
  const ItemDetailScreenPage({super.key, required this.productModel});

  final ProductModel productModel;

  @override
  State<ItemDetailScreenPage> createState() => _ItemDetailScreenPageState();
}

class _ItemDetailScreenPageState extends State<ItemDetailScreenPage> {
  int quantity = 1;

  bool productImageDotOne = true;
  bool productImageDotTwo = false;
  bool productImageDotThree = false;

  late List<CartItemModel> wishList = [];

  FlutterSecureStorage storage = const FlutterSecureStorage();
  late StorageHelper storageHelper;

  @override
  initState() {
    super.initState();
    storageHelper = StorageHelper(storage);
    storageHelper.getCartItems().then((value) {
      wishList = value;
    });
  }

  addQuantity() {
    if (quantity >= 0) {
      setState(() {
        quantity++;
      });
    }
  }

  subtractQuantity() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  checkExist() {
    for (var i = 0; i < wishList.length; i++) {
      if (wishList[i].product!.id == widget.productModel.id) {
        return true;
      }
    }
    return false;
  }

  int imageIndex = 0;

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () => context.router.push(const SearchAreaScreenRoute()),
              child: Image.asset(
                AssetsHelper.searchBtn,
                width: 0.064 * scWidth,
                height: 0.064 * scWidth,
                color: AppColor.black,
              ),
            ),
            SizedBox(
              width: 0.026 * scWidth,
            ),
            InkWell(
              // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SearchAreaScreen())),
              child: Image.asset(
                AssetsHelper.shareBtn,
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
      bottomNavigationBar: Container(
        height: 0.1 * scHeight,
        // width: 0.8 * scWidth,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          // borderRadius: BorderRadius.circular(8),
          border: Border(
            top: BorderSide(
              color: AppColor.textGrey.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 0.042 * scWidth,
          vertical: 0.042 * scWidth,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex:1,
              child:InkWell(
                onTap: () => context.router.pop(),
                child: Container(
                  padding: EdgeInsets.all(0.03 * scWidth),
                  decoration: BoxDecoration(
                    color: const Color(0xffB0B0B8).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Image.asset(
                    AssetsHelper.homeIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: const Color(0xffB0B0B8),
                  ),

                ),
              ),
            ),

            SizedBox(
              width: scWidth * 0.034,
            ),

            Expanded(
              flex: 3,
              child: BlocProvider(
                create: (BuildContext context) => getIt<AddToCartCubit>(),
                child: BlocListener<AddToCartCubit, AddToCartState>(
                  listener: (BuildContext context, AddToCartState state) {
                    state.maybeWhen(
                      orElse: () => Container(),
                      success: (data) {
                        context.router.push(const CartScreenRoute());
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
                      builder: (BuildContext context, AddToCartState state) {
                    bool isLoading = state.maybeWhen(
                      orElse: () => false,
                      loading: () => true,
                    );
                    return AppButton(
                      scWidth: scWidth,
                      scHeight: scHeight,
                      title: isLoading ? "Processing... " : "Buy Now",
                      onTap: () {
                        if (!isLoading) {
                          context.read<AddToCartCubit>().addToCart(
                              widget.productModel.id.toString(),
                              quantity.toString());
                        }
                      },
                    );
                  }),
                ),
              ),
            ),
            SizedBox(
              width: scWidth * 0.034,
            ),
            Expanded(
              flex: 3,
              child: BlocProvider(
                create: (BuildContext context) => getIt<AddToCartCubit>(),
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
                      builder: (BuildContext context, AddToCartState state) {
                    bool isLoading = state.maybeWhen(
                      orElse: () => false,
                      loading: () => true,
                    );
                    return AppButton(
                      hollow: true,
                      scWidth: scWidth,
                      scHeight: scHeight,
                      title: isLoading ? " Adding... " : "Add To Cart",
                      onTap: () {
                        if (!isLoading) {
                          context.read<AddToCartCubit>().addToCart(
                              widget.productModel.id.toString(),
                              quantity.toString());
                        }
                      },
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
      body: BlocProvider(
        create: (context) =>
            getIt<ItemDetailsCubit>()..getItemDetail(widget.productModel.slug!),
        child: BlocBuilder<ItemDetailsCubit, ItemDetailsState>(
          builder: (BuildContext context, ItemDetailsState state) {
            return state.when(
              initial: () => const Center(child: CircularProgressIndicator()),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (message) => Center(child: Text(message)),
              noInternet: () => const Center(child: Text("No Internet")),
              success: (data) {
                final response = data.data!.data!;
                YoutubePlayerController? _controller;
                if(data.data!.data!.product!.video_link != null){
                  _controller = YoutubePlayerController(
                    initialVideoId: data.data!.data!.product!.video_link!,
                    flags: const YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                    ),
                  );
                }
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: scWidth,
                        decoration: const BoxDecoration(
                          color: AppColor.whiteColor,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 0.019 * scHeight,
                            ),

                            //product image
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.042 * scWidth),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: AppColor.appColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0.032 * scWidth,
                                        vertical: 0.0036 * scHeight),
                                    child: Texts(
                                      texts: "Sale",
                                      textStyle: AppStyles.text12PxRegular
                                          .copyWith(color: AppColor.appColor),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {

                                      if(!checkExist()){

                                        context.read<WishlistCubit>().addWishList(widget.productModel);
                                        setState(() {
                                          wishList.add(CartItemModel(product: widget.productModel));
                                        });
                                      }else{
                                        context.read<WishlistCubit>().removeWishlist(widget.productModel.id!);
                                        setState(() {
                                          wishList.removeWhere((element) => element.product!.id == widget.productModel.id);
                                        });
                                      }
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color:
                                            AppColor.appColor.withOpacity(0.1),
                                        borderRadius: BorderRadius.circular(24),
                                      ),
                                      padding: EdgeInsets.all(0.018 * scWidth),
                                      child: Icon(
                                        checkExist()
                                            ? Icons.favorite
                                            :
                                        Icons.favorite_border_outlined,
                                        color:AppColor.appColor,

                                        size: 0.045 * scWidth,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            //indicator
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    // width: 0.8 * scWidth,
                                    height: 0.31 * scHeight,
                                    child: PageView.builder(
                                      onPageChanged: (value) {
                                        setState(() {
                                          imageIndex = value;
                                        });
                                      },
                                      itemCount:
                                          response.product!.images!.length + 1,
                                      itemBuilder: (context, index) =>
                                          Container(
                                        width: 0.8 * scWidth,
                                        height: 0.31 * scHeight,
                                        color: AppColor.appColor.withOpacity(0),
                                        child: Center(
                                          child: CachedNetworkImage(
                                            imageUrl: (index == 0)
                                                ? '${StringHelper.coverImageBaseUrl}${response.product!.cover_image}'
                                                : '${StringHelper.productImageBaseUrl}${response.product!.images![index - 1].image}',
                                            placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                            errorWidget: (context, url,
                                                    error) =>
                                                Image.asset(
                                                    AssetsHelper.placeHolder),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.027 * scHeight,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(
                                      response.product!.images!.length + 1,
                                      (index) => Container(
                                        height: 8.h,
                                        width: 8.w,
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 4.w),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: index == imageIndex
                                              ? AppColor.appColor
                                              : AppColor.appColor
                                                  .withOpacity(0.2),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 0.035 * scHeight,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 0.019 * scHeight,
                      ),

                      //product details
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 0.014 * scWidth),
                        child: Column(
                          children: [
                            //name, price, rating, share
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.033 * scWidth),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 0.019 * scHeight,
                                    ),
                                    Texts(
                                      texts: response.product!.name!,
                                      textStyle: AppStyles.text14PxRegular,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 0.009 * scHeight,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Texts(
                                          texts:
                                              "Rs. ${response.product!.price}",
                                          textStyle: AppStyles.text16PxMedium
                                              .copyWith(
                                                  color: AppColor.appColor),
                                        ),
                                        SizedBox(
                                          width: 0.01 * scWidth,
                                        ),
                                        Texts(
                                          texts:
                                              "Rs. ${response.product!.old_price}",
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                            color: AppColor.textGrey
                                                .withOpacity(0.5),
                                            fontSize: 10,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            decorationColor: AppColor.textGrey
                                                .withOpacity(0.5),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.024 * scHeight,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 0.0053 * scWidth,
                                        ),
                                        Texts(
                                          texts:
                                              "${CounterHelper.calculateAvgReview(response.product!.reviews!)}/5 (${response.product!.reviews!.length})",
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                                  color: AppColor.textGrey,
                                                  fontSize: 10),
                                        ),
                                        const Spacer(),
                                        Image.asset(
                                          AssetsHelper.shareBtn,
                                          width: 0.053 * scWidth,
                                          height: 0.053 * scWidth,
                                          color: AppColor.appColor,
                                        ),
                                        SizedBox(
                                          width: 0.0051 * scWidth,
                                        ),
                                        Texts(
                                          texts: "Share",
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                                  color: AppColor.appColor),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 0.028 * scHeight,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 0.014 * scHeight,
                            ),

                            //quantity
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.038 * scWidth),
                                child: Column(
                                  children: [
                                    SizedBox(height: 0.019 * scHeight),
                                    //quantity
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.032 * scWidth,
                                          vertical: 0.032 * scWidth),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Texts(
                                              texts: "Quantity:",
                                              textStyle:
                                                  AppStyles.text14PxRegular,
                                            ),
                                          ),

                                          //quantity box
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0.026 * scWidth,
                                                vertical: 0.016 * scHeight),
                                            decoration: BoxDecoration(
                                              color: Color(0xffFAFAFA),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              border: Border.all(
                                                color: AppColor.textGrey
                                                    .withOpacity(0.2),
                                                width: 1,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                InkWell(
                                                  onTap: subtractQuantity,
                                                  child: Container(
                                                    padding: EdgeInsets.all(
                                                        0.007 * scWidth),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColor.whiteColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.38),
                                                      border: Border.all(
                                                        color: AppColor.textGrey
                                                            .withOpacity(0.2),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Icon(
                                                      Icons.remove,
                                                      color: AppColor.textGrey
                                                          .withOpacity(0.5),
                                                      size: 0.03 * scWidth,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 0.059 * scWidth,
                                                ),
                                                Texts(
                                                  texts: quantity.toString(),
                                                  textStyle:
                                                      AppStyles.text14PxRegular,
                                                ),
                                                SizedBox(
                                                  width: 0.059 * scWidth,
                                                ),
                                                InkWell(
                                                  onTap: addQuantity,
                                                  child: Container(
                                                    padding: EdgeInsets.all(
                                                        0.007 * scWidth),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColor.whiteColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              3.38),
                                                      border: Border.all(
                                                        color: AppColor.textGrey
                                                            .withOpacity(0.2),
                                                        width: 1,
                                                      ),
                                                    ),
                                                    child: Icon(
                                                      Icons.add,
                                                      color: AppColor.textGrey
                                                          .withOpacity(0.5),
                                                      size: 0.03 * scWidth,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    SizedBox(height: 0.019 * scHeight),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 0.014 * scHeight,
                            ),

                            //ticker
                            (response.voucherList!.isNotEmpty)?
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.029 * scWidth,
                                    vertical: 0.022 * scHeight),
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
                                        color:
                                            AppColor.appColor.withOpacity(0.2),
                                        isCornerRounded: true,
                                        width: double.infinity,
                                        // padding: EdgeInsets.symmetric(
                                        //     vertical: 0.023 * scHeight,
                                        //     horizontal: 0.058 * scWidth),
                                        height: 0.168 * scHeight,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 0.02 * scHeight,
                                                  horizontal: 0.058 * scWidth),
                                              child: Row(
                                                children: [
                                                  Texts(
                                                    texts:
                                                        "${response.voucherList?[0].discount_value}% OFF",
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
                                                        texts: "Min Spend",
                                                        textStyle: AppStyles
                                                            .text12PxRegular
                                                            .copyWith(
                                                          color:
                                                              AppColor.appColor,
                                                          fontSize: 10,
                                                        ),
                                                      ),
                                                      Texts(
                                                        texts:
                                                            "NRs. ${response.voucherList![0].min_order}",
                                                        textStyle: AppStyles
                                                            .text16PxMedium
                                                            .copyWith(
                                                          color:
                                                              AppColor.appColor,
                                                        ),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              height: 2,
                                              color: AppColor.appColor,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 0.012 * scHeight,
                                                  horizontal: 0.058 * scWidth),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Texts(
                                                    texts: response
                                                        .voucherList![0]
                                                        .coupon_name!,
                                                    textStyle: AppStyles
                                                        .text16PxMedium,
                                                  ),
                                                  const Spacer(),
                                                  AppButton(
                                                      scWidth: scWidth,
                                                      scHeight: scHeight,
                                                      title: "Collect",
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
                              ),
                            ):Container(),
                            SizedBox(
                              height: 0.014 * scHeight,
                            ),

                            //about product, highlights, video
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.029 * scWidth),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 0.01 * scHeight,
                                      ),

                                      //about
                                      Texts(
                                        texts: "About Product",
                                        textStyle: AppStyles.text12PxRegular,
                                      ),
                                      SizedBox(
                                        height: 0.009 * scHeight,
                                      ),
                                      Container(
                                        height: 1,
                                        width: double.infinity,
                                        color:
                                            AppColor.textGrey.withOpacity(0.1),
                                      ),
                                      // SizedBox(
                                      //   height: 0.014 * scHeight,
                                      // ),
                                      Html(
                                        data: response.product!.description!,
                                        shrinkWrap: true,
                                        style: {
                                          "p": Style(
                                            fontSize: FontSize(12),
                                            color: AppColor.textGrey
                                                .withOpacity(0.7),
                                            fontWeight: FontWeight.w300,
                                            margin: Margins(
                                                top: Margin(12.h),
                                                bottom: Margin(12.h),
                                                left: Margin(0),
                                                right: Margin(0)),
                                          ),
                                        },
                                      ),

                                      // SizedBox(
                                      //   height: 0.024 * scHeight,
                                      // ),

                                      //highlights
                                      Texts(
                                        texts: "Highlights",
                                        textStyle: AppStyles.text12PxRegular,
                                      ),
                                      SizedBox(
                                        height: 0.009 * scHeight,
                                      ),
                                      Container(
                                        height: 1,
                                        width: double.infinity,
                                        color:
                                            AppColor.textGrey.withOpacity(0.1),
                                      ),
                                      Html(
                                        data: response.product!.specification!,
                                        shrinkWrap: true,
                                        style: {
                                          "p": Style(
                                            fontSize: FontSize(12),
                                            color: AppColor.textGrey
                                                .withOpacity(0.7),
                                            fontWeight: FontWeight.w300,
                                            margin: Margins(
                                                top: Margin(12.h),
                                                bottom: Margin(0),
                                                left: Margin(0),
                                                right: Margin(0)),
                                          ),
                                          "ul": Style(
                                            fontSize: FontSize(12),
                                            color: AppColor.textGrey
                                                .withOpacity(0.7),
                                            fontWeight: FontWeight.w300,
                                            margin: Margins(
                                                top: Margin(0),
                                                bottom: Margin(12.h),
                                                left: Margin(-30.w),
                                                right: Margin(0)),
                                          ),
                                        },
                                      ),

                                      // SizedBox(
                                      //   height: 0.014 * scHeight,
                                      // ),
                                      // Padding(
                                      //   padding: EdgeInsets.symmetric(
                                      //       horizontal: 0.01 * scWidth),
                                      //   child: Texts(
                                      //     texts:
                                      //     response.product!.specification!,
                                      //     textStyle: AppStyles.text12PxRegular.copyWith(
                                      //         color: AppColor.textGrey.withOpacity(0.7),
                                      //         fontWeight: FontWeight.w300),
                                      //   ),
                                      // ),
                                      // SizedBox(
                                      //   height: 0.024 * scHeight,
                                      // ),

                                      //video
                                      if(_controller != null)
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Texts(
                                              texts: "Videos",
                                              textStyle: AppStyles.text12PxRegular,
                                            ),
                                            SizedBox(
                                              height: 0.009 * scHeight,
                                            ),
                                            Container(
                                              height: 1,
                                              width: double.infinity,
                                              color:
                                              AppColor.textGrey.withOpacity(0.1),
                                            ),
                                            SizedBox(
                                              height: 0.014 * scHeight,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0.01 * scWidth),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: AppColor.whiteColor,
                                                  borderRadius: BorderRadius.circular(12),
                                                ),

                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(12),
                                                  child: YoutubePlayer(
                                                    controller: _controller,
                                                    showVideoProgressIndicator: true,

                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 0.014 * scHeight,
                                            ),
                                          ],
                                        ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height: 0.014 * scHeight,
                            ),

                            //inquiey
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.029 * scWidth),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 0.01 * scHeight,
                                    ),

                                    //about
                                    Texts(
                                      texts: "For Inquiry",
                                      textStyle: AppStyles.text12PxRegular,
                                    ),
                                    SizedBox(
                                      height: 0.009 * scHeight,
                                    ),
                                    Container(
                                      height: 1,
                                      width: double.infinity,
                                      color: AppColor.textGrey.withOpacity(0.1),
                                    ),
                                    SizedBox(
                                      height: 0.014 * scHeight,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffF8F8F8),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 0.088 * scWidth,
                                              vertical: 0.017 * scHeight,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 0.1 * scWidth,
                                                  height: 0.1 * scWidth,
                                                  padding: EdgeInsets.all(
                                                      0.021 * scWidth),
                                                  decoration: BoxDecoration(
                                                    color: AppColor.appColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Image.asset(
                                                    AssetsHelper.phoneIcon,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.009 * scHeight,
                                                ),
                                                Texts(
                                                  texts: "Call",
                                                  textStyle:
                                                      AppStyles.text12PxRegular,
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffF8F8F8),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 0.088 * scWidth,
                                              vertical: 0.017 * scHeight,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 0.1 * scWidth,
                                                  height: 0.1 * scWidth,
                                                  padding: EdgeInsets.all(
                                                      0.021 * scWidth),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff7D3DAF),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Image.asset(
                                                      AssetsHelper.viberIcon),
                                                ),
                                                SizedBox(
                                                  height: 0.009 * scHeight,
                                                ),
                                                Texts(
                                                  texts: "Viber",
                                                  textStyle:
                                                      AppStyles.text12PxRegular,
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffF8F8F8),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 0.088 * scWidth,
                                              vertical: 0.017 * scHeight,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  width: 0.1 * scWidth,
                                                  height: 0.1 * scWidth,
                                                  padding: EdgeInsets.all(
                                                      0.021 * scWidth),
                                                  decoration: BoxDecoration(
                                                    color: Color(0xff60D669),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                  child: Image.asset(
                                                    AssetsHelper.whatsappIcon,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.009 * scHeight,
                                                ),
                                                Texts(
                                                  texts: "Whatsapp",
                                                  textStyle:
                                                      AppStyles.text12PxRegular,
                                                )
                                              ],
                                            ),
                                          ),
                                        ]),
                                    SizedBox(
                                      height: 0.01 * scHeight,
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 0.014 * scHeight,
                            ),

                            //review rating
                            AppReviewSection(
                                reviews: response.product!.reviews!),

                            SizedBox(
                              height: 0.014 * scHeight,
                            ),

                            //seller info
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.045 * scWidth,
                                    vertical: 0.0208 * scHeight),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Texts(
                                            texts: "Sold By:",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              color: AppColor.textGrey
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.004 * scHeight,
                                          ),
                                          Texts(
                                            texts:
                                                (response.product!.suppliers !=
                                                        null)
                                                    ? response.product!
                                                        .suppliers!.name!
                                                    : "Hardware Pasal",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              color: AppColor.textGrey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Texts(
                                            texts: "Warranty:",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              color: AppColor.textGrey
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.004 * scHeight,
                                          ),
                                          Texts(
                                            texts: response.product!.warrenty !=
                                                        null &&
                                                    response.product!.warrenty!
                                                        .isNotEmpty &&
                                                    response.product!
                                                            .warrenty ==
                                                        "1"
                                                ? "YES"
                                                : "NO",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              color: AppColor.textGrey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Texts(
                                            texts: "Easy Return:",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              color: AppColor.textGrey
                                                  .withOpacity(0.5),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 0.004 * scHeight,
                                          ),
                                          Texts(
                                            texts: "Available, T&C Apply",
                                            textStyle: AppStyles.text12PxRegular
                                                .copyWith(
                                              color: AppColor.textGrey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0.024 * scHeight,
                      ),

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              AppColor.whiteColor,
                              AppColor.scaffoldBg,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: scWidth * 0.042),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 0.029 * scHeight,
                              ),
                              Row(
                                children: [
                                  Texts(
                                    texts: 'Similar products',
                                    textStyle: AppStyles.text14PxMedium,
                                  ),
                                  const Spacer(),
                                  Texts(
                                    texts: 'See All',
                                    textStyle:
                                        AppStyles.text12PxRegular.copyWith(
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
                              GridView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount:
                                    response.customersAreAlsoViewing!.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 0.021 * scWidth,
                                  mainAxisSpacing: 0.021 * scHeight,
                                  childAspectRatio: 0.7,
                                ),
                                itemBuilder: (context, index) {
                                  return AppItemCard(
                                    productModel: response
                                        .customersAreAlsoViewing![index],
                                  );
                                  // return Container();
                                },
                              ),
                              SizedBox(
                                height: 0.024 * scHeight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
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

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.scWidth,
    required this.scHeight,
    required this.title,
    required this.onTap,
    this.hollow = false,
  });

  final double scWidth;
  final double scHeight;
  final String title;
  final void Function() onTap;
  final bool hollow;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        // width: double.infinity,
        decoration: BoxDecoration(
          color: (hollow) ? AppColor.whiteColor : AppColor.appColor,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColor.appColor,
            width: 1,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 0.072 * scWidth,
          vertical: 0.013 * scHeight,
        ),
        child: Center(
          child: Texts(
            texts: title,
            textStyle: AppStyles.text14PxRegular.copyWith(
              color: (hollow) ? AppColor.appColor : AppColor.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
