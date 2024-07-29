import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/app/presentation/app.dart';
import 'package:hardwarepasal/src/core/helpers/string_helper.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/banner_model/banner_model.dart';

import '../../../../core/helpers/assets_helper.dart';
import '../../../../core/themes/app_colors.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({super.key, required this.bannerModel});
  final BannerModel bannerModel;


  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  int selectedIndex = 0;

  late PageController pageController;
  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    pageController = PageController();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      if(widget.bannerModel.data != null){
        if (selectedIndex < widget.bannerModel.data!.length - 1) {
          selectedIndex++;
        } else {
          selectedIndex = 0;
        }
      }

      pageController.animateToPage(
        selectedIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 200.h,
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              selectedIndex = index;
              setState(() {});
            },
            itemCount: widget.bannerModel.data?.length ?? 0,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),

              // padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    imageUrl:
                    '${StringHelper.bannerBaseUrl}${widget.bannerModel.data?[index].image}',
                    placeholder: (context,
                        url) =>
                    Center(child: const CircularProgressIndicator()),
                    errorWidget: (context,
                        url, error) =>
                        Image.asset(
                            AssetsHelper
                                .placeHolder),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 12.h,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            // color: AppColor.appColor.withOpacity(0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                widget.bannerModel.data?.length ?? 0,
                    (index) => Container(
                  width: 8.w,
                  height: 8.h,
                  margin: EdgeInsets.symmetric(horizontal: 4.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index == selectedIndex
                        ? AppColor.whiteColor
                        : AppColor.whiteColor.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Image.asset(
        'asset/images/banner.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
