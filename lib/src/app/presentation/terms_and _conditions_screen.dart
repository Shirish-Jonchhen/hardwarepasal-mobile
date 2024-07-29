import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';

import '../../core/helpers/assets_helper.dart';
import '../../core/themes/app_colors.dart';
import '../../core/themes/app_styles.dart';
import '../../core/widgets/app_texts.dart';

class TermsAndConditionsScreenPage extends StatelessWidget {
  const TermsAndConditionsScreenPage({super.key});

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
              texts: 'Terms and conditions',
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
              padding: EdgeInsets.symmetric(
                  horizontal: 0.042 * scWidth, vertical: 0.024 * scHeight),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Texts(
                    texts: 'Welcome to Hardwarepasal.com. Hardwarepasal website provides an online- based shopping platform that allows the users to buy, sell and advertise their products and services. The content and services available on the website to you subject to the following Terms and Conditions, our Privacy Policy, Return Policy and other terms and conditions and policies which you may find throughout our website in connection with certain functionality, features or promotions as well as customer service, all of which are deemed a part of and included within these terms and conditions (collectively, “Terms and Conditions”). By accessing or using this website, you are acknowledging that you have read, understood, and you agree, without any limitation or qualification, to be bound by these Terms and Conditions.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'DEFINITIONS',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'The parties referred to in this Terms and Conditions shall be defined as follows:\n\nCompany, Us, We: The Company, as the creator, operator and publisher of the Website, makes the Website and certain Services on it which is available to users. Company, Us, We, Ours and other first person pronouns will refer to the Company, as well as all employees and affiliates of the Company.\n\nClient, the User, You: As the user of the Website, will be referred with second-person pronouns such as You, Your, Yours or as User or Client.\n\nParties: Collectively, the parties to this Agreement (the Company and Client) will be referred to as Parties.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'ASSENT & ACCEPTANCE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'By using the website, you warrant that you have read and reviewed this Terms and Conditions and that you agree to be bound by it. The Company only agrees to provide use of this website and services to you only if you assent to this Terms and Conditions.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //members eligibility
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'MEMBERS ELIGIBILITY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Use of this website is available only to persons who can form legally binding contracts under applicable law of Nepal. If you are a minor i.e. under the age of 18 years, you cannot register as a member of the Site and cannot sell, purchase or advertise any product on this Website.\n\nHardwarepasal.com reserves the right to terminate your membership and refuse to provide any further access to this site if the Company discovers that you are a minor. If you are willing to register as a business entity, you represent that you have the authority to be bounded as an entity to this Agreement.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),


                  //condition of use
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'CONDITION OF USE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Users are assumed to acknowledge that:\n\nUsers will provide true, accurate, current and valid information about you;\n\nYou must not include any of your contact details such as email addresses etc in your username;\n\nMaintain and promptly update the Registration date to keep it true, accurate, current and complete.\n\nIf you provide any information that is untrue, inaccurate, not correct or incomplete the Hardwarepasal.com has reasonable grounds to indefinitely suspend or terminate your membership and refuse to provide you with access to the Site.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //lics
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'LICENSE TO USE WEBSITE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'We grant you a limited, revocable and non-exclusive license to access and make personal use of Hardwarepasal.com website. This limited license does not include the right to:\n\nFrame or utilize framing techniques to enclose the website or any portion thereof;\n\nRepublish, redistribute, transmit, sell, license or download the website or any and/or all content other than personal use;\n\nModify, reverse engineer or create any derivative works based upon either the website or any and/or all content;\n\nCollect account information for the benefit of yourself or another party;\n\nThe Company may provide you with certain information as a result of your use of the Website or Services. Such information may include, but is not limited to documentation, data, or information developed by the Company and other materials which may assist in your use of the Website or Services (“Company Materials”). Such to this Agreement, the Company grants the client a non-exclusive, limited, non-transferable and revocable license to use the Company Materials solely in connection with your use of the website and services, The Company Material may not be used for any other purpose, and this license terminates upon your cessation of use of the Website Or Services or at the termination of this Agreement.\n\nAny unauthorized use by you of the Hardwarepasal.com website or any/or all of our content automatically terminated the limited licenses set forth in this Section without prejudice to any other remedy provided by applicable law or these Terms and Conditions.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),


                  //accuracy
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'ACCURACY OF INFORMATION',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'We attempt to be as accurate as possible when describing our products on the website. However, except to the extent implied by applicable law, we do not warrant that the product descriptions, colors, information or other content available on the website are accurate, complete, reliable, current or, error-free.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),


