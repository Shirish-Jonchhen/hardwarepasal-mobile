import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:hardwarepasal/src/feature/my_orders_screen/presentation/widgets/order_card.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../cubit/my_order_cubit.dart';

class MyOrdersScreenPage extends StatefulWidget {
  const MyOrdersScreenPage({super.key});

  @override
  State<MyOrdersScreenPage> createState() => _MyOrdersScreenPageState();
}

class _MyOrdersScreenPageState extends State<MyOrdersScreenPage> {


  final List<String> tabs = ['All', 'Pending', 'Delivered', 'Cancelled'];
  int selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    context.read<MyOrderCubit>().getMyOrders();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery.of(context).size.width;
    final scHeight = MediaQuery.of(context).size.height;
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
              texts: 'My Orders',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            Image.asset(
              AssetsHelper.cartBtn,
              width: 0.064 * scWidth,
              color: AppColor.black,
            ),
            SizedBox(
              width: 0.026 * scWidth,
            ),
            Image.asset(
              AssetsHelper.notificationBtn,
              width: 0.064 * scWidth,
              color: AppColor.black,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
        child: Column(
          children: [
            SizedBox(
              height: 0.024 * scHeight,
            ),
            SizedBox(
              height: 0.044 * scHeight,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 0.053 * scWidth,
                        vertical: 0.008 * scHeight,
                      ),
                      decoration: BoxDecoration(
                        color: (selectedIndex == index)?AppColor.appColor:AppColor.lightGreyBg,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Texts(
                        texts: tabs[index],
                        textStyle: AppStyles.text14PxRegular
                            .copyWith(color:(selectedIndex == index)?AppColor.whiteColor: AppColor.textGreyColor),
                      ),
                    ),
                  );
                },
                itemCount: tabs.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 0.021 * scWidth,
                  );
                },
              ),
            ),
            SizedBox(
              height: 0.024 * scHeight,
            ),
            Expanded(
              child: BlocConsumer<MyOrderCubit, MyOrderState>(
                builder: (BuildContext context, state) {
                  return state.maybeWhen(
                    orElse: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    error: (message) => Center(
                      child: Texts(
                        texts: message,
                        textStyle: AppStyles.text14PxRegular
                            .copyWith(color: AppColor.errorColor),
                      ),
                    ),
                    noInternet: () => Center(
                      child: Texts(
                        texts: 'No Internet',
                        textStyle: AppStyles.text14PxRegular
                            .copyWith(color: AppColor.errorColor),
                      ),
                    ),
                    success: (data) {
                      return ListView.separated(
                          itemBuilder: (context, index1) {
                            return ListView.separated(
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                ProductModel product = data
                                    .data!.data!.data![index1].products![index];
                                return OrderCard(
                                  productName: product.name!,
                                  orderDate: product.created_at!,
                                  orderStatus: product.status!,
                                  price: product.price!.toString(),
                                  quantity: product.quantity!.toString(),
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 0.0194 * scHeight),
                              itemCount: data
                                  .data!.data!.data![index1].products!.length,
                            );

                          },
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 0.0194 * scHeight),
                          itemCount: data.data!.data!.data!.length);
                    },
                  );
                },
                listener: (BuildContext context, state) {
                  state.maybeWhen(
                      orElse: () {},
                      success: (data) {
                        setState(
                          () {},
                        );
                      });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}