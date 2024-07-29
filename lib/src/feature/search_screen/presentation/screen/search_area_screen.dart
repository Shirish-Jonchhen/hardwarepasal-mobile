import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

import '../../../../core/helpers/string_helper.dart';
import '../../../../core/widgets/app_item_card.dart';
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
    _focusNode.requestFocus();
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
                  horizontal: 0.042 * scWidth,
                  vertical: 0.009 * scHeight),
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
                      color: !isGrid
                          ? AppColor.appColor
                          : AppColor.textGrey,
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

                            if(items.isEmpty){
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
                                        texts: "No Results Found",
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

                                    ],
                                  ),
                                ),

                              );
                            }else{
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
                                            scWidth: scWidth,
                                            productModel: items[index],
                                          ),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
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
              const Icon(
                Icons.delete_outline,
                color: AppColor.textGrey,
              ),
            ],
          ),
          SizedBox(
            height: 0.019 * scHeight,
          ),
          SizedBox(
            // height: 0.1 * scHeight,
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: 7,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 0.021 * scWidth,
                mainAxisSpacing: 0.009 * scHeight,
                childAspectRatio: scWidth / (scHeight / 4),
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    searchController.text = "Product $index";
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
                        texts: "Product $index",
                        textStyle: AppStyles.text12PxRegular.copyWith(
                          color: AppColor.textGrey,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.022 * scWidth),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Texts(
                  texts: "Recently Viewed Product",
                  textStyle: AppStyles.text14PxRegular,
                ),
                SizedBox(
                  height: 0.019 * scHeight,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => Container(),
                  // ItemListCardWidget(scWidth: scWidth),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 0.030 * scHeight,
                  ),
                  itemCount: 10,
                )
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
    required this.productModel,
  });

  final double scWidth;
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router
          .push(ItemDetailScreenRoute(productModel: productModel)),
      child: Container(
        padding: EdgeInsets.all(0.032 * scWidth),
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
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColor.lightGreyBg),
                child: Center(
                  child: CachedNetworkImage(
                    imageUrl:
                        '${StringHelper.coverImageBaseUrl}${productModel.cover_image}',
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
                height: 0.2 * scWidth,
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
                        const Icon(
                          Icons.more_vert,
                          color: AppColor.textGrey,
                          size: 16,
                        ),
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
