import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';

class BrandsScreenPage extends StatefulWidget {
  const BrandsScreenPage({super.key});

  @override
  State<BrandsScreenPage> createState() => _BrandsScreenPageState();
}

class _BrandsScreenPageState extends State<BrandsScreenPage> {


  @override
  void initState() {
    context.read<BrandsCubit>().getBrands();
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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 0.024 * scHeight,
              ),
              BlocConsumer<BrandsCubit, BrandsState>(
                builder: (context, state) => state.maybeWhen(
                  initial: () => Container(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                  error: (message) => Center(
                    child: Texts(
                      texts: message,
                      textStyle: AppStyles.text14PxMedium.copyWith(
                        color: AppColor.black,
                      ),
                    ),
                  ),
                  noInternet: () => Center(
                    child: Texts(
                      texts: 'No Internet',
                      textStyle: AppStyles.text14PxMedium.copyWith(
                        color: AppColor.black,
                      ),
                    ),
                  ),
                  orElse: () => Container(),
                  success: (data) => ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      // physics: AlwaysScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () => context.router
                              .push(BrandDetailScreenRoute(
                                  brandData: data.data!.data!.data!.data![index]
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
                                    color: AppColor.appColor.withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      AssetsHelper.categoryIcon,
                                      height: 0.042 * scWidth,
                                      width: 0.042 * scWidth,
                                      color: AppColor.appColor,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 0.042 * scWidth,
                                ),
                                Texts(
                                  texts:
                                      data.data!.data!.data!.data![index].name!,
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
                      itemCount: data.data!.data!.data!.data!.length),
                ),
                listener: (context, state) {
                  state.maybeWhen(
                    orElse: () {},
                    success: (data) {
                      // show data
                      setState(() {});
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
    );
  }
}
