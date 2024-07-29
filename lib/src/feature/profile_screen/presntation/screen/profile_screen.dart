import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:hardwarepasal/src/core/widgets/app_texts.dart';
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/logout/logout_cubit.dart';
import 'package:hardwarepasal/src/feature/profile_screen/presntation/cubit/user_details_cubit.dart';

import '../../../../core/di/injection.dart';

class ProfileScreenPage extends StatefulWidget {
  const ProfileScreenPage({super.key});

  @override
  State<ProfileScreenPage> createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreenPage> {
  List<Map<String, dynamic>> generalList = [
    {
      'title': 'Edit Profile',
      'route': const EditProfileScreenRoute(),
    },
    {
      'title': 'Notifications',
      'route': const NotificationScreenRoute(),
    },
    {
      'title': 'Wishlist',
      'route': const WishListScreenRoute(),
    },
    {
      'title': 'My Orders',
      'route': const MyOrdersScreenRoute(),
    },
    {
      'title': 'My Reviews',
      'route': const MyReviewsScreenRoute(),
    },
    {
      'title': 'Chat with us',
      'route': null,
    },
  ];
  List<Map<String, dynamic>> legalList = [
    {'title': 'Terms of use', 'route': TermsAndConditionsScreenRoute()}, // Assuming TermsOfUseScreenRoute is defined
    {'title': 'Return Policy', 'route': ReturnPolicyScreenRoute()}, // Assuming ReturnPolicyScreenRoute is defined
  ];

  List<Map<String, dynamic>> personalList = [
    {'title': 'Change Password', 'route': ChangePasswordScreenRoute()}, // Assuming ChangePasswordScreenRoute is defined
    {'title': 'Report a Bug', 'route': null}, // Assuming ReportBugScreenRoute is defined
    {'title': 'Logout', 'route': null}, // Assuming LogoutScreenRoute is defined
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<UserDetailsCubit>().getUserDetails();
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
              texts: 'Profile',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 1,
              width: double.infinity,
              color: AppColor.lightGrey,
            ),
            Padding(
              padding: EdgeInsets.all(0.015 * scWidth),
              child: BlocConsumer<UserDetailsCubit, UserDetailsState>(
                builder: (BuildContext context, UserDetailsState state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    loading: () => const Center(
                      child: CircularProgressIndicator(),
                    ),
                    initial: () => const SizedBox(),
                    noInternet: () => const Center(
                      child: Text('No Internet'),
                    ),
                    error: (message) => Center(
                      child: Text(message),
                    ),
                    success: (data) {
                      return ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              texts: "${data.data!.first_name!} ${data.data!.last_name!}",
                              textStyle: AppStyles.text16PxRegular.copyWith(
                                color: AppColor.textGreyColor,
                              ),
                            ),
                            Texts(
                              texts: data.data!.email ?? '',
                              textStyle: AppStyles.text14PxRegular.copyWith(
                                color: AppColor.greyButtonText,
                              ),
                            ),
                          ],
                        ),
                        // leading: Image.network(
                        //   'https://hardwarepasalapi.checkmysite.live/src/img/users/${data.data!.image!}',
                        //   width: 0.14 * scWidth,
                        //   height: 0.14 * scWidth,
                        //   fit: BoxFit.cover,
                        // )
                        leading: Container(
                          width: 0.14 * scWidth,
                          height: 0.14 * scWidth,
                          decoration: BoxDecoration(
                            color: AppColor.lightGrey,
                            shape: BoxShape.circle,
                            image: (data.data!.image != null && data.data!.image!.isNotEmpty)?
                              DecorationImage(
                              image: NetworkImage(
                                      'https://hardwarepasalapi.checkmysite.live/src/img/users/${data.data!.image!}',


                              ),
                              fit: BoxFit.cover,
                            ):
                            const DecorationImage(
                              image: AssetImage(AssetsHelper.profileIcon),
                              fit: BoxFit.cover,
                            )
                          ),
                        ),
                      );
                    },
                  );
                },
                listener: (BuildContext context, UserDetailsState state) {
                  state.maybeWhen(
                    success: (data) {
                      setState(() {});
                    },
                    orElse: () {},
                  );
                },
              ),
            ),
            Divider(
                color: AppColor.lightGrey,
              ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.064 * scWidth, vertical: 0.019 * scHeight),
              child: Texts(
                texts: 'General',
                textStyle: AppStyles.text14PxRegular.copyWith(
                  color: AppColor.greyButtonText,
                ),
              ),
            ),
            ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (generalList[index]['title'] == "Wishlist") {
                    final tabsRouter = AutoTabsRouter.of(context);
                    tabsRouter.setActiveIndex(1);
                  }
                  if (generalList[index]['route'] != null) {
                    context.router.push(generalList[index]['route']);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.064 * scWidth, vertical: 0.017 * scHeight),
                  child: Texts(
                    texts: generalList[index]['title'],
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                color: AppColor.lightGrey,
              ),
              itemCount: generalList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
            Divider(
                color: AppColor.lightGrey,
              ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.064 * scWidth, vertical: 0.019 * scHeight),
              child: Texts(
                texts: 'Legal',
                textStyle: AppStyles.text14PxRegular.copyWith(
                  color: AppColor.greyButtonText,
                ),
              ),
            ),
            ListView.separated(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  if (legalList[index]['route'] != null) {
                    context.router.push(legalList[index]['route']);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.064 * scWidth, vertical: 0.017 * scHeight),
                  child: Texts(
                    texts: legalList[index]['title'],
                    textStyle: AppStyles.text14PxRegular.copyWith(
                      color: AppColor.textGreyColor,
                    ),
                  ),
                ),
              ),
              separatorBuilder: (context, index) => Divider(
                color: AppColor.lightGrey,
              ),
              itemCount: legalList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
            Divider(
                color: AppColor.lightGrey,
              ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.064 * scWidth, vertical: 0.019 * scHeight),
              child: Texts(
                texts: 'Personal',
                textStyle: AppStyles.text14PxRegular.copyWith(
                  color: AppColor.greyButtonText,
                ),
              ),
            ),
            ListView.separated(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    if (personalList[index]['route'] != null) {
                      context.router.push(personalList[index]['route']);
                    }
                    if(personalList[index]['title'] == 'Logout'){
                      print("Hello");
                      context.read<LogoutCubit>().logout();
                      context.router.push(const LoginScreenRoute());
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 0.064 * scWidth,
                        vertical: 0.017 * scHeight),
                    child: Texts(
                      texts: personalList[index]['title'],
                      textStyle: AppStyles.text14PxRegular.copyWith(
                        color: AppColor.textGreyColor,
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) => Divider(
                color: AppColor.lightGrey,
              ),
              itemCount: personalList.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
            Divider(
                color: AppColor.lightGrey,
              ),
            SizedBox(
              height: 0.024 * scHeight,
            )
          ],
        ),
      ),
    );
  }
}
