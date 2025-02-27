import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_multi_slider/flutter_multi_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/cubit/brand_details_cubit.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/presentation/cubit/category_wise_products_cubit.dart';

import '../../core/helpers/assets_helper.dart';
import '../../core/helpers/storage_helper.dart';
import '../../core/themes/app_colors.dart';
import '../../core/widgets/app_texts.dart';
import '../../feature/item_detail_screen/presentation/screen/item_detail_screen.dart';
import '../../feature/search_screen/presentation/cubit/search_cubit.dart';

class SearchFilterScreenPage extends StatefulWidget {
  const SearchFilterScreenPage(
      {super.key,
      required this.searchText,
      this.fromCategoryLevel3 = false,
      this.fromBrandDetails = false});

  final String searchText;
  final bool fromCategoryLevel3;
  final bool fromBrandDetails;

  @override
  State<SearchFilterScreenPage> createState() => _SearchFilterScreenPageState();
}

class _SearchFilterScreenPageState extends State<SearchFilterScreenPage> {
  late String price = "All Prices";
  late String discount = "No Discounts";
  List<String> brands = [];
  List<double> sliderValues = [1000, 9999];

  late TextEditingController minPriceController = TextEditingController();
  late TextEditingController maxPriceController = TextEditingController();
  TextEditingController brandSearchController = TextEditingController();

  FlutterSecureStorage storage = const FlutterSecureStorage();
  // StorageHelper storageHelper = StorageHelper(storage);

