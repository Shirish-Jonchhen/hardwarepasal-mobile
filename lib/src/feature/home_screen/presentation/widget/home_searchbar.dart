import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/feature/search_screen/presentation/screen/search_area_screen.dart';
import 'package:hardwarepasal/src/app/presentation/search_filter_screen.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/widgets/app_textfield.dart';

class HomeSearchBar extends StatefulWidget {
  const HomeSearchBar({super.key});

  @override
  State<HomeSearchBar> createState() => _HomeSearchBarState();
}

class _HomeSearchBarState extends State<HomeSearchBar> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        border: Border(
          bottom: BorderSide(
            color: AppColor.textGrey.withOpacity(0.2),
            width: 1,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        child: SizedBox(
          height: 48.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SearchAreaScreenPage(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColor.transparent,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: AppColor.textGrey.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 0.032 * scWidth,
                            vertical: 0.01 * scHeight),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: AppColor.textGrey,
                              size: 24.sp,
                            ),
                            SizedBox(
                              width: 0.026 * scWidth,
                            ),
                            Text(
                              'Search for products',
                              style: TextStyle(
                                color: AppColor.textGrey,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
