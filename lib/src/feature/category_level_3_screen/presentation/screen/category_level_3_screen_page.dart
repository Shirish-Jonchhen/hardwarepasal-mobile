import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/model/brand_details_model/brand_details_model.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/model/category_wise_products_model/category_wise_products_model.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/presentation/cubit/category_wise_products_cubit.dart';
import 'package:hardwarepasal/src/feature/category_screen/data/model/category_model/category_model.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/error_widget.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/loading_widget.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../search_screen/presentation/screen/search_area_screen.dart';

class CategoryLevel3ScreenPage extends StatefulWidget {
  const CategoryLevel3ScreenPage({super.key, required this.slug});

  final String slug;

  @override
  State<CategoryLevel3ScreenPage> createState() =>
      _CategoryLevel3ScreenPageState();
}

class _CategoryLevel3ScreenPageState extends State<CategoryLevel3ScreenPage> {
  int selectedIndex = -1;
  bool isGrid = true;

  ScrollController _scrollController = ScrollController();
  ApiResponse<CategoryWiseProductsResponseModel> tempData =
      ApiResponse<CategoryWiseProductsResponseModel>(
    data: const CategoryWiseProductsResponseModel(
      data: CategoryWiseProductsDataModel(
          data: CategoryWiseProductsInnerDataModel(
        grouping_catlist: [],
        category: CategoryItemModel(
          id: 0,
          name: "",
          slug: "",
          image_url: "",
          sub_categories: [],
          status: "",
          created_at: "",
          updated_at: "",
          created_by: 0,
          description: "",
          diaplay: 0,
          display_text: "",
          icon: "",
          iconclass: "",
          is_grouping: 0,
          meta_description: "",
          meta_keywords: "",
          meta_title: "",
          offer_text: "",
          public_path: "",
          show_on_home: "",
          sup_cat_id: 0,
          svg_icon: "",
          updated_by: 0,

        ),
        filteredCategories: [],
        brand_list: [],
        colorList: [],
        products: BrandDetailsProductsModel(
          data: [],
        ),

      )),
      id: 0,
      message: "no message"
    ),
        message: "no message",
        error: "no error",
  );
  List<ProductModel> allProducts = [];

