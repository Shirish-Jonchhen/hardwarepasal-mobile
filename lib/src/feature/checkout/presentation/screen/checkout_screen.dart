import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/di/injection.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/widgets/app_textfield.dart';
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/cart_data_cubit.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/widgets/app_payment_card.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/widgets/app_radio_btn.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/data/models/cart_item_model/cart_item_model.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../../home_screen/data/models/product_model/product_model.dart';

class CheckoutScreenPage extends StatefulWidget {
  const CheckoutScreenPage({super.key, required this.products});
  final List<ProductModel> products;

  @override
  State<CheckoutScreenPage> createState() => _CheckoutScreenPageState();
}

class _CheckoutScreenPageState extends State<CheckoutScreenPage> {
  String addressGrpVal = 'Inside Ringroad';
  String paymentOption = 'Cash on Delivery';
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


  @override
  initState() {
    super.initState();
    storageHelper = StorageHelper(secureStorage);
    districts.sort();
    districts.insert(0, 'Select District');

    discount = widget.products.fold(
        0,
            (previousValue, element) =>
        previousValue +
            (
                ((element.old_price!.isEmpty
                ? element.price!
                : int.parse(element.old_price!)) -
                element.price!) *
               element.quantity!));

    totalWeight = widget.products.fold(
        0,
            (previousValue, element) =>
        previousValue +
            (element.weight! *
              element.quantity!));

    total = widget.products.fold(
        0,
            (previousValue, element) =>
        previousValue +
            (element.price! *
           element.quantity!));

  }

  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;


    return FutureBuilder<List<CartItemModel>>(
        future: storageHelper.getCartItems(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<CartItemModel> cartItems = snapshot.data!;
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
                    InkWell(
                      // onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SearchAreaScreen())),
                      child: Image.asset(
                        AssetsHelper.notificationBtn,
                        width: 0.064 * scWidth,
                        height: 0.064 * scWidth,
                        color: AppColor.black,
                      ),
                    ),
                    SizedBox(
                      width: 0.026 * scWidth,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: AppColor.black,
                      size: 0.064 * scWidth,
                    ),
                  ],
                ),
              ),
              body: SingleChildScrollView(
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
                                        value: 'Inside Ringroad',
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
                                        value: 'Outside Ringroad',
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
                                    value: 'Outside Valley',
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
                            CustomTextField(
                              label: "Full Name",
                              hintText: "Full Name *",
                            ),
                            SizedBox(
                              height: 0.014 * scHeight,
                            ),
                            CustomTextField(
                              label: "Address",
                              hintText: "Address *",
                            ),
                            SizedBox(
                              height: 0.014 * scHeight,
                            ),
                            DropdownMenu(
                              width: scWidth -
                                  0.021 * 2 * scWidth -
                                  0.048 * 2 * scWidth,
                              initialSelection: districts.first,
                              dropdownMenuEntries: districts
                                  .map<DropdownMenuEntry<String>>(
                                      (String value) {
                                return DropdownMenuEntry<String>(
                                    value: value,
                                    label: value,
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(
                                          AppColor.whiteColor),
                                    ));
                              }).toList(),
                            ),
                            SizedBox(
                              height: 0.014 * scHeight,
                            ),
                            CustomTextField(
                              label: "Email Address",
                              hintText: "Email Address *",
                            ),
                            SizedBox(
                              height: 0.014 * scHeight,
                            ),
                            CustomTextField(
                              label: "Mobile Number",
                              hintText: "Mobile Number *",
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
                                hintStyle: AppStyles.text12PxRegular.copyWith(
                                  color: Colors.grey.shade400,
                                  fontWeight: FontWeight.w300,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                      color: AppColor.borderGrey),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: const BorderSide(
                                    color: AppColor.textGrey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
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
                                          "${widget.products[index].name!.length > 27 ? "${widget.products[index].name!.substring(0, 27)}..." : widget.products[index].name!} (x${widget.products[index].quantity})",
                                          textStyle:
                                          AppStyles.text12PxRegular.copyWith(
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        const Spacer(),
                                        Texts(
                                          texts:
                                          "Rs. ${widget.products[index].old_price!.isEmpty ? widget.products[index].price! : widget.products[index].old_price! * widget.products[index].quantity!}",
                                          textStyle:
                                          AppStyles.text12PxRegular.copyWith(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    separatorBuilder: (context, index) => SizedBox(
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
                                          .copyWith(color: AppColor.textGreyColor),
                                    ),
                                    const Spacer(),
                                    Texts(
                                      texts: 'Rs. ${discount.toStringAsFixed(2)}',
                                      textStyle: AppStyles.text14PxMedium
                                          .copyWith(color: AppColor.textGreyColor),
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
                                          .copyWith(color: AppColor.textGreyColor),
                                    ),
                                    const Spacer(),
                                    Texts(
                                      texts: '${totalWeight} Kgs',
                                      textStyle: AppStyles.text14PxMedium
                                          .copyWith(color: AppColor.textGreyColor),
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
                                      color: AppColor.appColor.withOpacity(0.08)),
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
                                        texts: 'Rs. ${total.toStringAsFixed(2)}',
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
                                  isSelected:
                                      paymentOption == "Cash on Delivery",
                                  value: "Cash on Delivery",
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
                                            paymentOption == "QR Code Payment",
                                        label: "QR Code Payment",
                                        value: "QR Code Payment",
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
                                        isSelected:
                                            paymentOption == "Card on Delivery",
                                        label: "Card on Delivery",
                                        value: "Card on Delivery",
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
                                            paymentOption = "Khalti";
                                          });
                                        },
                                        isSelected: paymentOption == "Khalti",
                                        imageUrl: AssetsHelper.khaltiImg,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.029 * scWidth,
                                    ),
                                    Expanded(
                                      child: AppPaymentCard(
                                        onTap: () {
                                          setState(() {
                                            paymentOption = "Esewa";
                                          });
                                        },
                                        isSelected: paymentOption == "Esewa",
                                        imageUrl: AssetsHelper.esewaImg,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 0.013 * scHeight,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AppPaymentCard(
                                        onTap: () {
                                          setState(() {
                                            paymentOption = "Fonepay";
                                          });
                                        },
                                        isSelected: paymentOption == "Fonepay",
                                        imageUrl: AssetsHelper.fonepayImg,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 0.029 * scWidth,
                                    ),
                                    Expanded(
                                      child: AppPaymentCard(
                                        onTap: () {
                                          setState(() {
                                            paymentOption = "ConnectIps";
                                          });
                                        },
                                        isSelected:
                                            paymentOption == "ConnectIps",
                                        imageUrl: AssetsHelper.connectipsImg,
                                      ),
                                    ),
                                  ],
                                ),
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
              ),
              bottomNavigationBar: Container(
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
                    InkWell(
                      onTap: () {},
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
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
