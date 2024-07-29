import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';

import '../../core/helpers/assets_helper.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';
import '../../core/widgets/app_texts.dart';

class ReturnPolicyScreenPage extends StatelessWidget {
  ReturnPolicyScreenPage({super.key});

  final List<String> returnPolicy = [
    'For returning an order, Hardwarepasal.com provides the facility to deliver the product at your doorstep inside Kathmandu Valley and the customer can check the product immediately when delivered. If they find any discrepancies such as product not being similar to what has been displayed on the website or the product does not match the description. The customer can immediately return the product.',
    'If the customer accepts the orders and makes the payment and later decides to return such product, then customer shall not be able to do as such, rather customer will be able to exchange the product on request.',
    'The Company shall not allow refund if the customer place’s an order of an incorrect product or if the customer changes its mind or heart after purchasing.',
    'The product should be returned within 7 days from the date of order received and we will not accept the return or exchange after crossing of 7 days.',
    'To return or exchange the product, customer needs to call our support to file a return complaint’s within 7 days of delivery.',
    'The request for return or exchange needs to be approved by our support.',
  ];

  final List<String> returnCondition = [
    'If the product received by the customer is physically damaged.',
    'If the product delivered has missing parts or accessories.',
    'Any defect in the product.',
    'If the product delivered varies from the product displayed on our website.',
  ];

  final List<String> conditionsInValley = [
    'It shall be the duty of the customer to return the product in the same packaging when received with its respective bill.',
    'The product should not have any marks, scratch, fingerprints, dirt or any type of physical damage.',
    'If the above mentioned conditions are not fulfilled by the customer then the company shall refuse to take back the return product.',
    'And if the above mentioned conditions are met by the customer, then the return product shall be collected and money shall be deposited into the customer’s bank account within 2 days from the date of return.',
  ];

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
              texts: 'Return Policy',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Divider(),
        
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 0.042 * scWidth, vertical: 0.024 * scHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(
                          texts: '•',
                          textStyle: AppStyles.text16PxRegular.copyWith(
                            color: AppColor.textGreyColor,
                          ),
                        ),
                        SizedBox(width: 0.021 * scWidth,),
                        Expanded(
                          child: Texts(
                            texts: returnPolicy[index],
                            textStyle: AppStyles.text16PxRegular.copyWith(
                              color: AppColor.textGreyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    itemCount: returnPolicy.length,
                  ),
        
                  SizedBox(
                    height: 0.025 * scHeight,
                  ),
                  Texts(
                    texts: 'CONDITIONS ON WHICH RETURN IS ACCEPTED',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),

                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(
                          texts: '•',
                          textStyle: AppStyles.text16PxRegular.copyWith(
                            color: AppColor.textGreyColor,
                          ),
                        ),
                        SizedBox(width: 0.021 * scWidth,),
                        Expanded(
                          child: Texts(
                            texts: returnCondition[index],
                            textStyle: AppStyles.text16PxRegular.copyWith(
                              color: AppColor.textGreyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    itemCount: returnCondition.length,
                  ),
                  SizedBox(
                    height: 0.025 * scHeight,
                  ),
                  Texts(
                    texts: 'PROCEDURE OF RETURN',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'For Kathmandu Valley',
                    textStyle: AppStyles.text16PxRegular.copyWith(
                      color: AppColor.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Once the return request has been submitted by the Customer, the product shall be picked by our team within 1-2 days. Our team will make sure that the product goes through a quality check and any other discrepancies attached to it.',
                    textStyle: AppStyles.text16PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Conditions',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),

                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(
                          texts: '•',
                          textStyle: AppStyles.text16PxRegular.copyWith(
                            color: AppColor.textGreyColor,
                          ),
                        ),
                        SizedBox(width: 0.021 * scWidth,),
                        Expanded(
                          child: Texts(
                            texts: conditionsInValley[index],
                            textStyle: AppStyles.text16PxRegular.copyWith(
                              color: AppColor.textGreyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    itemCount: conditionsInValley.length,
                  ),

                  SizedBox(
                    height: 0.025 * scHeight,
                  ),
                  Texts(
                    texts: 'For Outside Valley',
                    textStyle: AppStyles.text16PxRegular.copyWith(
                      color: AppColor.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Once the return request has been submitted, the product shall be couriered back to our office address.',
                    textStyle: AppStyles.text16PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Conditions',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),

                    shrinkWrap: true,
                    itemBuilder: (context, index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Texts(
                          texts: '•',
                          textStyle: AppStyles.text16PxRegular.copyWith(
                            color: AppColor.textGreyColor,
                          ),
                        ),
                        SizedBox(width: 0.021 * scWidth,),
                        Expanded(
                          child: Texts(
                            texts: conditionsInValley[index],
                            textStyle: AppStyles.text16PxRegular.copyWith(
                              color: AppColor.textGreyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    itemCount: conditionsInValley.length,
                  ),

                  SizedBox(
                    height: 0.025 * scHeight,
                  ),
                  Texts(
                    texts: 'SHIPPING COST POLICY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'At Hardwarepasal.com shipping cost shall not be refunded.',
                    textStyle: AppStyles.text16PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
        
        
        
                ],
              )
            ),
        
        
          ],
        ),
      ),
    );
  }
}
