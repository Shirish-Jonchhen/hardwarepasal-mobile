import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/di/injection.dart';
import 'package:hardwarepasal/src/core/helpers/snackbar_helper.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/widgets/app_textfield.dart';
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/cart_data_cubit.dart';
import 'package:hardwarepasal/src/feature/checkout/data/models/checkout_model.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/checkout_cubit.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/connectips_cubit.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/ime_pay_cubit.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/place_order_cubit.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/screen/connectips_payment/connectips_screen.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/widgets/app_payment_card.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/widgets/app_radio_btn.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/cart_item_model/cart_item_model.dart';
import 'package:imepay_merchant_sdk/start_sdk.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';
import '../../../profile_screen/presntation/cubit/user_details_cubit.dart';
import '../../data/models/place_order_model.dart';
import 'ime_payment/ime_payment_screen.dart';

class CheckoutScreenPage extends StatefulWidget {
  const CheckoutScreenPage({super.key, required this.products});

  final List<ProductModel> products;

  @override
  State<CheckoutScreenPage> createState() => _CheckoutScreenPageState();
}

class _CheckoutScreenPageState extends State<CheckoutScreenPage> {
  String addressGrpVal = 'insideRingRoad';
  String paymentOption = 'cash';
  bool termsAndCondition = false;

  List<String> districts = [
    // Province No. 1
    'Bhojpur',
    'Dhankuta',
    'Ilam',
    'Jhapa',
    'Khotang',
    'Morang',
    'Okhaldhunga',
    'Panchthar',
    'Sankhuwasabha',
    'Solukhumbu',
    'Sunsari',
    'Taplejung',
    'Terhathum',
    'Udayapur',

    // Province No. 2
    'Bara',
    'Dhanusha',
    'Mahottari',
    'Parsa',
    'Rautahat',
    'Saptari',
    'Sarlahi',
    'Siraha',

    // Bagmati Province
    'Bhaktapur',
    'Chitwan',
    'Dhading',
    'Dolakha',
    'Kavrepalanchok',
    'Kathmandu',
    'Lalitpur',
    'Makwanpur',
    'Nuwakot',
    'Ramechhap',
    'Rasuwa',
    'Sindhuli',
    'Sindhupalchok',

    // Gandaki Province
    'Baglung',
    'Gorkha',
    'Kaski',
    'Lamjung',
    'Manang',
    'Mustang',
    'Myagdi',
    'Nawalpur',
    'Parbat',
    'Syangja',
    'Tanahun',

    // Lumbini Province
    'Arghakhanchi',
    'Banke',
    'Bardiya',
    'Dang',
    'Gulmi',
    'Kapilvastu',
    'Palpa',
    'Pyuthan',
    'Rolpa',
    'Rukum (East)',
    'Rupandehi',

    // Karnali Province
    'Dailekh',
    'Dolpa',
    'Humla',
    'Jajarkot',
    'Jumla',
    'Kalikot',
    'Mugu',
    'Rukum (West)',
    'Salyan',
    'Surkhet',

    // Sudurpashchim Province
    'Achham',
    'Baitadi',
    'Bajhang',
    'Bajura',
    'Dadeldhura',
    'Darchula',
    'Doti',
    'Kailali',
    'Kanchanpur'
  ];

  FlutterSecureStorage secureStorage = const FlutterSecureStorage();
  late StorageHelper storageHelper;

  late double discount = 0;
  late double totalWeight = 0;
  late double total = 0;

  late TextEditingController fullNameController;
  late TextEditingController addressController;
  late TextEditingController emailController;
  late TextEditingController mobileController;
  late TextEditingController noteController;

  String? fullNameError;
  String? addressError;
  String? emailError;
  String? mobileError;

  bool validateName() {
    if (fullNameController.text.isEmpty) {
      setState(() {
        fullNameError = "Full Name is required";
      });
      return false;
    } else {
      setState(() {
        fullNameError = null;
      });
      return true;
    }
  }

