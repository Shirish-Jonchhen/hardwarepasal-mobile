import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/routes/app_router.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_item_card.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../../search_screen/presentation/screen/search_area_screen.dart';

class SimilarProductsScreenPage extends StatefulWidget {
  const SimilarProductsScreenPage({super.key, required this.products,required this.productName});
  final String productName;
  final List<ProductModel> products;

  @override
  State<SimilarProductsScreenPage> createState() => _SimilarProductsScreenPageState();
}

class _SimilarProductsScreenPageState extends State<SimilarProductsScreenPage> {

  bool isGrid = true;
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
              // texts: "Similar Products",
              texts: 'Similar Products for ${widget.productName}'.length > 30 ? "${'Similar Products for ${widget.productName}'.substring(0,30)}..." : 'Similar Products for ${widget.productName}',
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
            // InkWell(
            //   onTap: () => context.router.push(const NotificationScreenRoute()),
            //   child: Image.asset(
            //     AssetsHelper.notificationBtn,
            //     width: 0.064 * scWidth,
            //     height: 0.064 * scWidth,
            //     color: AppColor.black,
            //   ),
            // ),
            // SizedBox(
            //   width: 0.042 * scWidth,
            // ),
          ],
        ),
      ),

      body: Container(
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
                    texts: "Featured Products",
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

              (isGrid)
                  ? GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.products.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0.021 * scWidth,
                  mainAxisSpacing: 0.021 * scHeight,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  return AppItemCard(
                    productModel: widget.products[index],
                  );
                  // return Container();
                },
              )
                  : ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) =>
                    ItemListCardWidget(
                      scWidth: scWidth,
                      scHeight: scHeight,

                      productModel: widget.products[index],
                    ),
                separatorBuilder: (context, index) => SizedBox(
                  height: 0.009 * scHeight,
                ),
                itemCount: widget.products.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