  @override
  void initState() {
    StorageHelper storageHelper = StorageHelper(storage);

    storageHelper.getDiscountState().then(
      (value) {
        setState(() {
          discount = value ?? "No Discounts";
        });
        // discount = value ?? "No Discounts";
      },
    );

    storageHelper.getMinPriceState().then(
          (value) {
        setState(() {
          minPriceController.text = value ?? "No Discounts";
          sliderValues[0] = double.parse(value ?? "0");
        });
        // discount = value ?? "No Discounts";
      },
    );

    storageHelper.getMaxPriceState().then(
          (value) {
        setState(() {
          maxPriceController.text = value ?? "No Discounts";
          sliderValues[1] = double.parse(value ?? "9999");
        });
        // discount = value ?? "No Discounts";
      },
    );

    storageHelper.getPriceRangeState().then(
          (value) {

        setState(() {
          price = value ?? "No Discounts";
        });
        // discount = value ?? "No Discounts";
      },
    );


    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;

    StorageHelper storageHelper = StorageHelper(storage);

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
        leadingWidth: 0.1 * scWidth,
        // backgroundColor: AppColor.appColor,
        title: Align(
          alignment: Alignment.centerLeft,
          child: Texts(
            texts: (widget.fromCategoryLevel3)
                ? "Category Filter"
                : (widget.fromBrandDetails)
                    ? "Brand Filter"
                    : "Search Filter",
            textStyle: AppStyles.text18PxRegular,
          ),
        ),
        elevation: 10,
        surfaceTintColor: AppColor.whiteColor,
      ),
      bottomNavigationBar: Container(
        height: 0.1 * scHeight,
        // width: 0.8 * scWidth,
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          // borderRadius: BorderRadius.circular(8),
          border: Border(
            top: BorderSide(
              color: AppColor.textGrey.withOpacity(0.2),
              width: 1,
            ),
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 0.042 * scWidth,
          vertical: 0.042 * scWidth,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () => context.router.pop(),
                child: Container(
                  padding: EdgeInsets.all(0.03 * scWidth),
                  decoration: BoxDecoration(
                    color: const Color(0xffB0B0B8).withOpacity(0.08),
                    borderRadius: BorderRadius.circular(4.r),
                  ),
                  child: Image.asset(
                    AssetsHelper.homeIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: const Color(0xffB0B0B8),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: scWidth * 0.034,
            ),
            Expanded(
              flex: 3,
              child: AppButton(
                scWidth: scWidth,
                scHeight: scHeight,
                title: "Reset",
                onTap: () async{
                  // StorageHelper storageHelper = StorageHelper(storage);
                  await storageHelper.resetFilterStates();
                  setState(() {
                    price = "All Prices";
                    discount = "No Discounts";
                    brands = [];
                    sliderValues = [0, 9999];
                    minPriceController.text = "0";
                    maxPriceController.text = "9999";
                  });
                },
                hollow: true,
              ),
            ),
            SizedBox(
              width: scWidth * 0.034,
            ),
            Expanded(
              flex: 3,
              child: AppButton(
                scWidth: scWidth,
                scHeight: scHeight,
                title: "Apply filter",
                onTap: () {
                  if (widget.fromCategoryLevel3) {
                    print("FROM CAREGORY LEVEL # MA XAAAA");
                    context.read<CategoryWiseProductsCubit>().getCategoryWiseProducts(
                          filter: true,
                          slug: widget.searchText,
                          // sortBy: 0,
                          Range: [minPriceController.text.trim(), maxPriceController.text.trim()],
                          discount: discount,
                          brand: brands.join(","),
                          brandSearch: brandSearchController.text,
                        );
                  } else if (widget.fromBrandDetails) {
                    print("FROM BRAND LEVEL # MA XAAAA");

                    context.read<BrandDetailsCubit>().getBrandDetails(
                          filter: true,
                          slug: widget.searchText,
                          // sortBy: 0,
                          Range: [
                            minPriceController.text.trim(),
                            maxPriceController.text.trim()
                          ],
                          discount: discount,
                          // brand: brands.join(","),
                          // brandSearch: brandSearchController.text,
                        );
                  } else {
                    context.read<SearchCubit>().filterProducts(
                          searchText: widget.searchText,
                          sortBy: 0,
                          lowRange: minPriceController.text.trim(),
                          highRange: maxPriceController.text.trim(),
                          discount: discount,
                          brand: brands.join(","),
                          brandSearch: brandSearchController.text,
                        );
                  }
                  context.router.pop();
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            SizedBox(
              height: 0.024 * scHeight,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts(
                    texts: "Price Range",
                    textStyle: AppStyles.text14PxMedium,
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "All Prices",
                        groupValue: price,
                        onChanged: (value) async{
                          await storageHelper.savePriceRangeState(range: "All Prices");
                          await storageHelper.saveMinPriceState(minPrice: "0");
                          await storageHelper.saveMaxPriceState(minPrice: "9999");
                          setState(
                            () {
                              price = value!;
                              sliderValues = [0, 9999];
                              maxPriceController.text = "9999";
                              minPriceController.text = "0";
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "All Prices",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "Rs. 0 - Rs. 500",
                        groupValue: price,
                        onChanged: (value) async{
                          await storageHelper.savePriceRangeState(range: "Rs. 0 - Rs. 500");
                          await storageHelper.saveMinPriceState(minPrice: "0");
                          await storageHelper.saveMaxPriceState(minPrice: "500");
                          setState(
                            () {
                              price = value!;
                              sliderValues = [0, 500];
                              maxPriceController.text = "500";
                              minPriceController.text = "0";
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "Rs. 0 - Rs. 500",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "Rs. 500 - Rs. 2500",
                        groupValue: price,
                        onChanged: (value) async{
                          await storageHelper.savePriceRangeState(range: "Rs. 500 - Rs. 2500");
                          await storageHelper.saveMinPriceState(minPrice: "500");
                          await storageHelper.saveMaxPriceState(minPrice: "2500");
                          setState(
                            () {
                              price = value!;
                              sliderValues = [500, 2500];
                              maxPriceController.text = "2500";
                              minPriceController.text = "500";
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "Rs. 500 - Rs. 2500",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "Rs. 2500 - Rs. 5000",
                        groupValue: price,
                        onChanged: (value) async{
                          await storageHelper.savePriceRangeState(range: "Rs. 2500 - Rs. 5000");
                          await storageHelper.saveMinPriceState(minPrice: "2500");
                          await storageHelper.saveMaxPriceState(minPrice: "5000");
                          setState(
                            () {
                              price = value!;
                              sliderValues = [2500, 5000];
                              maxPriceController.text = "5000";
                              minPriceController.text = "2500";
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "Rs. 2500 - Rs. 5000",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 9,
                        child: TextField(
                          onChanged: (value) async{
                            await storageHelper.savePriceRangeState(range: "000");
                            await storageHelper.saveMinPriceState(minPrice: value);

                            setState(() {
                              sliderValues[0] = double.parse(value);
                            });
                          },
                          controller: minPriceController,
                          decoration: InputDecoration(
                            hintText: "Min Price",
                            hintStyle: AppStyles.text12PxRegular,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: AppColor.grayWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(),
                      ),
                      Expanded(
                        flex: 9,
                        child: TextField(
                          onChanged: (value) async{
                            await storageHelper.savePriceRangeState(range: "000");
                            await storageHelper.saveMaxPriceState(minPrice: value);
                            setState(() {
                              sliderValues[1] = double.parse(value);
                            });
                          },
                          controller: maxPriceController,
                          decoration: InputDecoration(
                            hintText: "Max Price",
                            hintStyle: AppStyles.text12PxRegular,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: AppColor.grayWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  MultiSlider(
                    values: sliderValues,
                    onChanged: (values) async{

                      await storageHelper.savePriceRangeState(range: "000");
                      await storageHelper.saveMinPriceState(minPrice: values[0].round().toString());
                      await storageHelper.saveMaxPriceState(minPrice: values[1].round().toString());

                      setState(() {
                        minPriceController.text = values[0].round().toString();
                        maxPriceController.text = values[1].round().toString();
                        price = "000";
                        sliderValues = values;
                      });
                    },
                    min: 0,
                    max: 9999,
                    thumbColor: AppColor.appColor,
                    color: AppColor.appColor,
                    divisions: 100,
                    selectedIndicator: (value) {
                      return IndicatorOptions(draw: false);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Texts(
                        texts: "MIN",
                        textStyle: AppStyles.text12PxMedium.copyWith(
                          color: AppColor.textGrey,
                        ),
                      ),
                      Texts(
                        texts: "MAX",
                        textStyle: AppStyles.text12PxMedium.copyWith(
                          color: AppColor.textGrey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.040 * scHeight,
                  ),


                  //discounts
                  Texts(
                    texts: "Discounts",
                    textStyle: AppStyles.text14PxMedium,
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "No Discounts",
                        groupValue: discount,
                        onChanged: (value) {
                          storageHelper.saveDiscountState(discount: "No Discounts");
                          setState(
                            () {
                              discount = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "No Discounts",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "1To19",
                        groupValue: discount,
                        onChanged: (value) {
                          storageHelper.saveDiscountState(discount: "1To19");
                          setState(
                            () {
                              discount = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "1% to 19%",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "20To29",
                        groupValue: discount,
                        onChanged: (value) {
                          storageHelper.saveDiscountState(discount: "20To29");
                          setState(
                            () {
                              discount = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "20% to 29%",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "30To39",
                        groupValue: discount,
                        onChanged: (value) {
                          storageHelper.saveDiscountState(discount: "30To39");
                          setState(
                            () {
                              discount = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "30% to 39%",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "40To49",
                        groupValue: discount,
                        onChanged: (value) {
                          storageHelper.saveDiscountState(discount: "40To49");
                          setState(
                            () {
                              discount = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "40% to 49%",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Radio(
                        value: "50To",
                        groupValue: discount,
                        onChanged: (value) {
                          storageHelper.saveDiscountState(discount: "50To");
                          setState(
                            () {
                              discount = value!;
                            },
                          );
                        },
                      ),
                      SizedBox(
                        width: 0.013 * scWidth,
                      ),
                      Texts(
                          texts: "50% or more",
                          textStyle: AppStyles.text12PxRegular),
                    ],
                  ),
                  if (widget.fromBrandDetails)
                    SizedBox(
                      height: 0.040 * scHeight,
                    )
                  else
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 0.040 * scHeight,
                        ),
                        Texts(
                          texts: "Brand Name",
                          textStyle: AppStyles.text14PxMedium,
                        ),
                        SizedBox(
                          height: 0.019 * scHeight,
                        ),
                        TextField(
                          controller: brandSearchController,
                          decoration: InputDecoration(
                            hintText: "Brand Name",
                            hintStyle: AppStyles.text12PxMedium
                                .copyWith(color: AppColor.textGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: const BorderSide(
                                color: AppColor.grayWhiteColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0.019 * scHeight,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: brands.contains("CG"),
                              onChanged: (value) {
                                setState(
                                  () {
                                    value!
                                        ? brands.add("CG")
                                        : brands.remove("CG");
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 0.013 * scWidth,
                            ),
                            Texts(
                                texts: "CG",
                                textStyle: AppStyles.text12PxRegular),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: brands.contains("Crompton"),
                              onChanged: (value) {
                                setState(
                                  () {
                                    value!
                                        ? brands.add("Crompton")
                                        : brands.remove("Crompton");
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 0.013 * scWidth,
                            ),
                            Texts(
                                texts: "Crompton",
                                textStyle: AppStyles.text12PxRegular),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: brands.contains("Hindware"),
                              onChanged: (value) {
                                setState(
                                  () {
                                    value!
                                        ? brands.add("Hindware")
                                        : brands.remove("Hindware");
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 0.013 * scWidth,
                            ),
                            Texts(
                                texts: "Hindware",
                                textStyle: AppStyles.text12PxRegular),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Checkbox(
                              value: brands.contains("Hitech"),
                              onChanged: (value) {
                                setState(
                                  () {
                                    value!
                                        ? brands.add("Hitech")
                                        : brands.remove("Hitech");
                                  },
                                );
                              },
                            ),
                            SizedBox(
                              width: 0.013 * scWidth,
                            ),
                            Texts(
                                texts: "Hitech",
                                textStyle: AppStyles.text12PxRegular),
                          ],
                        ),
                        SizedBox(
                          width: scWidth,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                value: brands.contains("Samsung"),
                                onChanged: (value) {
                                  setState(
                                    () {
                                      value!
                                          ? brands.add("Samsung")
                                          : brands.remove("Samsung");
                                    },
                                  );
                                },
                              ),
                              SizedBox(
                                width: 0.013 * scWidth,
                              ),
                              Texts(
                                  texts: "Samsung",
                                  textStyle: AppStyles.text12PxRegular),
                            ],
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