                  //persomal use and all
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'PRODUCTS AND SERVICE FOR PERSONAL USE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'The products and services described on this website, and any samples thereof we may provide to you, are for personal use only. You may not sell or resell any of the products or services or samples, thereof, you receive from us. We reserve the right, with or without notice, to cancel or reduce the quantity of any products or services to provide to you that we believe, in our sole discretion, may result in the violation of our Term and Conditions.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //product price
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'PRODUCT PRICE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Hardwarepasal pvt ltd has the right to change the price of the product when suppliers increase the price from there end. ',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Delivery and return policy
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'DELIVERY/RETURN POLICY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'You agree to ensure payment for any items you may purchase from us and you acknowledge and affirm that prices are subject to change. When purchasing a physical good, you agree to provide us with a valid email and shipping address, as well as valid billing information. We reserve the right to reject or cancel an order for any reason, including errors or omissions in the information that you provided to us. If we do so after payment has been processed, we will issue a refund to you in the amount of the purchase price. We also may request additional information from you prior to confirming a sale, and we reserve the right to place any additional restrictions on the sale of any of our products. You agree to ensure payment and affirm that prices are subject to changes. For any questions, concerns, or disputes, you agree to contact us in a timely manner at the following address: info@hardwarepasal.com.\n\nFor further details please check our Return Policy Agreement.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Cancellation of the order
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'CANCELLATION OF ORDER',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'When the ordered product is not in stock at suppliers end, Hardwarepasal Pvt Ltd has the full rights to cancel the customers order.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Provacy POlicy
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'PRIVACY POLICY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Please review our Policy Agreement, which governs your visit to the website. The personal information/ data provided are confidential, in accordance with the Privacy Agreement and applicable laws and regulation. If you have any objection to provide your personal information then please do not use this site.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Oblicaiton
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'YOUR OBLIGATIONS AND RESPONSIBILITIES',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'In the access or use of the Hardwarepasal.com website, you shall comply with these Terms and Conditions and the special warnings and instructions for access or use posted on the website. You shall act always in accordance with the law, custom and in good faith. You may not make any changes or alteration to the website or any content or services that may appear on this website and may not impair in any way the integrity or operation of the website. Without limiting the generally of any other provision of these Terms and Conditions, if you default negligently or willfully in any of the obligations set forth in these Terms and Conditions, you shall be liable for all the losses and damages that this may cause to Hardwarepasal.com, our affiliates, partners or licensors.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Submission
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'SUBMISSION',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'It is our policy to decline unsolicited suggestions and ideas. Notwithstanding our policy with regard to unsolicited suggestions and ideas, any inquires, feedback, suggestions, ideas or other information you provide us (collectively, “Submissions”) will be treated as non-proprietary and non-confidential. Subject to terms of our policy, by transmitting or posting any Submission, you hereby grant us the right to copy, use, reproduce, modify, adapt, translate, publish, distribute, sell or assign the Submission in any way as we see fit, including but not limited to copying in whole or in part, creating derivative works from, distributing and displaying any Submission in any form, media, or technology, whether now known or hereafter developed, alone or as part of other works, or using the Submission within on in connection with our products or services. You also acknowledge that you Submission will not be returned and we may use your Submission, and any ideas, concepts or know how contained therein, without payment of money or any other form of consideration, for any purpose including, without limitation, developing, manufacturing, distributing and marketing products.\n\nIf you make a Submission, you represent and warrant that you own or otherwise control the rights to your Submission. You may not use a false email indemnify us for all claims arising from or in connection with any claims to any rights in any Submission or any damages arising from any Submission.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Indemnification
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'INDEMNIFICATION',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'You agree to defend, indemnify and hold us harmless for any loss, damages or costs, including reasonable attorney’s fees, resulting from any third party claim, action, or demand resulting from your use of our website or breach of these Terms and Conditions.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //dispute
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'DISPUTE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'With respect to any dispute regarding the website, all rights and obligations and all actions contemplated by these Terms and Conditions shall be governed by the laws of Nepal and the Courts of Kathmandu, Nepal as if the Terms and Conditions were a contract wholly entered into and wholly performed within Kathmandu, Nepal. To the fullest extent permitted by applicable law, any dispute, differences or claim arising out your visit to the Hardwarepasal.com website shall be referred to the Arbitrator by the Director of Hardwarepasal.com in accordance with the law. The venue of such Arbitration shall be at Kathmandu, Nepal and the award of the Arbitrator shall be final and binding on all parties and may be entered as a judgment in any Court of competent jurisdiction. To the fullest extent permitted by applicable law, no arbitration under these Terms and Conditions shall be joined to an arbitration involving any other party subject to this Terms and Conditions.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //amendment
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'AMENDMENTS',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'The Company reserves the right to make changes to the site, its policies, these terms and conditions and any other publicly displayed condition or service promise at policies and terms and conditions in force at the time you used the site unless any changes to those policies or these conditions is required to be made by case it will apply to orders previously placed by you. If any of these conditions is deemed invalid, void, or for any reason unenforceable, that condition will affect the validity and enforceability of any remaining condition.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //force majure
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'FORCE MAJEURE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'The Company is not liable for any failure to perform due to cause beyond its reasonable control including, but not limited to Act of God, acts of civil authorities, acts of Nature and Natural disasters and other acts which may be due to unforeseen circumstances.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //servability
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'SERVABILITY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'If any part or sub-part of this Agreement is held invalid or unenforceable by a court of law or competent arbitrator, the remaining parts and sub-parts will be enforced to the maximum extent possible. In such condition, the remainder of this Agreement shall continue in full force.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //No waiver
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'NO WAIVER',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'In the event that we fail to enforce any provision of this Agreement, this shall not constitute a waiver of any future enforcement of that provision or of any other provision. Waiver of any part or sub-part of this Agreement will not constitute a waiver of any other part or sub-part.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //governing law
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'GOVERNING LAW',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'This Agreement shall be governed in all respects by the laws of Nepal. Both Parties consent to jurisdiction under the courts of Kathmandu. The Parties agrees that this choice of law, venue and jurisdiction provision is not permissive, but rather mandatory in nature.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Product Price
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'PRODUCT PRICE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Hardwarepasal pvt ltd has the right to change the price of the product when our suplliers increase the price.\n\nIf you have any questions regarding these Terms and Conditions, please email us at info@hardwarepasal.com',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //vendor condfidintiality

                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'CONFIDENTIALITY OF VENDOR INFORMATION',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Hardwarepasal.com acknowledges that the vendor information is confidential. We agree not to share vendor information with customers or any other third parties. We will handle all vendor information with the utmost confidentiality and in accordance with applicable laws and regulations.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //minimum order value
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'MINIMUM ORDER VALUE',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'In order to streamline our order processing and delivery procedures, Hardwarepasal.com has instituted a minimum order value of NRS 750 for deliveries to customers. All orders intended for delivery must meet or exceed this minimum order value. Should an order fall below NRS 750, customers will be required to make a pre-payment. Subsequently, customers will need to collect the ordered goods below NRS 750 in person from our physical location on the day following the order and prepayment.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //services
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'SERVICES',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Hardwarepasal.com will collaborate with service vendors to connect customers with the required hardware-related services, repairs, and maintenance. We will facilitate the engagement between customers and service providers, acting as an intermediary to streamline the process.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //service provider seleactin
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'SERVICE PROVIDER SELECTION',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Hardwarepasal.com will make efforts to connect customers with suitable service providers based on the service requirements provided by the customer. However, the selection of a specific service provider remains at the discretion of the customer.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //service quality and responsibility
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'SERVICE QUALITY AND RESPONSIBILITY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'We make reasonable efforts to ensure that the service providers we collaborate with offer high-quality services. However, the quality and outcome of the services are the sole responsibility of the service providers. Hardwarepasal.com does not guarantee or warrant the quality, accuracy, or suitability of the services provided by third-party vendors.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //payments a dfees
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'PAYMENTS AND FEES',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Customers are responsible for the fees and charges associated with the services they receive. Payment terms and pricing will be communicated by the service providers, and Hardwarepasal.com is not liable for any disputes or financial transactions between customers and service providers.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //liabilities
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'LIABILITY',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Hardwarepasal.com is not liable for any loss, damage, injury, or dissatisfaction related to the services provided by third-party vendors. Customers are encouraged to communicate directly with the service providers to address any concerns or issues.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),

                  //Service terms
                  SizedBox(
                    height: 0.019 * scHeight,
                  ),
                  Texts(
                    texts: 'SERVICE TERMS',
                    textStyle: AppStyles.text16PxSemiBold.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  SizedBox(
                    height: 0.014 * scHeight,
                  ),
                  Texts(
                    texts: 'Each service engagement may come with its own terms and conditions, which will be communicated by the respective service provider. Customers are advised to review and agree to these terms before proceeding with the service.',
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
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
