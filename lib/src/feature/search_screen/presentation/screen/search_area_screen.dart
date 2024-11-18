import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart';
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_history_cubit.dart';

import '../../../../core/di/injection.dart';
import '../../../../core/helpers/snackbar_helper.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../item_detail_screen/presentation/cubit/add_to_cart_cubit.dart';
import '../../../item_detail_screen/presentation/screen/item_detail_screen.dart';
import '../cubit/search_cubit.dart';

class SearchAreaScreenPage extends StatefulWidget {
  const SearchAreaScreenPage({super.key});

  @override
  State<SearchAreaScreenPage> createState() => _SearchAreaScreenPageState();
}

class _SearchAreaScreenPageState extends State<SearchAreaScreenPage> {
  final TextEditingController searchController = TextEditingController();

  final FocusNode _focusNode = FocusNode();

  bool showCancel = false;

  bool searchInvoked = false;

  bool isGrid = true;

  final List<String> itemList = [
    "Brommer 157",
    "Bike 1574",
    "Car 14",
    "Cycle 12",
    "Truck 195"
  ];

  final List<String> sortBy = [
    "Popularity",
    "Price Low to High",
    "Price High To Low",
  ];
  List<String> searchList = [];

  @override
  void initState() {
    context.read<HomeRecentlyViewedCubit>().getRecentlyViewedProducts();
    _focusNode.requestFocus();

    context.read<SearchHistoryCubit>().getSearchHistory();
    super.initState();
  }

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
              // AssetsHelper.backBtn,
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
              child: Container(
                // color: AppColor.appColor,
                decoration: BoxDecoration(
                  color: _focusNode.hasFocus
                      ? AppColor.appColor.withOpacity(0.2)
                      : AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 0.05 * scHeight,
                child: TextField(
                  onSubmitted: (value) {
                    context.read<SearchHistoryCubit>().addSearchHistory(value);
                    context.read<SearchCubit>().searchProducts(value);
                    setState(
                      () {
                        searchInvoked = true;
                      },
                    );
                  },
                  focusNode: _focusNode,
                  controller: searchController,
                  onChanged: (value) => onChanged(value),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: _focusNode.hasFocus
                          ? AppColor.appColor
                          : AppColor.textGrey,
                    ),
                    suffixIcon: showCancel
                        ? IconButton(
                            onPressed: () {
                              searchController.clear();
                              setState(
                                () {
                                  showCancel = false;
                                },
                              );
                            },
                            icon: const Icon(
                              Icons.cancel,
                              color: AppColor.textGrey,
                            ),
                          )
                        : null,
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                      borderSide: BorderSide(color: AppColor.appColor),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
                    hintText:
                        _focusNode.hasFocus ? null : 'Search Product Here',
                    hintStyle: const TextStyle(
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
            (searchInvoked) ? SizedBox(width: 0.021 * scWidth) : Container(),
            (searchInvoked)
                ? Expanded(
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
                  )
                : Container(),
            (searchInvoked) ? SizedBox(width: 0.021 * scWidth) : Container(),
            (searchInvoked)
                ? Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () => context.router.push(SearchFilterScreenRoute(
                          searchText: searchController.text)),
                      child: Image.asset(
                        AssetsHelper.filterIcon,
                        color: AppColor.black,
                        height: 0.064 * scWidth,
                        width: 0.064 * scWidth,
                      ),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(
              color: AppColor.textGrey.withOpacity(0.2),
              height: 1,
              endIndent: 0,
              indent: 0,
            ),
            Container(
              color: AppColor.whiteColor,
              padding: EdgeInsets.symmetric(
                  horizontal: 0.042 * scWidth, vertical: 0.009 * scHeight),
              child: Row(
                children: [
                  DropdownMenu<String>(
                    leadingIcon: Icon(Icons.swap_vert),
                    inputDecorationTheme: InputDecorationTheme(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColor.grey.withOpacity(0.2),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                          color: AppColor.appColor,
                        ),
                      ),
                      contentPadding: EdgeInsets.zero,
                      fillColor: AppColor.appColor.withOpacity(0.2),
                    ),
                    onSelected: (value) {
                      context.read<SearchCubit>().filterProducts(
                            searchText: searchController.text,
                            sortBy: sortBy.indexOf(value!),
                          );
                    },
                    width: 0.5 * scWidth,
                    requestFocusOnTap: true,
                    // menuHeight: 0.3 * scHeight,
                    initialSelection: sortBy.first,
                    dropdownMenuEntries: sortBy
                        .map<DropdownMenuEntry<String>>(
                          (e) => DropdownMenuEntry(value: e, label: e),
                        )
                        .toList(),
                  ),
                  // SizedBox(width: 0.021 * scWidth),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     // color: AppColor.appColor.withOpacity(0.2),
                  //     borderRadius: BorderRadius.circular(8),
                  //     border: Border.all(
                  //       width: 1,
                  //       color: AppColor.textGrey,
                  //     ),
                  //   ),
                  //   padding: EdgeInsets.all(0.009 * scHeight),
                  //   child: Row(
                  //     children: [
                  //       Texts(
                  //         texts: "Category",
                  //         textStyle: AppStyles.text14PxRegular,
                  //       ),
                  //       SizedBox(width: 0.014 * scWidth),
                  //       const Icon(
                  //         Icons.keyboard_arrow_down_outlined,
                  //         size: 13,
                  //         color: AppColor.textGrey,
                  //       )
                  //     ],
                  //   ),
                  // ),
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
                        color: isGrid ? AppColor.appColor : AppColor.textGrey,
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
                      color: !isGrid ? AppColor.appColor : AppColor.textGrey,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            (searchInvoked)
                ? Column(children: [
                    BlocConsumer<SearchCubit, SearchState>(
                      listener: (context, state) {
                        state.maybeMap(
                          orElse: () {},
                          loading: (value) {
                            // ignore: avoid_print
                            print("Loading");
                          },
                          error: (value) {
                            // ignore: avoid_print
                            print("Error");
                          },
                          noInternet: (value) {
                            // ignore: avoid_print
                            print("No Internet");
                          },
                          success: (value) {
                            // ignore: avoid_print
                            print("Success");
                          },
                        );
                      },
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => Container(),
                          loading: () {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          success: (data) {
                            var items = data.data!.data!.products!.data!;

                            if (items.isEmpty) {
                              return Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.1 * scWidth),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 0.120 * scHeight,
                                      ),
                                      Image.asset(AssetsHelper.emptyLogo),
                                      SizedBox(
                                        height: 0.0590 * scHeight,
                                      ),
                                      Texts(
                                        texts: "No Results Found",
                                        textStyle: AppStyles.text20PxSemiBold,
                                      ),
                                      SizedBox(
                                        height: 0.008 * scHeight,
                                      ),
                                      Texts(
                                        textAlign: TextAlign.center,
                                        texts:
                                            "Sorry, we cannot find any matches \n for your search. ",
                                        textStyle:
                                            AppStyles.text16PxRegular.copyWith(
                                          color: AppColor.textGrey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.042 * scWidth,
                                    vertical: 0.009 * scHeight),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Texts(
                                      texts: "Showing ${items.length} results",
                                      textStyle: AppStyles.text12PxRegular,
                                    ),
                                    SizedBox(height: 0.014 * scHeight),
                                    (isGrid)
                                        ? GridView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: items.length,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              crossAxisSpacing: 0.021 * scWidth,
                                              mainAxisSpacing: 0.021 * scHeight,
                                              childAspectRatio: 0.7,
                                            ),
                                            itemBuilder: (context, index) {
                                              return AppItemCard(
                                                  productModel: items[index]);
                                              // return Container();
                                            },
                                          )
                                        : ListView.separated(
                                            shrinkWrap: true,
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemBuilder: (context, index) =>
                                                ItemListCardWidget(
                                              scHeight: scHeight,
                                              scWidth: scWidth,
                                              productModel: items[index],
                                            ),
                                            separatorBuilder:
                                                (context, index) => SizedBox(
                                              height: 0.009 * scHeight,
                                            ),
                                            itemCount: items.length,
                                          )
                                  ],
                                ),
                              );
                            }
                          },
                        );
                      },
                    ),
                  ])
                : (searchController.text.trim().isNotEmpty)
                    ? searchListWidget(
                        scWidth: scWidth,
                        scHeight: scHeight,
                        searchList: searchList,
                        searchController: searchController,
                      )
                    : searchPageWidget(
                        scWidth: scWidth,
                        scHeight: scHeight,
                        searchController: searchController,
                      ),
          ],
        ),
      ),
    );
  }

  onChanged(String value) {
    if (value.isNotEmpty) {
      searchList.clear();
      for (var element in itemList) {
        if (element.toLowerCase().contains(value.toLowerCase())) {
          searchList.add(element);
        }
      }
      searchList.forEach(
        (element) {
          print(element);
        },
      );
      setState(
        () {
          searchInvoked = false;
          showCancel = true;
        },
      );
    } else {
      setState(
        () {
          showCancel = false;
        },
      );
    }
  }
}

