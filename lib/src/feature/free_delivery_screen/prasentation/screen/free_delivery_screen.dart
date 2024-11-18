import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/error_widget.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/widget/loading_widget.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart';
import 'package:hardwarepasal/src/feature/new_arrivals_screen/presentation/cubit/new_arrivals_cubit.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../search_screen/presentation/screen/search_area_screen.dart';
import '../cubit/free_delivery_cubit.dart';

class FreeDeliveryScreenPage extends StatefulWidget {
  const FreeDeliveryScreenPage({super.key});

  @override
  State<FreeDeliveryScreenPage> createState() => _FreeDeliveryScreenPageState();
}

class _FreeDeliveryScreenPageState extends State<FreeDeliveryScreenPage> {
  bool isGrid = true;

  @override
  void initState() {
    context.read<FreeDeliveryCubit>().getFreeDelivery(1);
    print("K vaio k vaio");
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
              texts: 'Free Delivery',
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
      body: BlocConsumer<FreeDeliveryCubit, FreeDeliveryState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () {},
            error: (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(e.message),
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return state.maybeWhen(
            initial: () {
              context.read<FreeDeliveryCubit>().getFreeDelivery(1);
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            error: (message) => ErrorScreen(
              message: message,
              onTap: () => context.read<HomeRecentlyViewedCubit>().getRecentlyViewedProducts(),
            ),
            loading: (){
              print("Loading mai adkio ta kina ra??");
              return const LoadingWidget();
            },
            noInternet: () => ErrorScreen(message: "No Internet Connection", onTap: () => context.read<HomeRecentlyViewedCubit>().getRecentlyViewedProducts(),),
            success: (products) {
              print("Products Etaa xa hai etaa etaa");
              return Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
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
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 0.029 * scHeight),
                      Row(
                        children: [
                          Texts(
                            texts: "Free Delivery",
                            textStyle: AppStyles.text14PxMedium.copyWith(
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
                      if(products.isEmpty)
                        const Center(child: Text("No Products Found"),)
                      else
                      (isGrid)
                          ? GridView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: products.length,
                        gridDelegate:
                        SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0.021 * scWidth,
                          mainAxisSpacing: 0.021 * scHeight,
                          childAspectRatio: 0.7,
                        ),
                        itemBuilder: (context, index) {
                          return AppItemCard(
                            productModel: products[index],
                          );
                          // return Container();
                        },
                      )
                          : ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) =>
                            ItemListCardWidget(
                              scHeight: scHeight,
                              scWidth: scWidth,
                              productModel: products[index],
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 0.009 * scHeight,
                        ),
                        itemCount: products.length,
                      ),
                    ],
                  ),
                ),
              );
            },
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
