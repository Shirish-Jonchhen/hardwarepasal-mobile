import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/di/injection.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/helpers/string_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_item_card.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart';
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/error_widget.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/home_brands_model/home_brands_by_category_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_all_products_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_brands_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/widget/home_appbar.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/widget/home_banner.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/widget/home_category.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/widget/home_searchbar.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/widget/home_shimmer.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../../recently_viewed_screen/presentation/screen/recently_viewed_screen.dart';
import '../../data/models/home_model/home_model.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenPage> {
  List<String> categories = [
    "Bathroom Tools",
    "Lights & Accessories",
    "Gardening Tools",
    "Motorcycle Accessories",
    "Car Equipments",
    "Bathroom Tools",
    "Lights & Accessories",
    "Gardening Tools",
    "Motorcycle Accessories",
    "Car Equipments",
  ];

  String allProductCategory = "all";

  List<Icon> categoryIcons = [
    Icon(
      Icons.ac_unit_outlined,
      color: AppColor.appColor,
    ),
    Icon(Icons.access_time, color: AppColor.appColor),
    Icon(Icons.account_balance, color: AppColor.appColor),
    Icon(Icons.account_tree, color: AppColor.appColor),
  ];

  List<Map<String, dynamic>> apCategory = [
    {
      "name": "All Products",
      "slug": "all"
    },
    {
      "name": "Power",
      "slug": "power-tools"
    },
    {
      "name": "Heater",
      "slug": "heater"
    },
    {
      "name": "Electrical",
      "slug": "electrical-tool"
    }
  ];
  List<IconData> apIcons = [
    Icons.stars_outlined,
    Icons.offline_bolt_outlined,
    Icons.heat_pump_outlined,
    Icons.electric_meter_outlined,
  ];

  int pageNumber = 1;
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

  List<ProductModel> allProducts = [];

  int featuredProductIndex = 0;
  int recentlyViewedProductsIndex = 0;
  PageController featuredProductPageController = PageController();
  PageController recentlyViewedProductPageController = PageController();

  final ScrollController _scrollController = ScrollController();
  final ScrollController _gridScrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      print(_scrollController.position.maxScrollExtent);
      print(_scrollController.position.pixels);
      print(allProductCategory);

      if (_scrollController.position.maxScrollExtent ==
          _scrollController.position.pixels) {
        pageNumber++;
        if(allProductCategory == "all"){
          context.read<HomeAllProductsCubit>().loadMoreProducts();

        }else{
          context.read<HomeAllProductsCubit>().loadMoreCategoryProducts();

        }
        context.read<HomeAllProductsCubit>().loadMoreProducts();
        print("puggio hai last ma last ma last ma");
      }
    });

    _scrollController.addListener(() {
      print(_scrollController.position.maxScrollExtent);
      print(_scrollController.position.pixels);

      if (_scrollController.position.maxScrollExtent ==
          _scrollController.position.pixels) {
        pageNumber++;
        // context.read<BrandsCubit>().loadMoreBrands();
        print("puggio hai last ma last ma last ma");
      }
    });
    context.read<HomeRecentlyViewedCubit>().getRecentlyViewedProducts();
    context.read<HomeAllProductsCubit>().getAllProducts(pageNumber);

    // showPopupAd(context);
    // TODO: implement initState
    super.initState();
  }


  void showPopupAd(BuildContext context, String imageUrl) {
    final TextEditingController itemNameController = TextEditingController();
    final TextEditingController itemDescriptionController = TextEditingController();

    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return CachedNetworkImage(
          imageUrl:
          imageUrl,
          placeholder: (context,
              url) =>
          const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context,
              url, error) =>
              Image.asset(
                  AssetsHelper
                      .placeHolder),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery
        .of(context)
        .size
        .width;
    final double scHeight = MediaQuery
        .of(context)
        .size
        .height;

    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        toolbarHeight: 0.1 * scHeight,
        automaticallyImplyLeading: false,
        backgroundColor: AppColor.whiteColor,
        flexibleSpace: const HomeAppBar(),
        surfaceTintColor: AppColor.whiteColor,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.1 * scHeight),
          child: const HomeSearchBar(),
        ),
      ),
      body: BlocProvider(
        create: (context) =>
        getIt<HomeCubit>()
          ..getProducts(),
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (BuildContext context, HomeState state) {
            return state.when(
              initial: () =>
              const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () =>
              const Center(
                child: HomeShimmer(),
              ),
              error: (message) =>
                  ErrorScreen(
                    message: message,
                    onTap: () => context.read<HomeCubit>().getProducts(),
                  ),
              noInternet: () =>
                  ErrorScreen(
                    message: "No Internet Connection",
                    onTap: () => context.read<HomeCubit>().getProducts(),
                  ),
              success: (data) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (data.data!.data!.data!.noticead!.isNotEmpty) {
                    showPopupAd(context, data.data!.data!.data!.noticead![0]
                        .image!);
                  } else {
                    showPopupAd(context,
                        "https://hardwarepasalapi.checkmysite.live/src/img/notice/2024-06-07-12-41-41_810Cmz9Gyo_notice.png");
                  }
                });
                print("Image Eta xa hai eta");
                print(data.data!.data!.data!.noticead!);
                // showPopupAd(context);
                final HomeDataModel response = data.data!.data!;
                final List<ProductModel> featuredProducts =
                    response.data!.featuredProducts1! +
                        response.data!.featuredProducts2!;
                return RefreshIndicator(
                  onRefresh: () => context.read<HomeCubit>().getProducts(),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        HomeBanner(
                          bannerModel: response.data!.banner!,
                        ),
                        HomeCategory(),
                        SizedBox(
                          height: 0.019 * scHeight,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: scWidth * 0.013),
                          child: Column(
                            children: [
                              //categories
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColor.whiteColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: scWidth * 0.029),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 0.029 * scHeight,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Texts(
                                            texts: 'Categories',
                                            textStyle: AppStyles.text14PxMedium,
                                          ),
                                          InkWell(
                                            onTap: () =>
                                                AutoTabsRouter.of(context)
                                                    .setActiveIndex(2),
                                            child: Texts(
                                              texts: 'See All',
                                              textStyle: AppStyles
                                                  .text12PxRegular
                                                  .copyWith(
                                                color: AppColor.appColor,
                                                decoration:
                                                TextDecoration.underline,
                                                decorationColor:
                                                AppColor.appColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 0.024 * scHeight,
                                      ),
                                      SizedBox(
                                        height: 0.26 * scHeight,
                                        child: GridView.builder(
                                          // controller: _scrollController,
                                          itemCount: response.data!
                                              .render_view_front!.data?.length,
                                          scrollDirection: Axis.horizontal,
                                          gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                            childAspectRatio:
                                            scHeight / scWidth * 0.6,
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 0.013 * scWidth,
                                            crossAxisSpacing: 0.019 * scHeight,
                                          ),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                FlutterSecureStorage storage =
                                                FlutterSecureStorage();
                                                StorageHelper storageHelper =
                                                StorageHelper(storage);

                                                storageHelper
                                                    .getUserData()
                                                    .then((value) {
                                                  print(value);
                                                });
                                                context.router.push(
                                                    CategoryLevel3ScreenRoute(
                                                        slug: response
                                                            .data!
                                                            .render_view_front!
                                                            .data![index]
                                                            .slug!));
                                              },
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 0.03 * scWidth),
                                                child: Column(
                                                  children: [
                                                    //icon
                                                    Container(
                                                      height: 0.128 * scWidth,
                                                      // width: 0.128 * scWidth,
                                                      decoration: BoxDecoration(
                                                        // color: AppColor.whiteColor,

                                                        // color: AppColor.appColor
                                                        //     .withOpacity(0.1),
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(10),
                                                      ),
                                                      child: Center(
                                                        child:
                                                        CachedNetworkImage(
                                                          imageUrl:
                                                          '${response.data!
                                                              .render_view_front!
                                                              .data?[index]
                                                              .image_url ??
                                                              ''}',
                                                          placeholder: (context,
                                                              url) =>
                                                          const CircularProgressIndicator(),
                                                          errorWidget: (context,
                                                              url, error) =>
                                                              Image.asset(
                                                                  AssetsHelper
                                                                      .placeHolder),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 0.01 * scHeight,
                                                    ),
                                                    Texts(
                                                      texts: response
                                                          .data!
                                                          .render_view_front!
                                                          .data?[index]
                                                          .name ??
                                                          '',
                                                      textAlign:
                                                      TextAlign.center,
                                                      textStyle: AppStyles
                                                          .text12PxRegular
                                                          .copyWith(
                                                        fontSize: 10,
                                                      ),
                                                      maxLines: 2,
                                                      overflow:
                                                      TextOverflow.ellipsis,
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
                                ),
                              ),
                              SizedBox(
                                height: 0.014 * scHeight,
                              ),

                              // // ad section
                              // if(response.data!.ads!.isNotEmpty &&
                              //     response.data!.ads!.length > 0)
                              //   Padding(
                              //     padding: EdgeInsets.symmetric(
                              //         horizontal: scWidth * 0.012),
                              //     child: Container(
                              //       // height: 0.21 * scHeight,
                              //       width: double.infinity,
                              //       decoration: BoxDecoration(
                              //         color: AppColor.appColor,
                              //         borderRadius: BorderRadius.circular(10),
                              //       ),
                              //       child: Row(
                              //         children: [
                              //           Expanded(
                              //             flex: 1,
                              //             child: Padding(
                              //               padding: EdgeInsets.symmetric(
                              //                   vertical: 0.035 * scHeight,
                              //                   horizontal: 0.042 * scWidth),
                              //               child: Column(
                              //                 crossAxisAlignment:
                              //                 CrossAxisAlignment.start,
                              //                 children: [
                              //                   Image.asset(
                              //                     AssetsHelper.sthlLogo,
                              //                     height: 0.02 * scHeight,
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.015 * scHeight,
                              //                   ),
                              //                   Texts(
                              //                     texts: 'New Arrivals',
                              //                     textStyle: AppStyles
                              //                         .text18PxSemiBold
                              //                         .copyWith(
                              //                       color: AppColor.whiteColor,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.004 * scHeight,
                              //                   ),
                              //                   Texts(
                              //                     texts: 'Up to 11% off',
                              //                     textStyle: AppStyles
                              //                         .text12PxRegular
                              //                         .copyWith(
                              //                       color: AppColor.whiteColor,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.009 * scHeight,
                              //                   ),
                              //                   ElevatedButton(
                              //                     onPressed: () {},
                              //                     child: Texts(
                              //                       texts: "Shop Now",
                              //                       textStyle: AppStyles
                              //                           .text14PxRegular
                              //                           .copyWith(
                              //                         color: AppColor.appColor,
                              //                       ),
                              //                     ),
                              //                   )
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //           Expanded(
                              //             flex: 1,
                              //             child: Image.asset(
                              //               AssetsHelper.banner2,
                              //               fit: BoxFit.contain,
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              //
                              // if(response.data!.ads!.isNotEmpty &&
                              //     response.data!.ads!.length > 0)
                              //   SizedBox(
                              //     height: 0.014 * scHeight,
                              //   ),
                              //
                              // // ad section

                              //shop by brands
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColor.whiteColor,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: scWidth * 0.029),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 0.029 * scHeight,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Texts(
                                              texts: 'Shop by Brands',
                                              textStyle:
                                              AppStyles.text14PxMedium,
                                            ),
                                            InkWell(
                                              onTap: () =>
                                                  AutoTabsRouter.of(context)
                                                      .setActiveIndex(3),
                                              child: Texts(
                                                texts: 'See All',
                                                textStyle: AppStyles
                                                    .text12PxRegular
                                                    .copyWith(
                                                  color: AppColor.appColor,
                                                  decoration:
                                                  TextDecoration.underline,
                                                  decorationColor:
                                                  AppColor.appColor,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 0.024 * scHeight,
                                        ),
                                        BlocProvider(
                                          create: (context) =>
                                          getIt<BrandsCubit>()
                                            ..getBrands(1),
                                          child: BlocBuilder<BrandsCubit,
                                              BrandsState>(
                                            builder: (context, state) {
                                              return state.when(
                                                initial: () =>
                                                const Center(
                                                  child:
                                                  CircularProgressIndicator(),
                                                ),
                                                loading: () =>
                                                const Center(
                                                  child:
                                                  CircularProgressIndicator(),
                                                ),
                                                error: (message) =>
                                                    Center(
                                                      child: Text(message),
                                                    ),
                                                noInternet: () =>
                                                const Center(
                                                  child: Text('No Internet'),
                                                ),
                                                success: (data) {
                                                  List<BrandsItemModel> brands =
                                                  [];
                                                  for (BrandsItemModel item
                                                  in data) {
                                                    // if(item.status == "featured"){
                                                    brands.add(item);
                                                    // }
                                                  }
                                                  return SizedBox(
                                                    height: 0.225 * scHeight,
                                                    child: GridView.builder(
                                                      controller: _gridScrollController,
                                                      scrollDirection:
                                                      Axis.horizontal,
                                                      // itemCount: brands.length,
                                                      itemCount: brands.length,
                                                      gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 2,
                                                        mainAxisSpacing:
                                                        0.013 * scWidth,
                                                        crossAxisSpacing:
                                                        0.024 * scHeight,
                                                      ),
                                                      itemBuilder:
                                                          (BuildContext context,
                                                          int index) {
                                                        return InkWell(
                                                          onTap: () =>
                                                              context
                                                                  .router
                                                                  .push(
                                                                BrandDetailScreenRoute(
                                                                    slug: brands[
                                                                    index]
                                                                        .slug!),
                                                              ),
                                                          child: Container(
                                                            width:
                                                            0.157 * scWidth,
                                                            // height: 0.086 * scHeight,
                                                            decoration:
                                                            BoxDecoration(
                                                              // color: AppColor.appColor.withOpacity(0.1),
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                  10),
                                                            ),
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                  0.014 *
                                                                      scWidth),
                                                              child: Column(
                                                                children: [
                                                                  Container(
                                                                    height: 0.128 *
                                                                        scWidth,
                                                                    width: 0.128 *
                                                                        scWidth,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: AppColor
                                                                          .whiteColor,
                                                                      boxShadow: [
                                                                        BoxShadow(
                                                                          color: AppColor
                                                                              .textGrey
                                                                              .withOpacity(
                                                                              0.1),
                                                                          spreadRadius:
                                                                          0,
                                                                          blurRadius:
                                                                          3,
                                                                          offset: const Offset(
                                                                              0,
                                                                              1),
                                                                        ),
                                                                      ],
                                                                      // color: AppColor.appColor.withOpacity(0.1),
                                                                      borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                          10),
                                                                    ),
                                                                    child:
                                                                    Center(
                                                                      child:
                                                                      CachedNetworkImage(
                                                                        imageUrl:
                                                                        '${StringHelper
                                                                            .brandImageBastUrl}${brands[index]
                                                                            .image!}',
                                                                        placeholder:
                                                                            (
                                                                            context,
                                                                            url) =>
                                                                        const CircularProgressIndicator(),
                                                                        errorWidget: (
                                                                            context,
                                                                            url,
                                                                            error) =>
                                                                            Image
                                                                                .asset(
                                                                                AssetsHelper
                                                                                    .placeHolder),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height: 0.01 *
                                                                        scHeight,
                                                                  ),
                                                                  Texts(
                                                                    texts: brands[index]
                                                                        .name ??
                                                                        '',
                                                                    textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                    textStyle: AppStyles
                                                                        .text12PxRegular
                                                                        .copyWith(
                                                                      fontSize:
                                                                      10,
                                                                    ),
                                                                    maxLines: 2,
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  );
                                                },
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


                              // if(response.data!.ads!.isNotEmpty &&
                              //     response.data!.ads!.length > 1)
                              //   Padding(
                              //     padding: EdgeInsets.symmetric(
                              //         horizontal: scWidth * 0.012),
                              //     child: Container(
                              //       // height: 0.21 * scHeight,
                              //       width: double.infinity,
                              //       decoration: BoxDecoration(
                              //         color: AppColor.appColor,
                              //         borderRadius: BorderRadius.circular(10),
                              //       ),
                              //       child: Row(
                              //         children: [
                              //           Expanded(
                              //             flex: 1,
                              //             child: Padding(
                              //               padding: EdgeInsets.symmetric(
                              //                   vertical: 0.035 * scHeight,
                              //                   horizontal: 0.042 * scWidth),
                              //               child: Column(
                              //                 crossAxisAlignment:
                              //                 CrossAxisAlignment.start,
                              //                 children: [
                              //                   Image.asset(
                              //                     AssetsHelper.sthlLogo,
                              //                     height: 0.02 * scHeight,
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.015 * scHeight,
                              //                   ),
                              //                   Texts(
                              //                     texts: 'New Arrivals',
                              //                     textStyle: AppStyles
                              //                         .text18PxSemiBold
                              //                         .copyWith(
                              //                       color: AppColor.whiteColor,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.004 * scHeight,
                              //                   ),
                              //                   Texts(
                              //                     texts: 'Up to 11% off',
                              //                     textStyle: AppStyles
                              //                         .text12PxRegular
                              //                         .copyWith(
                              //                       color: AppColor.whiteColor,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.009 * scHeight,
                              //                   ),
                              //                   ElevatedButton(
                              //                     onPressed: () {},
                              //                     child: Texts(
                              //                       texts: "Shop Now",
                              //                       textStyle: AppStyles
                              //                           .text14PxRegular
                              //                           .copyWith(
                              //                         color: AppColor.appColor,
                              //                       ),
                              //                     ),
                              //                   )
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //           Expanded(
                              //             flex: 1,
                              //             child: Image.asset(
                              //               AssetsHelper.banner2,
                              //               fit: BoxFit.contain,
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              //
                              // if(response.data!.ads!.isNotEmpty &&
                              //     response.data!.ads!.length > 1)
                              //   SizedBox(
                              //     height: 0.014 * scHeight,
                              //   ),

                              //featured products
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColor.whiteColor,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: scWidth * 0.029),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 0.029 * scHeight,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Texts(
                                            texts: 'Featured Products',
                                            textStyle: AppStyles.text14PxMedium,
                                          ),
                                          InkWell(
                                            onTap: () =>
                                                context.router.push(
                                                    FeaturedProductsScreenRoute(
                                                      products: featuredProducts,
                                                    )),
                                            child: Texts(
                                              texts: 'See All',
                                              textStyle: AppStyles
                                                  .text12PxRegular
                                                  .copyWith(
                                                color: AppColor.appColor,
                                                decoration:
                                                TextDecoration.underline,
                                                decorationColor:
                                                AppColor.appColor,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 0.024 * scHeight,
                                      ),
                                      SizedBox(
                                        height: 0.33 * scHeight,
                                        child: PageView.builder(
                                          controller:
                                          featuredProductPageController,
                                          onPageChanged: (index) {
                                            featuredProductIndex = index;
                                            setState(() {});
                                          },
                                          itemCount: (featuredProducts.length >
                                              8)
                                              ? 4
                                              : (featuredProducts.length / 2)
                                              .round(),
                                          itemBuilder: (context, index) {
                                            return Row(
                                              children: [
                                                Expanded(
                                                  flex: 1,
                                                  child: AppItemCard(
                                                    productModel:
                                                    featuredProducts[
                                                    index * 2],
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 0.021 * scWidth,
                                                ),
                                                Expanded(
                                                  flex: 1,
                                                  child: (featuredProducts
                                                      .length %
                                                      2 !=
                                                      0 &&
                                                      index ==
                                                          (featuredProducts
                                                              .length /
                                                              2)
                                                              .round() -
                                                              1)
                                                      ? Container()
                                                      : AppItemCard(
                                                    productModel:
                                                    featuredProducts[
                                                    index * 2 +
                                                        1],
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
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: List.generate(
                                          (featuredProducts.length > 8)
                                              ? 4
                                              : (featuredProducts.length / 2)
                                              .round(),
                                              (index) =>
                                              Container(
                                                height: 8.h,
                                                width: 8.w,
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 4.w),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color:
                                                  index == featuredProductIndex
                                                      ? AppColor.appColor
                                                      : AppColor.appColor
                                                      .withOpacity(0.2),
                                                ),
                                              ),
                                        ),
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

                              // if(response.data!.ads!.isNotEmpty &&
                              //     response.data!.ads!.length > 2)
                              //   Padding(
                              //     padding: EdgeInsets.symmetric(
                              //         horizontal: scWidth * 0.012),
                              //     child: Container(
                              //       // height: 0.21 * scHeight,
                              //       width: double.infinity,
                              //       decoration: BoxDecoration(
                              //         color: AppColor.appColor,
                              //         borderRadius: BorderRadius.circular(10),
                              //       ),
                              //       child: Row(
                              //         children: [
                              //           Expanded(
                              //             flex: 1,
                              //             child: Padding(
                              //               padding: EdgeInsets.symmetric(
                              //                   vertical: 0.035 * scHeight,
                              //                   horizontal: 0.042 * scWidth),
                              //               child: Column(
                              //                 crossAxisAlignment:
                              //                 CrossAxisAlignment.start,
                              //                 children: [
                              //                   Image.asset(
                              //                     AssetsHelper.sthlLogo,
                              //                     height: 0.02 * scHeight,
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.015 * scHeight,
                              //                   ),
                              //                   Texts(
                              //                     texts: 'New Arrivals',
                              //                     textStyle: AppStyles
                              //                         .text18PxSemiBold
                              //                         .copyWith(
                              //                       color: AppColor.whiteColor,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.004 * scHeight,
                              //                   ),
                              //                   Texts(
                              //                     texts: 'Up to 11% off',
                              //                     textStyle: AppStyles
                              //                         .text12PxRegular
                              //                         .copyWith(
                              //                       color: AppColor.whiteColor,
                              //                     ),
                              //                   ),
                              //                   SizedBox(
                              //                     height: 0.009 * scHeight,
                              //                   ),
                              //                   ElevatedButton(
                              //                     onPressed: () {},
                              //                     child: Texts(
                              //                       texts: "Shop Now",
                              //                       textStyle: AppStyles
                              //                           .text14PxRegular
                              //                           .copyWith(
                              //                         color: AppColor.appColor,
                              //                       ),
                              //                     ),
                              //                   )
                              //                 ],
                              //               ),
                              //             ),
                              //           ),
                              //           Expanded(
                              //             flex: 1,
                              //             child: Image.asset(
                              //               AssetsHelper.banner2,
                              //               fit: BoxFit.contain,
                              //             ),
                              //           ),
                              //         ],
                              //       ),
                              //     ),
                              //   ),
                              // if(response.data!.ads!.isNotEmpty &&
                              //     response.data!.ads!.length > 2)
                              //   SizedBox(
                              //     height: 0.014 * scHeight,
                              //   ),

                              //Recently viewed
                              BlocConsumer<HomeRecentlyViewedCubit,
                                  HomeRecentlyViewedState>(
                                builder: (BuildContext context, state) {
                                  return state.maybeWhen(
                                    orElse: () => Container(),
                                    initial: () =>
                                    const Center(
                                        child: Text('Wishlist is empty')),
                                    loading: () =>
                                    const Center(
                                        child: CircularProgressIndicator()),
                                    error: (message) =>
                                        Center(child: Text('Error: $message')),
                                    noInternet: () =>
                                    const Center(
                                        child: Text('No internet connection')),
                                    success: (products) {
                                      if (products.isEmpty) {
                                        return Container();
                                      } else {
                                        return Container(
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(8),
                                            color: AppColor.whiteColor,
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: scWidth * 0.029),
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 0.029 * scHeight,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Texts(
                                                      texts: 'Recently Viewed',
                                                      textStyle: AppStyles
                                                          .text14PxMedium,
                                                    ),
                                                    InkWell(
                                                      onTap: () =>
                                                          context.router.push(
                                                              const RecentlyViewedScreenRoute()),
                                                      child: Texts(
                                                        texts: 'See All',
                                                        textStyle: AppStyles
                                                            .text12PxRegular
                                                            .copyWith(
                                                          color:
                                                          AppColor.appColor,
                                                          decoration:
                                                          TextDecoration
                                                              .underline,
                                                          decorationColor:
                                                          AppColor.appColor,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 0.024 * scHeight,
                                                ),
                                                SizedBox(
                                                  height: 0.33 * scHeight,
                                                  child: PageView.builder(
                                                    controller:
                                                    recentlyViewedProductPageController,
                                                    onPageChanged: (index) {
                                                      recentlyViewedProductsIndex =
                                                          index;
                                                      setState(() {});
                                                    },
                                                    itemCount:
                                                    (products.length > 8)
                                                        ? 4
                                                        : (products.length /
                                                        2)
                                                        .round(),
                                                    itemBuilder:
                                                        (context, index) {
                                                      return Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 1,
                                                            child: AppItemCard(
                                                              productModel:
                                                              products[
                                                              index *
                                                                  2],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width:
                                                            0.021 * scWidth,
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: (products
                                                                .length %
                                                                2 !=
                                                                0 &&
                                                                index ==
                                                                    (products
                                                                        .length /
                                                                        2)
                                                                        .round() -
                                                                        1)
                                                                ? Container()
                                                                : AppItemCard(
                                                              productModel:
                                                              products[
                                                              index * 2 +
                                                                  1],
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
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: List.generate(
                                                    (products.length > 8)
                                                        ? 4
                                                        : (products.length / 2)
                                                        .round(),
                                                        (index) =>
                                                        Container(
                                                          height: 8.h,
                                                          width: 8.w,
                                                          margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 4.w),
                                                          decoration: BoxDecoration(
                                                            shape: BoxShape
                                                                .circle,
                                                            color: index ==
                                                                recentlyViewedProductsIndex
                                                                ? AppColor
                                                                .appColor
                                                                : AppColor
                                                                .appColor
                                                                .withOpacity(
                                                                0.2),
                                                          ),
                                                        ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.029 * scHeight,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }
                                    },
                                  );
                                },
                                listener: (context, state) {
                                  state.maybeWhen(
                                    success: (data) {
                                      setState(() {});
                                    },
                                    orElse: () {},
                                  );
                                },
                              ),
                              SizedBox(
                                height: 0.014 * scHeight,
                              ),

                              if (response.data!.noticead! != null &&
                                  response.data!.noticead!.isNotEmpty)
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: scWidth * 0.012),
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
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
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
                                                  textStyle: AppStyles
                                                      .text18PxSemiBold
                                                      .copyWith(
                                                    color: AppColor.whiteColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.004 * scHeight,
                                                ),
                                                Texts(
                                                  texts: 'Up to 11% off',
                                                  textStyle: AppStyles
                                                      .text12PxRegular
                                                      .copyWith(
                                                    color: AppColor.whiteColor,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 0.009 * scHeight,
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {},
                                                  child: Texts(
                                                    texts: "Shop Now",
                                                    textStyle: AppStyles
                                                        .text14PxRegular
                                                        .copyWith(
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
                              if (response.data!.noticead! != null &&
                                  response.data!.noticead!.isNotEmpty)
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
                                AppColor.whiteColor,
                                AppColor.scaffoldBg,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: scWidth * 0.042),
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

                                ListView.builder(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return StickyHeader(
                                      overlapHeaders: false,
                                      header: SizedBox(
                                        height: 0.12 * scHeight,
                                        width: scWidth,
                                        child: ListView.separated(
                                          shrinkWrap: true,
                                          scrollDirection: Axis.horizontal,
                                          itemCount: apCategory.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: (){
                                                setState(() {
                                                  allProductCategory = apCategory[index]["slug"].trim();
                                                });
                                                if(allProductCategory == "all"){
                                                  print("Tapped ALL");

                                                  context.read<HomeAllProductsCubit>().getAllProducts(1);
                                                }else{
                                                  print("Tapped ALL Hello");

                                                  context.read<HomeAllProductsCubit>().getProductsByCategory(apCategory[index]["slug"].trim(), 1);
                                                }
                                              },
                                              child:Container(
                                                padding: EdgeInsets.all(0.03 * scWidth),
                                                width: 0.213 * scWidth,
                                                decoration: BoxDecoration(
                                                  color: (allProductCategory == apCategory[index]['slug'])?AppColor.appColor.withOpacity(0.3):Color(0xffFBFBFB),
                                                  borderRadius:
                                                  BorderRadius.circular(8),
                                                  border: Border.all(
                                                    color: (allProductCategory == apCategory[index]['slug'])?AppColor.appColor:Color(0xffFBFBFB),
                                                    width: 1,
                                                  ),
                                                ),
                                                child: Center(
                                                  child: Column(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [
                                                        CircleAvatar(
                                                          radius: 0.042 * scWidth,
                                                          backgroundColor:
                                                          apColors[index][1],
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
                                                          texts:
                                                          apCategory[index]["name"].trim(),
                                                          textStyle: AppStyles
                                                              .text12PxRegular
                                                              .copyWith(
                                                              fontSize: 10.sp,
                                                              color: apColors[index]
                                                              [0]),
                                                        )
                                                      ]),
                                                ),
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
                                      content: BlocConsumer<HomeAllProductsCubit,
                                          HomeAllProductsState>(
                                        listener: (context, state) {},
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            orElse: () {
                                              return Container();
                                            },
                                            success: (data) {
                                              allProducts = data;

                                              return GridView.builder(
                                                physics:
                                                const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: allProducts.length,
                                                gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 0.021 * scWidth,
                                                  mainAxisSpacing: 0.021 * scHeight,
                                                  childAspectRatio: 0.7,
                                                ),
                                                itemBuilder: (context, index) {
                                                  return AppItemCard(
                                                    productModel: allProducts[index],
                                                  );
                                                },
                                              );
                                            },
                                            loading: () {
                                              return Column(
                                                children: [
                                                  GridView.builder(
                                                    physics:
                                                    const NeverScrollableScrollPhysics(),
                                                    shrinkWrap: true,
                                                    itemCount: allProducts.length,
                                                    gridDelegate:
                                                    SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 2,
                                                      crossAxisSpacing:
                                                      0.021 * scWidth,
                                                      mainAxisSpacing:
                                                      0.021 * scHeight,
                                                      childAspectRatio: 0.7,
                                                    ),
                                                    itemBuilder: (context, index) {
                                                      return AppItemCard(
                                                        productModel:
                                                        allProducts[index],
                                                      );
                                                    },
                                                  ),
                                                  SizedBox(
                                                    height: 0.048 * scHeight,
                                                  ),
                                                  const Center(
                                                    child: CircularProgressIndicator(),
                                                  ),
                                                ],
                                              );
                                            },
                                            error: (message) {
                                              return GridView.builder(
                                                physics:
                                                const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                itemCount: allProducts.length,
                                                gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                  crossAxisCount: 2,
                                                  crossAxisSpacing: 0.021 * scWidth,
                                                  mainAxisSpacing: 0.021 * scHeight,
                                                  childAspectRatio: 0.7,
                                                ),
                                                itemBuilder: (context, index) {
                                                  return AppItemCard(
                                                    productModel: allProducts[index],
                                                  );
                                                },
                                              );
                                            },
                                          );
                                        },
                                      ),


                                    );
                                  },
                                ),

                                // SizedBox(
                                //   height: 0.024 * scHeight,
                                // ),
                                // BlocProvider(
                                //   create: (context) =>
                                //       getIt<HomeAllProductsCubit>()
                                //         ..getAllProducts(pageNumber),
                                //   child: BlocBuilder<HomeAllProductsCubit,
                                //       HomeAllProductsState>(
                                //     builder: (BuildContext context,
                                //         HomeAllProductsState state) {
                                //       return state.when(
                                //         initial: () => const Center(
                                //           child: CircularProgressIndicator(),
                                //         ),
                                //         loading: () => const Center(
                                //           child: CircularProgressIndicator(),
                                //         ),
                                //         error: (message) => Center(
                                //           child: Text(message),
                                //         ),
                                //         noInternet: () => const Center(
                                //           child: Text('No Internet'),
                                //         ),
                                //         success: (data) {
                                //           final List<ProductModel> allProducts =
                                //               data;
                                //
                                //           return GridView.builder(
                                //             physics:
                                //                 const NeverScrollableScrollPhysics(),
                                //             shrinkWrap: true,
                                //             itemCount: allProducts.length,
                                //             gridDelegate:
                                //                 SliverGridDelegateWithFixedCrossAxisCount(
                                //               crossAxisCount: 2,
                                //               crossAxisSpacing: 0.021 * scWidth,
                                //               mainAxisSpacing: 0.021 * scHeight,
                                //               childAspectRatio: 0.7,
                                //             ),
                                //             itemBuilder: (context, index) {
                                //               return AppItemCard(
                                //                 productModel:
                                //                     allProducts[index],
                                //               );
                                //             },
                                //           );
                                //         },
                                //       );
                                //     },
                                //   ),
                                // ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.048 * scHeight,
                        ),
                      ],
                    ),
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