  bool validateAddress() {
    if (addressController.text.isEmpty) {
      setState(() {
        addressError = "Address is required";
      });
      return false;
    } else {
      setState(() {
        addressError = null;
      });
      return true;
    }
  }

  bool validateEmail() {
    if (emailController.text.isEmpty ||
        !emailController.text.contains('@') ||
        !emailController.text.endsWith('.com')) {
      setState(() {
        emailError = "Email is required";
      });
      return false;
    } else {
      setState(() {
        emailError = null;
      });
      return true;
    }
  }

  bool validateMobile() {
    if (mobileController.text.isEmpty) {
      setState(() {
        mobileError = "Mobile is required";
      });
      return false;
    } else {
      setState(() {
        mobileError = null;
      });
      return true;
    }
  }

  @override
  initState() {
    super.initState();
    storageHelper = StorageHelper(secureStorage);
    districts.sort();
    districts.insert(0, 'Select District');

    context.read<UserDetailsCubit>().getUserDetails();

  storageHelper.getUserData().then((value) {
      fullNameController = TextEditingController(text: "${value.first_name!} ${value.last_name!}");
      addressController = TextEditingController(text: value.address!);
      emailController = TextEditingController(text: value.email!);
      mobileController = TextEditingController(text: value.contact!);
      noteController = TextEditingController();
    });

    context
        .read<CheckoutCubit>()
        .checkout(couponCode: "couponCode", products: widget.products);

    discount = widget.products.fold(
        0,
        (previousValue, element) =>
            previousValue +
            (((element.old_price!.isEmpty
                        ? element.price!
                        : int.parse(element.old_price!)) -
                    element.price!) *
                element.quantity!));

    totalWeight = widget.products.fold(
        0,
        (previousValue, element) =>
            previousValue + (element.weight! * element.quantity!));

    total = widget.products.fold(
        0,
        (previousValue, element) =>
            previousValue + (element.price! * element.quantity!));
  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;

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
              texts: 'Checkout',
              textStyle: AppStyles.text18PxRegular,
            ),
            const Spacer(),
            // InkWell(
            //   // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SearchAreaScreen())),
            //   child: Image.asset(
            //     AssetsHelper.notificationBtn,
            //     width: 0.064 * scWidth,
            //     height: 0.064 * scWidth,
            //     color: AppColor.black,
            //   ),
            // ),
            // SizedBox(
            //   width: 0.026 * scWidth,
            // ),
            Icon(
              Icons.more_vert,
              color: AppColor.black,
              size: 0.064 * scWidth,
            ),
          ],
        ),
      ),
      body: BlocConsumer<CheckoutCubit, CheckoutState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => Container(),
            loading: () => const Center(child: CircularProgressIndicator()),
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
            success: (data) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 0.014 * scHeight,
                    ),

                    //address
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.021 * scWidth),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColor.whiteColor,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.048 * scWidth,
                            vertical: 0.019 * scHeight),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              texts: 'Shipment Address',
                              textStyle: AppStyles.text14PxMedium,
                            ),
                            SizedBox(
                              height: 0.024 * scHeight,
                            ),
                            Row(
                              children: [
                                Row(
                                  children: [
                                    Radio(
                                        value: 'insideRingRoad',
                                        groupValue: addressGrpVal,
                                        onChanged: (val) {
                                          setState(() {
                                            addressGrpVal = val!;
                                          });
                                        }),
                                    SizedBox(width: 0.015 * scWidth),
                                    Texts(
                                      texts: 'Inside Ringroad',
                                      textStyle: AppStyles.text14PxRegular,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Radio(
                                        value: 'outsideRingRoad',
                                        groupValue: addressGrpVal,
                                        onChanged: (val) {
                                          setState(() {
                                            addressGrpVal = val!;
                                          });
                                        }),
                                    SizedBox(width: 0.015 * scWidth),
                                    Texts(
                                      texts: 'Outside Ringroad',
                                      textStyle: AppStyles.text14PxRegular,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                    value: 'outsideValley',
                                    groupValue: addressGrpVal,
                                    onChanged: (val) {
                                      setState(() {
                                        addressGrpVal = val!;
                                      });
                                    }),
                                SizedBox(width: 0.015 * scWidth),
                                Texts(
                                  texts: 'Outside Valley',
                                  textStyle: AppStyles.text14PxRegular,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 0.035 * scHeight,
                            ),
                            Column(
                              children: [
                                CustomTextField(
                                  label: "Full Name",
                                  hintText: "Full Name *",
                                  controller: fullNameController,
                                  errorText: fullNameError,
                                  onChanged: (value) => validateName(),
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                CustomTextField(
                                  label: "Address",
                                  hintText: "Address *",
                                  controller: addressController,
                                  errorText: addressError,
                                  onChanged: (value) => validateAddress(),
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                DropdownMenu(
                                  // onSelected: (value) {
                                  //   for (DistrictModel districts
                                  //       in data.data!.data!.data!.outvalley_list!) {
                                  //     if (districts.district == value) {
                                  //       print(districts.district == value);
                                  //       setState(() {
                                  //         addressGrpVal = "Outside Valley";
                                  //       });
                                  //     } else {
                                  //       setState(() {
                                  //         addressGrpVal = "Inside Ringroad";
                                  //       });
                                  //     }
                                  //   }
                                  //   print("=====Value select=====");
                                  //   print(value);
                                  // },
                                  width: scWidth -
                                      0.021 * 2 * scWidth -
                                      0.048 * 2 * scWidth,
                                  initialSelection: data
                                      .data!.data!.data!.districts!.first,
                                  dropdownMenuEntries: data
                                      .data!.data!.data!.districts!
                                      .map<DropdownMenuEntry<String>>(
                                          (String value) {
                                        return DropdownMenuEntry<String>(
                                            value: value,
                                            label: value,
                                            style: ButtonStyle(
                                              backgroundColor:
                                              MaterialStateProperty.all(
                                                  AppColor.whiteColor),
                                            ));
                                      }).toList(),
                                  enabled: addressGrpVal == "outsideValley",
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                CustomTextField(
                                  label: "Email Address",
                                  hintText: "Email Address *",
                                  controller: emailController,
                                  errorText: emailError,
                                  onChanged: (value) => validateEmail(),
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                CustomTextField(
                                  label: "Mobile Number",
                                  hintText: "Mobile Number *",
                                  controller: mobileController,
                                  keyboardType: TextInputType.number,
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 5,
                                  // Allows the text field to grow with content
                                  decoration: InputDecoration(
                                    hintText:
                                    'Notes about your order. Eg. Special notes for delivery',
                                    hintStyle:
                                    AppStyles.text12PxRegular.copyWith(
                                      color: Colors.grey.shade400,
                                      fontWeight: FontWeight.w300,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          color: AppColor.borderGrey),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        color: AppColor.textGrey,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                      BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                        color: AppColor.appColor,
                                      ),
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 0.032 * scWidth,
                                      vertical: 0.022 * scHeight,
                                    ), // Padding inside the text area
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 0.024 * scHeight,
                    ),

                    //order summary
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 0.029 * scHeight),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.064 * scWidth),
                            child: Texts(
                              texts: 'Order Summary',
                              textStyle: AppStyles.text14PxMedium,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 0.019 * scHeight,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.021 * scWidth),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xffFCFCFC),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.w, vertical: 16.h),
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Row(
                                      children: [
                                        Texts(
                                          texts:
                                              "${data.data!.data!.data!.cartdata![index].name!.length > 27 ? "${data.data!.data!.data!.cartdata![index].name!.substring(0, 27)}..." : data.data!.data!.data!.cartdata![index].name!} (x${data.data!.data!.data!.cartdata![index].quantity})",
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        const Spacer(),
                                        Texts(
                                          texts:
                                              "Rs. ${(data.data!.data!.data!.cartdata![index].old_price!.isEmpty ? data.data!.data!.data!.cartdata![index].price! : double.parse(data.data!.data!.data!.cartdata![index].old_price!)) * data.data!.data!.data!.cartdata![index].quantity!}",
                                          textStyle: AppStyles.text12PxRegular
                                              .copyWith(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    separatorBuilder: (context, index) =>
                                        SizedBox(
                                      height: 8.h,
                                    ),
                                    itemCount: widget.products.length,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 0.019 * scHeight,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.064 * scWidth),
                                child: Row(
                                  children: [
                                    Texts(
                                      texts: 'Discounts',
                                      textStyle: AppStyles.text12PxRegular
                                          .copyWith(
                                              color: AppColor.textGreyColor),
                                    ),
                                    const Spacer(),
                                    Texts(
                                      texts:
                                          'Rs. ${discount.toStringAsFixed(2)}',
                                      textStyle: AppStyles.text14PxMedium
                                          .copyWith(
                                              color: AppColor.textGreyColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 0.007 * scHeight,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.064 * scWidth),
                                child: Row(
                                  children: [
                                    Texts(
                                      texts: 'Total Weight',
                                      textStyle: AppStyles.text12PxRegular
                                          .copyWith(
                                              color: AppColor.textGreyColor),
                                    ),
                                    const Spacer(),
                                    Texts(
                                      texts: '${totalWeight} Kgs',
                                      textStyle: AppStyles.text14PxMedium
                                          .copyWith(
                                              color: AppColor.textGreyColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 0.007 * scHeight,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.064 * scWidth),
                                child: Row(
                                  children: [
                                    Texts(
                                      texts: 'Delivery Charge',
                                      textStyle: AppStyles.text12PxRegular
                                          .copyWith(
                                              color: AppColor.textGreyColor),
                                    ),
                                    const Spacer(),
                                    Texts(
                                      texts: addressGrpVal == "outsideRingRoad"
                                          ? 'Rs. ${data.data!.data!.data!.delivery_charge!.outside_ringroad!}'
                                          : addressGrpVal == "outsideValley"
                                              ? 'Rs. ${data.data!.data!.data!.delivery_charge!.outside_valley!}'
                                              : 'Rs. ${data.data!.data!.data!.delivery_charge!.inside_ringroad!}',
                                      textStyle: AppStyles.text14PxMedium
                                          .copyWith(
                                              color: AppColor.textGreyColor),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 0.008 * scHeight,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 0.021 * scWidth,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4.r),
                                      color:
                                          AppColor.appColor.withOpacity(0.08)),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 0.042 * scWidth,
                                    vertical: 0.013 * scHeight,
                                  ),
                                  child: Row(
                                    children: [
                                      Texts(
                                        texts: 'Grand Total',
                                        textStyle: AppStyles.text12PxRegular
                                            .copyWith(color: AppColor.appColor),
                                      ),
                                      const Spacer(),
                                      Texts(
                                        texts:
                                            'Rs. ${total + (addressGrpVal == "outsideRingRoad" ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!) : addressGrpVal == "outsideValley" ? data.data!.data!.data!.delivery_charge!.outside_valley! : data.data!.data!.data!.delivery_charge!.inside_ringroad!)}',
                                        textStyle: AppStyles.text14PxMedium
                                            .copyWith(color: AppColor.appColor),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 0.024 * scHeight,
                    ),

                    //payment process
                    Container(
                      decoration: BoxDecoration(
                        color: AppColor.whiteColor,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 0.029 * scHeight),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.064 * scWidth),
                            child: Texts(
                              texts: 'Payment Process',
                              textStyle: AppStyles.text14PxMedium,
                            ),
                          ),
                          SizedBox(
                            height: 0.019 * scHeight,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.021 * scWidth),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff1BADFF).withOpacity(0.08),
                                borderRadius: BorderRadius.circular(4.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16.w, vertical: 16.h),
                              child: Column(
                                children: [
                                  Texts(
                                    texts:
                                        "We only accept Cash on delivery to 14 cities  for outside valley below 5 Kgs.\n",
                                    textStyle: AppStyles.text12PxRegular
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff1BADFF)),
                                  ),
                                  Texts(
                                    texts:
                                        "Pokhara, Birgunj, Biratnagar, Janakpur, Hetauda, Itahari, Butwal, Birtamod, Damak, Lahan, Bardibas, Bhairahawa, damauli, Chitwan",
                                    textStyle: AppStyles.text12PxRegular
                                        .copyWith(color: Color(0xff1BADFF)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 0.029 * scHeight,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.042 * scWidth),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Texts(
                                  texts: 'On Delivery:',
                                  textStyle: AppStyles.text12PxRegular
                                      .copyWith(color: AppColor.textGreyColor),
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                AppRadioBtn(
                                  isSelected: paymentOption == "cash",
                                  value: "cash",
                                  groupValue: paymentOption,
                                  label: "Cash on Delivery",
                                  onChange: (p0) {
                                    setState(() {
                                      paymentOption = p0!;
                                    });
                                  },
                                ),
                                SizedBox(
                                  height: 0.013 * scHeight,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppRadioBtn(
                                        isSelected:
                                            paymentOption == "qrpayment",
                                        label: "QR Payment",
                                        value: "qrpayment",
                                        groupValue: paymentOption,
                                        onChange: (p0) {
                                          setState(() {
                                            paymentOption = p0!;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.029 * scWidth,
                                    ),
                                    Expanded(
                                      child: AppRadioBtn(
                                        isSelected: paymentOption ==
                                            "swipecardondelivery",
                                        label: "Card on Delivery",
                                        value: "swipecardondelivery",
                                        groupValue: paymentOption,
                                        onChange: (p0) {
                                          setState(() {
                                            paymentOption = p0!;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.029 * scHeight,
                                ),
                                Texts(
                                  texts: 'Prepay:',
                                  textStyle: AppStyles.text12PxRegular
                                      .copyWith(color: AppColor.textGreyColor),
                                ),
                                SizedBox(
                                  height: 0.014 * scHeight,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppPaymentCard(
                                        onTap: () {
                                          setState(() {
                                            paymentOption = "imepay";
                                          });
                                        },
                                        isSelected: paymentOption == "imepay",
                                        imageUrl: AssetsHelper.imepayImg,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.029 * scWidth,
                                    ),
                                    Expanded(
                                      child: AppPaymentCard(
                                        onTap: () {
                                          setState(() {
                                            paymentOption = "connectips";
                                          });
                                        },
                                        isSelected:
                                            paymentOption == "connectips",
                                        imageUrl: AssetsHelper.connectipsImg,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.013 * scHeight,
                                ),
                                // Row(
                                //   children: [
                                //     Expanded(
                                //       child: AppPaymentCard(
                                //         onTap: () {
                                //           setState(() {
                                //             paymentOption = "Fonepay";
                                //           });
                                //         },
                                //         isSelected: paymentOption == "Fonepay",
                                //         imageUrl: AssetsHelper.fonepayImg,
                                //       ),
                                //     ),
                                //     SizedBox(
                                //       width: 0.029 * scWidth,
                                //     ),
                                //     Expanded(
                                //       child: AppPaymentCard(
                                //         onTap: () {
                                //           setState(() {
                                //             paymentOption = "ConnectIps";
                                //           });
                                //         },
                                //         isSelected:
                                //             paymentOption == "ConnectIps",
                                //         imageUrl: AssetsHelper.connectipsImg,
                                //       ),
                                //     ),
                                //   ],
                                // ),
                                SizedBox(
                                  height: 0.029 * scHeight,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Checkbox(
                                        value: termsAndCondition,
                                        onChanged: (value) {
                                          setState(() {
                                            termsAndCondition = value!;
                                          });
                                        },
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.015 * scWidth,
                                    ),
                                    Expanded(
                                      flex: 7,
                                      child: Texts(
                                        texts:
                                            "I agree to the terms and conditions and Return Policy",
                                        textStyle: AppStyles.text14PxRegular,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        },
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
      bottomNavigationBar: BlocConsumer<CheckoutCubit, CheckoutState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () {
              return Container();
            },

            error: (message) {
              return Container();
            },

            success: (data) {
              return Container(
                height: 0.1 * scHeight,
                padding: EdgeInsets.symmetric(
                    horizontal: 0.064 * scWidth, vertical: 0.014 * scHeight),
                decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  border: Border(
                    top: BorderSide(
                      color: AppColor.textGrey.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (paymentOption == "cash" ||
                        paymentOption == "qrpayment" ||
                        paymentOption == "swipecardondelivery")
                      BlocConsumer<PlaceOrderCubit, PlaceOrderState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              if (validateName() &&
                                  validateAddress() &&
                                  validateEmail() &&
                                  validateMobile() &&
                                  paymentOption != null &&
                                  termsAndCondition) {
                                if (paymentOption == "cash" ||
                                    paymentOption == "qrpayment" ||
                                    paymentOption == "swipecaedondelivery") {
                                  context.read<PlaceOrderCubit>().placeOrder(
                                    placeOrderModel: PlaceOrderModel(
                                      customer_address: addressController.text,
                                      customer_email: emailController.text,
                                      customer_name: fullNameController.text,
                                      customer_number: mobileController.text,
                                      payment_id: paymentOption,
                                      delivery: addressGrpVal,
                                      delivery_charge: addressGrpVal == "outsideRingRoad"
                                          ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!).toDouble()
                                          : addressGrpVal == "outsideValley"
                                              ? data.data!.data!.data!.delivery_charge!.outside_valley!.toDouble()
                                              : data.data!.data!.data!.delivery_charge!.inside_ringroad!.toDouble(),
                                      total_weight: totalWeight,
                                      totalCharge: total + (addressGrpVal == "outsideRingRoad"
                                          ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!).toDouble()
                                          : addressGrpVal == "outsideValley"
                                          ? data.data!.data!.data!.delivery_charge!.outside_valley!.toDouble()
                                          : data.data!.data!.data!.delivery_charge!.inside_ringroad!.toDouble()),
                                      products: widget.products
                                          .map((e) => PlaceOrderProductModel(
                                          product_id: e.id,
                                          quantity: e.quantity))
                                          .toList(),
                                    ),
                                  );
                                }
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColor.appColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.042 * scWidth,
                                  vertical: 0.016 * scHeight),
                              child: Row(
                                children: [
                                  Texts(
                                    texts: 'Place your Order',
                                    textStyle: AppStyles.text14PxMedium
                                        .copyWith(color: AppColor.whiteColor),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColor.whiteColor,
                                    size: 0.064 * scWidth,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            success: (data) {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Order Confirmation'),
                                    content: Text(
                                        data.message ?? "Order Placed Successfully"),
                                    actions: <Widget>[
                                      TextButton(
                                        child: Text('OK'),
                                        onPressed: () {
                                          context.router.popUntil(
                                                  (route) => route.isFirst == true);
                                        },
                                      ),
                                    ],
                                  );
                                },
                              );
                              // SnackBarHelper.showSnackBar(context: context, message: data.message!, isError: false);
                              // context.router.popUntil((route) => route.isFirst == true);
                            },
                            error: (message) {
                              SnackBarHelper.showSnackBar(
                                  context: context, message: message, isError: true);
                            },
                            loading: () {
                              SnackBarHelper.showSnackBar(
                                  context: context,
                                  message: "Placing Order",
                                  isError: false);
                            },
                            noInternet: () {
                              SnackBarHelper.showSnackBar(
                                  context: context,
                                  message: "No Internet",
                                  isError: true);
                            },
                          );
                        },
                      ),
                    if (paymentOption == "imepay")
                      BlocConsumer<ImePayCubit, ImePayState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              if (validateName() &&
                                  validateAddress() &&
                                  validateEmail() &&
                                  validateMobile() &&
                                  paymentOption != null &&
                                  termsAndCondition) {
                                if (paymentOption == "imepay") {
                                  context.read<ImePayCubit>().placeOrder(
                                    placeOrderModel: PlaceOrderModel(
                                      customer_address: addressController.text,
                                      customer_email: emailController.text,
                                      customer_name: fullNameController.text,
                                      customer_number: mobileController.text,
                                      payment_id: paymentOption,
                                      delivery: addressGrpVal,
                                      delivery_charge: addressGrpVal == "outsideRingRoad"
                                          ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!).toDouble()
                                          : addressGrpVal == "outsideValley"
                                          ? data.data!.data!.data!.delivery_charge!.outside_valley!.toDouble()
                                          : data.data!.data!.data!.delivery_charge!.inside_ringroad!.toDouble(),
                                      total_weight: totalWeight,
                                      totalCharge: total + (addressGrpVal == "outsideRingRoad"
                                          ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!).toDouble()
                                          : addressGrpVal == "outsideValley"
                                          ? data.data!.data!.data!.delivery_charge!.outside_valley!.toDouble()
                                          : data.data!.data!.data!.delivery_charge!.inside_ringroad!.toDouble()),
                                      products: widget.products
                                          .map((e) => PlaceOrderProductModel(
                                          product_id: e.id,
                                          quantity: e.quantity))
                                          .toList(),
                                    ),
                                  );
                                }
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColor.appColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.042 * scWidth,
                                  vertical: 0.016 * scHeight),
                              child: Row(
                                children: [
                                  Texts(
                                    texts: 'Place your Order',
                                    textStyle: AppStyles.text14PxMedium
                                        .copyWith(color: AppColor.whiteColor),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColor.whiteColor,
                                    size: 0.064 * scWidth,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            success: (data) {
                              // print(
                              //     "====================print data=====================");
                              // print(data.data!.data!.TokenId);
                              // print(data.data!.data!.Amount);
                              // print(data.data!.data!.IMEPAY_CHECKOUT_URL);
                              // print(data.data!.data!.MerchantCode);
                              // print(data.data!.data!.RefId);
                              // print(data.data!.data!.responseUrl);

                              // StartSdk.callSdk(
                              //   context,
                              //   merchantCode: data.data!.data!.MerchantCode!,
                              //   merchantName: "",
                              //   merchantUrl: merchantUrl,
                              //   amount: amount,
                              //   refId: refId,
                              //   module: module,
                              //   user: user,
                              //   password: password,
                              //   deliveryUrl: deliveryUrl,
                              //   buildType: buildType,
                              // );

                              // Dio().post(
                              //   "https://payment.imepay.com.np:7979/WebCheckout/Checkout",
                              //   data: {
                              //     "TokenId": data.data!.data!.TokenId,
                              //     "TranAnount": "100.00",
                              //     "IMEPAY_CHECKOUT_URL": data.data!.data!.IMEPAY_CHECKOUT_URL,
                              //     "MerchantCode": data.data!.data!.MerchantCode,
                              //     "RefId": data.data!.data!.RefId,
                              //     "RespUrl": data.data!.data!.responseUrl,
                              //   },
                              // ).then(
                              //   (value) {
                              //     print(value);

                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        ImePaymentScreenPage(
                                          htmlContent: data.data!.viewdata.toString(),
                                        )),
                              );
                              //   },
                              // );

                              // StartSdk.callSdk(
                              //   context,
                              //   merchantCode: "HARDWARE",
                              //   merchantName: "Hardware Pasal",
                              //   // merchantUrl: data.data!.data!.IMEPAY_CHECKOUT_URL!,
                              //   // amount: data.data!.data!.Amount!,
                              //   amount: "100",
                              //   refId: data.data!.data!.RefId!,
                              //   module: "HARDWARE",
                              //   user: "hardwarepasal",
                              //   password: "Hardware@123",
                              //   deliveryUrl: data.data!.data!.IMEPAY_CHECKOUT_URL!,
                              //   merchantUrl: "http://202.166.194.90:8383/Login",
                              //   buildType: BuildType.STAGE,
                              // ).then(
                              //   (value) => print(value),
                              // );

                              // showDialog(
                              //   context: context,
                              //   builder: (BuildContext context) {
                              //     return AlertDialog(
                              //       title: Text('Order Confirmation'),
                              //       content:
                              //       Text(data.message ?? "Order Placed Successfully"),
                              //       actions: <Widget>[
                              //         TextButton(
                              //           child: Text('OK'),
                              //           onPressed: () {
                              //             context.router
                              //                 .popUntil((route) => route.isFirst == true);
                              //           },
                              //         ),
                              //       ],
                              //     );
                              //   },
                              // );
                              // SnackBarHelper.showSnackBar(context: context, message: data.message!, isError: false);
                              // context.router.popUntil((route) => route.isFirst == true);
                            },
                            error: (message) {
                              SnackBarHelper.showSnackBar(
                                  context: context, message: message, isError: true);
                            },
                            loading: () {
                              SnackBarHelper.showSnackBar(
                                  context: context,
                                  message: "Placing Order",
                                  isError: false);
                            },
                            noInternet: () {
                              SnackBarHelper.showSnackBar(
                                  context: context,
                                  message: "No Internet",
                                  isError: true);
                            },
                          );
                        },
                      ),
                    if (paymentOption == "connectips")
                      BlocConsumer<ConnectipsCubit, ConnectipsState>(
                        builder: (context, state) {
                          return InkWell(
                            onTap: () {
                              if (validateName() &&
                                  validateAddress() &&
                                  validateEmail() &&
                                  validateMobile() &&
                                  paymentOption != null &&
                                  termsAndCondition) {
                                if (paymentOption == "connectips") {
                                  context.read<ConnectipsCubit>().placeOrder(
                                    placeOrderModel: PlaceOrderModel(
                                      customer_address: addressController.text,
                                      customer_email: emailController.text,
                                      customer_name: fullNameController.text,
                                      customer_number: mobileController.text,
                                      payment_id: paymentOption,
                                      delivery: addressGrpVal,
                                      delivery_charge: addressGrpVal == "outsideRingRoad"
                                          ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!).toDouble()
                                          : addressGrpVal == "outsideValley"
                                          ? data.data!.data!.data!.delivery_charge!.outside_valley!.toDouble()
                                          : data.data!.data!.data!.delivery_charge!.inside_ringroad!.toDouble(),
                                      total_weight: totalWeight,
                                      totalCharge: total + (addressGrpVal == "outsideRingRoad"
                                          ? (data.data!.data!.data!.delivery_charge!.outside_ringroad!).toDouble()
                                          : addressGrpVal == "outsideValley"
                                          ? data.data!.data!.data!.delivery_charge!.outside_valley!.toDouble()
                                          : data.data!.data!.data!.delivery_charge!.inside_ringroad!.toDouble()),
                                      products: widget.products
                                          .map((e) => PlaceOrderProductModel(
                                          product_id: e.id,
                                          quantity: e.quantity))
                                          .toList(),
                                    ),
                                  );
                                }
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColor.appColor,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.042 * scWidth,
                                  vertical: 0.016 * scHeight),
                              child: Row(
                                children: [
                                  Texts(
                                    texts: 'Place your Order',
                                    textStyle: AppStyles.text14PxMedium
                                        .copyWith(color: AppColor.whiteColor),
                                  ),
                                  Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: AppColor.whiteColor,
                                    size: 0.064 * scWidth,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                        listener: (context, state) {
                          state.maybeWhen(
                            orElse: () {},
                            success: (data) {
                              print(
                                  "====================print data=====================");
                              print(data.data!.data!);
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      ConnectipsScreenPage(
                                        data: data.data!.data!,
                                      ),
                                ),
                              );
                            },
                            error: (message) {
                              SnackBarHelper.showSnackBar(
                                  context: context, message: message, isError: true);
                            },
                            loading: () {
                              SnackBarHelper.showSnackBar(
                                  context: context,
                                  message: "Placing Order",
                                  isError: false);
                            },
                            noInternet: () {
                              SnackBarHelper.showSnackBar(
                                  context: context,
                                  message: "No Internet",
                                  isError: true);
                            },
                          );
                        },
                      ),
                  ],
                ),
              );
            },
            initial: () {
              return Container();
            },
            loading: () {
              return Container();
            },

            noInternet: () {
              return Container();
            },

          );
        },
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

    );
  }
}
