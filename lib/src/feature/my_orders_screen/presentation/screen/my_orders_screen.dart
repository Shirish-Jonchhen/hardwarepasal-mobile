import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routes/app_router.dart';
import '../../../category_screen/presentation/widget/error_widget.dart';
import '../../../category_screen/presentation/widget/loading_widget.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../data/model/my_orders_model/my_orders_model.dart';
import '../widgets/order_card.dart';

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
    context.read<MyOrderCubit>().getMyOrders(1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scWidth = MediaQuery
        .of(context)
        .size
        .width;
    final scHeight = MediaQuery
        .of(context)
        .size
        .height;
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
                        color: (selectedIndex == index)
                            ? AppColor.appColor
                            : AppColor.lightGreyBg,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Texts(
                        texts: tabs[index],
                        textStyle: AppStyles.text14PxRegular.copyWith(
                            color: (selectedIndex == index)
                                ? AppColor.whiteColor
                                : AppColor.textGreyColor),
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
                    orElse: () =>
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                    loading: () => const LoadingWidget(),
                    error: (message) =>
                        ErrorScreen(
                            message: message,
                            onTap: () =>
                                context.read<MyOrderCubit>().getMyOrders(1)),
                    noInternet: () =>
                        ErrorScreen(
                            message: "No Internet Connection",
                            onTap: () =>
                                context.read<MyOrderCubit>().getMyOrders(1)),
                    success: (data) {
                      List<OrderData> displayData = [];
                      if (selectedIndex == 0) {
                        displayData = data.data!.data!.data!;
                      } else if (selectedIndex == 1) {
                        displayData = data.data!.data!.data!
                            .where((element) => element.status == 'pending')
                            .toList();
                      } else if (selectedIndex == 2) {
                        displayData = data.data!.data!.data!
                            .where((element) => element.status == 'delivered')
                            .toList();
                      } else if (selectedIndex == 3) {
                        displayData = data.data!.data!.data!
                            .where((element) => element.status == 'cancelled')
                            .toList();
                      }
                      return displayData.isNotEmpty ?
                      ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index1) {
                          return OrderCard(
                            productName: displayData[index1].order_id!,
                            orderDate: displayData[index1].created_at!,
                            orderStatus: displayData[index1].status!,
                            price: displayData[index1]
                                .products!
                                .fold(
                              0.00,
                                  (previousValue, element) =>
                              previousValue +
                                  (element.price! * element.quantity!),
                            )
                                .toString(),
                            quantity: displayData[index1]
                                .products!
                                .length
                                .toString(),
                          );
                        },
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 0.0194 * scHeight),
                        itemCount: displayData.length,) :
                       Center(
                        child: Texts(
                          texts: 'No Orders Found',
                          textStyle: AppStyles.text16PxBold,
                        ),
                      );
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