class searchPageWidget extends StatelessWidget {
  const searchPageWidget({
    super.key,
    required this.scWidth,
    required this.scHeight,
    required this.searchController,
  });

  final double scWidth;
  final double scHeight;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.019 * scHeight,
          ),
          Row(
            children: [
              Text(
                'Search History',
                style: AppStyles.text14PxRegular,
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  context.read<SearchHistoryCubit>().clearSearchHistory();
                },
                child: const Icon(
                  Icons.delete_outline,
                  color: AppColor.textGrey,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 0.019 * scHeight,
          ),
          BlocConsumer<SearchHistoryCubit, SearchHistoryState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => Container(),
                loading: () {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                success: (data) {
                  if (data.isEmpty) {
                    return Center(
                      child: Texts(
                        texts: "Search History is empty.",
                        textStyle: AppStyles.text14PxRegular.copyWith(
                          color: AppColor.appColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                    Texts(
                      texts: "Search History is empty.",
                      textStyle: AppStyles.text14PxRegular.copyWith(
                        color: AppColor.appColor,
                      ),
                      textAlign: TextAlign.center,
                    );
                  }
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        // height: 0.1 * scHeight,
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: data.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 0.021 * scWidth,
                            mainAxisSpacing: 0.009 * scHeight,
                            childAspectRatio: scWidth / (scHeight / 4),
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                searchController.text = "${data[index]}";
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.032 * scWidth,
                                    vertical: 0.004 * scHeight),
                                decoration: BoxDecoration(
                                  // color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    width: 1,
                                    color: AppColor.textGrey.withOpacity(0.5),
                                  ),
                                ),
                                child: Center(
                                  child: Texts(
                                    texts: "${data[index]}",
                                    textStyle:
                                        AppStyles.text12PxRegular.copyWith(
                                      color: AppColor.textGrey,
                                    ),
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
              );
            },
          ),
          SizedBox(
            height: 0.029 * scHeight,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.022 * scWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts(
                  texts: "Recently Viewed Products",
                  textStyle: AppStyles.text14PxRegular,
                ),
                SizedBox(
                  height: 0.019 * scHeight,
                ),

                BlocConsumer<HomeRecentlyViewedCubit, HomeRecentlyViewedState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Container(),
                      loading: () {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                      success: (data) {
                        print("Data=====asdfasdf");
                        print(data);
                        print(data.length);

                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          // scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              // Optional padding for spacing between items
                              child: ItemListCardWidget(
                                scWidth: scWidth,
                                scHeight: scHeight,
                                productModel: data[index],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                  listener: (context, state) {
                    state.maybeMap(
                      orElse: () {},
                      loading: (value) {
                        // ignore: avoid_print
                        print("Loading");
                      },
                      error: (value) {
                        // ignore: avoid_print
                        print("Error");
                      },
                      noInternet: (value) {
                        // ignore: avoid_print
                        print("No Internet");
                      },
                      success: (value) {
                        // ignore: avoid_print
                        print("Success");
                      },
                    );
                  },
                ),
                // ListView.separated(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemBuilder: (context, index) => Container(),
                //   // ItemListCardWidget(scWidth: scWidth),
                //   separatorBuilder: (context, index) => SizedBox(
                //     height: 0.030 * scHeight,
                //   ),
                //   itemCount: 10,
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemListCardWidget extends StatelessWidget {
  const ItemListCardWidget({
    super.key,
    required this.scWidth,
    required this.scHeight,
    required this.productModel,
  });

  final double scWidth;
  final double scHeight;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router
          .push(ItemDetailScreenRoute(productModel: productModel)),
      child: Container(
        padding: EdgeInsets.all(0.03 * scWidth),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 0.2 * scWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  // color: AppColor.appColor,
                ),
                child: Center(
                  child: CachedNetworkImage(
                    alignment: Alignment.center,
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
              width: 0.021 * scWidth,
            ),
            Expanded(
              flex: 3,
              child: SizedBox(
                // color: AppColor.appColor.withOpacity(0.2),
                height: 0.2175 * scWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Texts(
                      texts: "${productModel.name}",
                      textStyle: AppStyles.text14PxRegular,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // const Divider(),
                    Texts(
                      texts: "Rs. ${productModel.price}",
                      textStyle: AppStyles.text14PxMedium.copyWith(
                        color: AppColor.appColor,
                      ),
                    ),
                    // const Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 16,
                            ),
                            SizedBox(
                              width: 0.01 * scWidth,
                            ),
                            Texts(
                              texts: "4.5/5  71 Reviews",
                              textStyle: AppStyles.text12PxRegular.copyWith(
                                color: AppColor.textGrey,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),

                        //here here
                        // BlocListener<AddToCartCubit, AddToCartState>(
                        //   listener: (BuildContext context, AddToCartState state) {
                        //     state.maybeWhen(
                        //       orElse: () => Container(),
                        //       success: (data) {
                        //         ScaffoldMessenger.of(context).showSnackBar(
                        //           SnackBar(
                        //             padding: EdgeInsets.zero,
                        //             shape: RoundedRectangleBorder(
                        //               borderRadius: BorderRadius.circular(11),
                        //             ),
                        //             content: Container(
                        //               padding: EdgeInsets.all(0.037 * scWidth),
                        //               child: Row(
                        //                 children: [
                        //                   Column(
                        //                     children: [
                        //                       Texts(
                        //                         texts: "Item added to cart",
                        //                         textStyle: AppStyles.text14PxMedium
                        //                             .copyWith(
                        //                             color: AppColor.whiteColor),
                        //                       ),
                        //                       SizedBox(
                        //                         height: 0.0041 * scHeight,
                        //                       ),
                        //                       Texts(
                        //                         texts: "Continue to Checkout",
                        //                         textStyle: AppStyles.text12PxRegular
                        //                             .copyWith(
                        //                             color: AppColor.whiteColor),
                        //                       ),
                        //                     ],
                        //                   ),
                        //                   const Spacer(),
                        //                   AppButton(
                        //                     scWidth: scWidth,
                        //                     scHeight: scHeight,
                        //                     title: "Continue",
                        //                     onTap: () {
                        //                       context.router
                        //                           .push(const CartScreenRoute());
                        //                     },
                        //                     hollow: true,
                        //                   )
                        //                 ],
                        //               ),
                        //             ),
                        //             duration: Duration(seconds: 3),
                        //             behavior: SnackBarBehavior.floating,
                        //             backgroundColor: AppColor.appColor,
                        //           ),
                        //         );
                        //       },
                        //       loading: () =>
                        //       const Center(child: CircularProgressIndicator()),
                        //       error: (String message) {
                        //         SnackBarHelper.showSnackBar(
                        //           message: message,
                        //           context: context,
                        //           isError: true,
                        //         );
                        //       },
                        //       noInternet: () {
                        //         SnackBarHelper.showSnackBar(
                        //           message: "No Internet Connection",
                        //           context: context,
                        //           isError: true,
                        //         );
                        //       },
                        //     );
                        //   },
                        //   child: BlocBuilder<AddToCartCubit, AddToCartState>(
                        //     builder: (context, state) {
                        //       bool isLoading = state.maybeWhen(
                        //         orElse: () => false,
                        //         loading: () => true,
                        //         // error: (String message) => false,
                        //       );
                        //
                        //       return InkWell(
                        //         onTap: () {
                        //           if (!isLoading) {
                        //             context
                        //                 .read<AddToCartCubit>()
                        //                 .addToCart(productModel.id.toString(), "1");
                        //           }
                        //         },
                        //         child: Container(
                        //           width: double.infinity,
                        //           // height: 0.036 * scHeight,
                        //           decoration: BoxDecoration(
                        //             // color: AppColor.appColor,
                        //             borderRadius: BorderRadius.circular(4),
                        //             border: Border.all(
                        //               color: AppColor.greyButtonBorder,
                        //               width: 1,
                        //             ),
                        //           ),
                        //           child: Padding(
                        //             padding: EdgeInsets.symmetric(
                        //                 horizontal: 0.089 * scWidth,
                        //                 vertical: 0.009 * scHeight),
                        //             child: Center(
                        //               child: Row(
                        //                 mainAxisAlignment: MainAxisAlignment.center,
                        //                 children: [
                        //                   Texts(
                        //                     texts: (isLoading)
                        //                         ? 'Adding...'
                        //                         : 'Add to Cart',
                        //                     textStyle:
                        //                     AppStyles.text12PxRegular.copyWith(
                        //                       color: AppColor.greyButtonText,
                        //                       fontSize: 10,
                        //                     ),
                        //                   ),
                        //                   SizedBox(
                        //                     width: 0.01 * scWidth,
                        //                   ),
                        //                   const Icon(
                        //                     Icons.shopping_bag_outlined,
                        //                     color: AppColor.greyButtonText,
                        //                     size: 9,
                        //                   )
                        //                 ],
                        //               ),
                        //             ),
                        //           ),
                        //         ),
                        //       );
                        //     },
                        //   ),
                        // ),

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
                                // bool isLoading = state.maybeWhen(
                                //   orElse: () => false,
                                //   loading: () => true,
                                //   // error: (String message) => false,
                                // );

                                return PopupMenuButton<String>(
                                  iconSize: 16,
                                  // initialValue: "Hello World",
                                  onSelected: (String item) {
                                    print(item);
                                    if(item == "Add To Cart"){
                                      context.read<AddToCartCubit>().addToCart(productModel.id!.toString(), 1.toString());
                                    }else{
                                      context.router.push(ItemDetailScreenRoute(productModel: productModel));
                                    }
                                  },
                                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                    const PopupMenuItem<String>(
                                      value: "Add To Cart",
                                      child: Text('Add To Cart'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: "View",
                                      child: Text('View'),
                                    ),
                                    // const PopupMenuItem<String>(
                                    //   value: "SampleItem.itemThree",
                                    //   child: Text('Item 3'),
                                    // ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ),

                        // const Icon(
                        //   Icons.more_vert,
                        //   color: AppColor.textGrey,
                        //   size: 16,
                        // ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class searchListWidget extends StatelessWidget {
  const searchListWidget({
    super.key,
    required this.scWidth,
    required this.scHeight,
    required this.searchList,
    required this.searchController,
  });

  final double scWidth;
  final double scHeight;
  final List<String> searchList;
  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => SizedBox(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 0.042 * scWidth, vertical: 0.019 * scHeight),
          child: InkWell(
            onTap: () {
              searchController.text = searchList[index];
            },
            child: Row(
              children: [
                const Icon(
                  Icons.search,
                  size: 16,
                  color: AppColor.textGrey,
                ),
                SizedBox(width: 0.032 * scWidth),
                Texts(
                  texts: searchList[index],
                  textStyle: AppStyles.text14PxRegular,
                ),
              ],
            ),
          ),
        ),
      ),
      itemCount: searchList.length,
    );
  }
}
