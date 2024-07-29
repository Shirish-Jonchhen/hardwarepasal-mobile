import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/helpers/assets_helper.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';

class BottomNavigationPage extends StatefulWidget {
  const BottomNavigationPage({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavigationPageState createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double scWidth = MediaQuery.of(context).size.width;
    final double scHeight = MediaQuery.of(context).size.height;
    List<PageRouteInfo<dynamic>> screens = [
      const HomeScreenRoute(),
      const WishListScreenRoute(),
      const CategoryScreenRoute(),
      const BrandsScreenRoute(),
      const ProfileScreenRoute(),
    ];
    return AutoTabsRouter(
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: Container(child: child),
          bottomNavigationBar: Theme(
            data: ThemeData(splashColor: AppColor.whiteColor),
            child: BottomNavigationBar(
              backgroundColor: AppColor.whiteColor,
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: Colors.black45,
              showSelectedLabels: true,
              selectedItemColor: AppColor.appColor,
              selectedIconTheme: const IconThemeData(color: AppColor.appColor),
              items: [
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    AssetsHelper.homeIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: AppColor.appColor,
                  ),
                  label: 'Home',
                  icon: Image.asset(AssetsHelper.homeIcon,
                      height: 0.027 * scHeight, width: 0.064 * scWidth),
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    AssetsHelper.wishlistIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: AppColor.appColor,
                  ),
                  label: 'Wishlist',
                  icon: Image.asset(
                    AssetsHelper.wishlistIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Category',
                  activeIcon: Image.asset(
                    AssetsHelper.categoryIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: AppColor.appColor,
                  ),
                  icon: Image.asset(
                    AssetsHelper.categoryIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                  ),
                ),
                BottomNavigationBarItem(
                  label: 'Brands',
                  activeIcon: Image.asset(
                    AssetsHelper.brandsIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: AppColor.appColor,
                  ),
                  icon: Image.asset(
                    AssetsHelper.brandsIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                  ),
                ),
                BottomNavigationBarItem(
                  activeIcon: Image.asset(
                    AssetsHelper.profileIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                    color: AppColor.appColor,
                  ),
                  label: 'Profile',
                  icon: Image.asset(
                    AssetsHelper.profileIcon,
                    height: 0.027 * scHeight,
                    width: 0.064 * scWidth,
                  ),
                ),
              ],
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                // here we switch between tabs
                tabsRouter.setActiveIndex(index);
              },
            ),
          ),
        );
      },
      routes: screens,
    );
  }
}
