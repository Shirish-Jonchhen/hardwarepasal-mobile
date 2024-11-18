import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/error_widget.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/loading_widget.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/helpers/string_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../data/model/brands_model/brands_model.dart';

class BrandsScreenPage extends StatefulWidget {
  const BrandsScreenPage({super.key});

  @override
  State<BrandsScreenPage> createState() => _BrandsScreenPageState();
}

class _BrandsScreenPageState extends State<BrandsScreenPage> {

  final ScrollController _scrollController = ScrollController();
  int pageNumber = 1;
  List<BrandsItemModel> _brands = [];



  @override
  void initState() {
    _scrollController.addListener(() {
      print(_scrollController.position.maxScrollExtent);
      print(_scrollController.position.pixels);

      if (_scrollController.position.maxScrollExtent ==
          _scrollController.position.pixels) {
        pageNumber++;
        context.read<BrandsCubit>().loadMoreBrands();
        print("puggio hai last ma last ma last ma");
      }
    });
    context.read<BrandsCubit>().getBrands(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.scaffoldBg,
      appBar: AppBar(
        toolbarHeight: 0.073 * scHeight,
        backgroundColor: AppColor.whiteColor,
        surfaceTintColor: AppColor.whiteColor,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Texts(
              texts: 'Brands',
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
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
        child: RefreshIndicator(
          onRefresh: () async {
            context.read<BrandsCubit>().getBrands(1);
          },
          child: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                SizedBox(
                  height: 0.024 * scHeight,
                ),
                BlocConsumer<BrandsCubit, BrandsState>(
                  builder: (context, state) => state.maybeWhen(
                    initial: () => Container(),
                    loading: () => Column(
                      children: [
                        ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            // physics: AlwaysScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () => context.router
                                    .push(BrandDetailScreenRoute(
                                    slug: _brands[index].slug!
                                )),
                                child: Container(
                                  padding: EdgeInsets.all(0.03 * scWidth),
                                  decoration: BoxDecoration(
                                    color: AppColor.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 0.08 * scWidth,
                                        width: 0.08 * scWidth,
                                        decoration: BoxDecoration(
                                          // color: AppColor.appColor.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(8),
                                        ),
                                        child: Center(
                                          child: CachedNetworkImage(
                                            imageUrl:
                                            '${StringHelper.brandImageBastUrl}${ _brands[index].image}',
                                            placeholder: (context, url) =>
                                            const CircularProgressIndicator(),
                                            errorWidget: (context, url, error) =>
                                                Image.asset(AssetsHelper.placeHolder),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 0.042 * scWidth,
                                      ),
                                      Texts(
                                        texts:
                                        _brands[index].name!,
                                        textStyle: AppStyles.text14PxMedium.copyWith(
                                          color: Color(0xff545464),
                                        ),
                                      ),
                                      const Spacer(),
                                      Image.asset(
                                        AssetsHelper.rightArrow,
                                        height: 0.053 * scWidth,
                                        width: 0.053 * scWidth,
                                        // color: AppColor.black,
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(
                                height: 0.009 * scHeight,
                              );
                            },
                            itemCount: _brands.length),
                        SizedBox(height: 0.024 * scHeight,),
                        CircularProgressIndicator(
                          color: AppColor.appColor,
                        ),

                      ],
                    ),
                    error: (message) => ErrorScreen(
                        message: message,
                        onTap: () => context.read<BrandsCubit>().getBrands(1)
                    ),
                    noInternet: () =>ErrorScreen(message: "No Internet Connection", onTap: ()=> context.read<BrandsCubit>().getBrands(1)),
                    orElse: () => Container(),
                    success: (data) => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        // physics: AlwaysScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () => context.router
                                .push(BrandDetailScreenRoute(
                                    slug: data[index].slug!
                            )),
                            child: Container(
                              padding: EdgeInsets.all(0.03 * scWidth),
                              decoration: BoxDecoration(
                                color: AppColor.whiteColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    height: 0.08 * scWidth,
                                    width: 0.08 * scWidth,
                                    decoration: BoxDecoration(
                                      // color: AppColor.appColor.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: CachedNetworkImage(
                                        imageUrl:
                                        '${StringHelper.brandImageBastUrl}${ _brands[index].image}',
                                        placeholder: (context, url) =>
                                        const CircularProgressIndicator(),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(AssetsHelper.placeHolder),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 0.042 * scWidth,
                                  ),
                                  Texts(
                                    texts:
                                        data[index].name!,
                                    textStyle: AppStyles.text14PxMedium.copyWith(
                                      color: Color(0xff545464),
                                    ),
                                  ),
                                  const Spacer(),
                                  Image.asset(
                                    AssetsHelper.rightArrow,
                                    height: 0.053 * scWidth,
                                    width: 0.053 * scWidth,
                                    // color: AppColor.black,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 0.009 * scHeight,
                          );
                        },
                        itemCount: data.length),
                  ),
                  listener: (context, state) {
                    state.maybeWhen(
                      orElse: () {},
                      success: (data) {
                        // show data
                        setState(() {
                          _brands = data;
                        });
                      },
                    );
                  },
                ),

                SizedBox(
                  height: 0.024 * scHeight,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