  @override
  void initState() {
    _scrollController.addListener(
      () {
        print(_scrollController.position.maxScrollExtent);
        print(_scrollController.position.pixels);

        if (_scrollController.position.maxScrollExtent ==
            _scrollController.position.pixels) {
          // pageNumber++;
          context.read<CategoryWiseProductsCubit>().loadMoreProducts(
              slug: widget.slug, Range: ["0", "999999999999999"]);
          print("puggio hai last ma last ma last ma");
        }
      },
    );

    context.read<CategoryWiseProductsCubit>().getCategoryWiseProducts(
        slug: widget.slug, Range: ["0", "999999999999999"]);
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
            SizedBox(width: 0.021 * scWidth),
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
                onTap: () => context.router.push(SearchFilterScreenRoute(
                    searchText: widget.slug, fromCategoryLevel3: true)),
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
      body: BlocConsumer<CategoryWiseProductsCubit, CategoryWiseProductsState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            success: (data) {
              setState(() {});
            },
            loading: (_) {},
            error: (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.message),
                ),
              );
            },
          );
        },
        builder: (BuildContext context, state) {
          return state.maybeWhen(
            orElse: () => SizedBox(),
            loading: (){
              print(tempData.message);
              if(tempData.message == "no message"){
                print("if ma kina chairrio");
                return const LoadingWidget();
              }else{
                print("Else ma kina chittio");
                allProducts = tempData.data!.data!.data!.products!.data!;
                List<BrandListModel> brands = tempData.data!.data!.data!.brand_list!;
                List<CategoryItemModel> subCategories =
                tempData.data!.data!.data!.category!.sub_categories!;
                return RefreshIndicator(
                  onRefresh: () async {
                    context
                        .read<CategoryWiseProductsCubit>()
                        .getCategoryWiseProducts(slug: widget.slug);
                  },
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      children: [
                        if (subCategories.isNotEmpty)
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
                              itemCount: subCategories.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      selectedIndex = index;
                                    });
                                    context
                                        .read<CategoryWiseProductsCubit>()
                                        .getCategoryWiseProducts(
                                        slug: subCategories[index].slug!,
                                        Range: [
                                          "0",
                                          "9999999999999999999999999999"
                                        ]);
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
                                            borderRadius:
                                            BorderRadius.circular(8),
                                          ),
                                          child: Center(
                                            child: CachedNetworkImage(
                                              height: 0.061 * scHeight,
                                              width: 0.18 * scWidth,
                                              // imageUrl: "${StringHelper.productCategoryImageBastUrl}${subCategories[index].icon}",
                                              imageUrl: subCategories[index]
                                                  .image_url ??
                                                  "",
                                              placeholder: (context, url) =>
                                              const CircularProgressIndicator(),
                                              errorWidget: (context, url,
                                                  error) =>
                                                  Image.asset(
                                                      AssetsHelper.placeHolder),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 0.006 * scHeight),
                                        Texts(
                                          texts:
                                          subCategories[index].name!.length <=
                                              12
                                              ? subCategories[index].name!
                                              : subCategories[index]
                                              .name!
                                              .substring(0, 12) +
                                              "...",
                                          textStyle:
                                          AppStyles.text12PxRegular.copyWith(
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
                              separatorBuilder:
                                  (BuildContext context, int index) =>
                                  SizedBox(width: 0.021 * scWidth),
                            ),
                          ),
                        SizedBox(height: (12 / 812) * scHeight),
                        Column(
                          children: [
                            if (brands.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.006 * scWidth),
                                child: Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(0.042 * scWidth),
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Texts(
                                          texts: 'Brands',
                                          textStyle:
                                          AppStyles.text14PxMedium.copyWith(
                                            color: AppColor.black,
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                        SizedBox(height: 0.024 * scHeight),
                                        SizedBox(
                                          height: 0.1 * scHeight,
                                          child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: brands.length,
                                            itemBuilder: (context, index) {
                                              return InkWell(
                                                onTap: () => context.router.push(
                                                    BrandDetailScreenRoute(
                                                        slug:
                                                        brands[index].slug!)),
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      padding:
                                                      EdgeInsets.symmetric(
                                                        horizontal:
                                                        0.01 * scWidth,
                                                        vertical:
                                                        0.013 * scHeight,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color:
                                                        AppColor.whiteColor,
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            8),
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
                                                          height:
                                                          0.033 * scHeight,
                                                          width: 0.15 * scWidth,
                                                          imageUrl:
                                                          "${StringHelper.brandImageBastUrl}${brands[index].image}",
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
                                                        height: 0.009 * scHeight),
                                                    Texts(
                                                      texts: brands[index]
                                                          .name!
                                                          .length <=
                                                          7
                                                          ? brands[index].name!
                                                          : brands[index]
                                                          .name!
                                                          .substring(
                                                          0, 7) +
                                                          "...",
                                                      textStyle: AppStyles
                                                          .text10PxMedium,
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                            separatorBuilder: (BuildContext
                                            context,
                                                int index) =>
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
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.042 * scWidth),
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
                                          texts: tempData
                                              .data!.data!.data!.category!.name!,
                                          textStyle:
                                          AppStyles.text14PxMedium.copyWith(
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
                                    if (allProducts.isEmpty)
                                      Center(
                                        child: Texts(
                                          texts: 'No Products Found',
                                          textStyle:
                                          AppStyles.text14PxRegular.copyWith(
                                            color: AppColor.appColor,
                                          ),
                                        ),
                                      ),
                                    (isGrid)
                                        ? GridView.builder(
                                      // controller: _scrollController,
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
                                        // return Container();
                                      },
                                    )
                                        : ListView.separated(
                                      // controller: _scrollController,
                                      shrinkWrap: true,
                                      physics:
                                      const NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) =>
                                          ItemListCardWidget(
                                            scWidth: scWidth,
                                            scHeight: scHeight,
                                            productModel: allProducts[index],
                                          ),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(
                                            height: 0.009 * scHeight,
                                          ),
                                      itemCount: allProducts.length,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        SizedBox(height: (12 / 812) * scHeight),
                        CircularProgressIndicator(),

                      ],
                    ),
                  ),
                );
              }

            },
            error: (message) => ErrorScreen(
                message: message,
                onTap: () => context
                    .read<CategoryWiseProductsCubit>()
                    .getCategoryWiseProducts(slug: widget.slug)),
            noInternet: () => ErrorScreen(
                message: "No Internet Connection",
                onTap: () => context
                    .read<CategoryWiseProductsCubit>()
                    .getCategoryWiseProducts(slug: widget.slug)),
            success: (data) {
              tempData = data;
              allProducts = data.data!.data!.data!.products!.data!;
              List<BrandListModel> brands = data.data!.data!.data!.brand_list!;
              List<CategoryItemModel> subCategories =
                  data.data!.data!.data!.category!.sub_categories!;
              return RefreshIndicator(
                onRefresh: () async {
                  context
                      .read<CategoryWiseProductsCubit>()
                      .getCategoryWiseProducts(slug: widget.slug);
                },
                child: SingleChildScrollView(
                  controller: _scrollController,
                  child: Column(
                    children: [
                      if (subCategories.isNotEmpty)
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
                            itemCount: subCategories.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedIndex = index;
                                  });
                                  context
                                      .read<CategoryWiseProductsCubit>()
                                      .getCategoryWiseProducts(
                                          slug: subCategories[index].slug!,
                                          Range: [
                                        "0",
                                        "9999999999999999999999999999"
                                      ]);
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
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: CachedNetworkImage(
                                            height: 0.061 * scHeight,
                                            width: 0.18 * scWidth,
                                            // imageUrl: "${StringHelper.productCategoryImageBastUrl}${subCategories[index].icon}",
                                            imageUrl: subCategories[index]
                                                    .image_url ??
                                                "",
                                            placeholder: (context, url) =>
                                                const CircularProgressIndicator(),
                                            errorWidget: (context, url,
                                                    error) =>
                                                Image.asset(
                                                    AssetsHelper.placeHolder),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 0.006 * scHeight),
                                      Texts(
                                        texts:
                                            subCategories[index].name!.length <=
                                                    12
                                                ? subCategories[index].name!
                                                : subCategories[index]
                                                        .name!
                                                        .substring(0, 12) +
                                                    "...",
                                        textStyle:
                                            AppStyles.text12PxRegular.copyWith(
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
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    SizedBox(width: 0.021 * scWidth),
                          ),
                        ),
                      SizedBox(height: (12 / 812) * scHeight),
                      Column(
                        children: [
                          if (brands.isNotEmpty)
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.006 * scWidth),
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.all(0.042 * scWidth),
                                decoration: BoxDecoration(
                                  color: AppColor.whiteColor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Texts(
                                        texts: 'Brands',
                                        textStyle:
                                            AppStyles.text14PxMedium.copyWith(
                                          color: AppColor.black,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      SizedBox(height: 0.024 * scHeight),
                                      SizedBox(
                                        height: 0.1 * scHeight,
                                        child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: brands.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () => context.router.push(
                                                  BrandDetailScreenRoute(
                                                      slug:
                                                          brands[index].slug!)),
                                              child: Column(
                                                children: [
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal:
                                                          0.01 * scWidth,
                                                      vertical:
                                                          0.013 * scHeight,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          AppColor.whiteColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
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
                                                        height:
                                                            0.045 * scHeight,
                                                        width: 0.17 * scWidth,
                                                        imageUrl:
                                                            "${StringHelper.brandImageBastUrl}${brands[index].image}",
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
                                                      height: 0.009 * scHeight),
                                                  Texts(
                                                    texts: brands[index]
                                                                .name!
                                                                .length <=
                                                            7
                                                        ? brands[index].name!
                                                        : brands[index]
                                                                .name!
                                                                .substring(
                                                                    0, 7) +
                                                            "...",
                                                    textStyle: AppStyles
                                                        .text10PxMedium,
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                          separatorBuilder: (BuildContext
                                                      context,
                                                  int index) =>
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
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.042 * scWidth),
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
                                        texts: data
                                            .data!.data!.data!.category!.name!,
                                        textStyle:
                                            AppStyles.text14PxMedium.copyWith(
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
                                  if (allProducts.isEmpty)
                                    Center(
                                      child: Texts(
                                        texts: 'No Products Found',
                                        textStyle:
                                            AppStyles.text14PxRegular.copyWith(
                                          color: AppColor.appColor,
                                        ),
                                      ),
                                    ),
                                  (isGrid)
                                      ? GridView.builder(
                                          // controller: _scrollController,
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
                                            // return Container();
                                          },
                                        )
                                      : ListView.separated(
                                          // controller: _scrollController,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (context, index) =>
                                              ItemListCardWidget(
                                            scWidth: scWidth,
                                            scHeight: scHeight,
                                            productModel: allProducts[index],
                                          ),
                                          separatorBuilder: (context, index) =>
                                              SizedBox(
                                            height: 0.009 * scHeight,
                                          ),
                                          itemCount: allProducts.length,
                                        ),
                                ]),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
