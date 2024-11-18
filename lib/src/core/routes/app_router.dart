import 'package:hardwarepasal/src/app/presentation/bottom_nav_bar.dart';
import 'package:hardwarepasal/src/core/routes/app_router.gr.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/screen/brand_detail_screen.dart';
import 'package:hardwarepasal/src/feature/cart_screen/presentation/screen/cart_screen_page.dart';
import 'package:hardwarepasal/src/feature/category_level_3_screen/presentation/screen/category_level_3_screen_page.dart';
import 'package:hardwarepasal/src/feature/change_password/presentation/screen/change_password_screen.dart';
import 'package:hardwarepasal/src/feature/features_products_screen/presentation/screen/featured_products_screen.dart';
import 'package:hardwarepasal/src/feature/my_reviews_screen/presentation/screen/my_reviews_screen.dart';
import 'package:hardwarepasal/src/feature/recently_viewed_screen/presentation/screen/recently_viewed_screen.dart';
import 'package:hardwarepasal/src/feature/update_profile/presentation/screen/edit_profile_screen.dart';
import 'package:hardwarepasal/src/feature/auth/presentation/screen/login_screen.dart';
import 'package:hardwarepasal/src/app/presentation/notifications_screen.dart';
import 'package:hardwarepasal/src/feature/auth/presentation/screen/register_screen.dart';
import 'package:hardwarepasal/src/app/presentation/return_policy_screen.dart';
import 'package:hardwarepasal/src/feature/search_screen/presentation/screen/search_area_screen.dart';
import 'package:hardwarepasal/src/app/presentation/search_filter_screen.dart';
import 'package:hardwarepasal/src/app/presentation/splash_screen.dart';
import 'package:hardwarepasal/src/app/presentation/sub_brands_screen.dart';
import 'package:hardwarepasal/src/feature/sub_category_screen/sub_category_screen.dart';
import 'package:hardwarepasal/src/app/presentation/terms_and%20_conditions_screen.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/screen/wishlist_screen.dart';
import 'package:hardwarepasal/src/core/di/injection.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/feature/app_start/onboarding_screen.dart';
import 'package:hardwarepasal/src/feature/auth/presentation/screen/login.dart';
import 'package:hardwarepasal/src/feature/brands_screen/presentation/Screen/brands_screen.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/screen/categories_screen.dart';
import 'package:hardwarepasal/src/feature/checkout/presentation/screen/checkout_screen.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/screen/home_screen.dart';
import 'package:hardwarepasal/src/feature/profile_screen/presntation/screen/profile_screen.dart';

import '../../feature/free_delivery_screen/prasentation/screen/free_delivery_screen.dart';
import '../../feature/hot_deals_screen/presentation/screen/hot_deals_screen.dart';
import '../../feature/my_orders_screen/presentation/screen/my_orders_screen.dart';
import '../../feature/item_detail_screen/presentation/screen/item_detail_screen.dart';
import '../../feature/new_arrivals_screen/presentation/screen/new_arrivals_screen.dart';
import '../../feature/similar_products_screen/presentation/screen/similar_products_screen.dart';
import 'app_router.dart';

export 'package:auto_route/auto_route.dart';

export 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute<void>(page: SplashScreenPage, initial: true),
    AutoRoute<void>(page: OnBoardingScreenPage),
    AutoRoute<void>(page: LoginPage),
    AutoRoute<void>(page: ItemDetailScreenPage),
    AutoRoute<void>(page: LoginScreenPage),
    AutoRoute<void>(page: RegisterScreenPage),
    AutoRoute<void>(page: CartScreenPage),
    AutoRoute<void>(page: SearchAreaScreenPage),
    AutoRoute<void>(page: SearchFilterScreenPage),
    AutoRoute<void>(page: EditProfileScreenPage),
    AutoRoute<void>(page: NotificationScreenPage),
    AutoRoute<void>(page: ChangePasswordScreenPage),
    AutoRoute<void>(page: MyOrdersScreenPage),
    AutoRoute<void>(page: TermsAndConditionsScreenPage),
    AutoRoute<void>(page: ReturnPolicyScreenPage),
    AutoRoute<void>(page: SubBrandsScreenPage),
    AutoRoute<void>(page: SubCategoryScreenPage),
    AutoRoute<void>(page: CheckoutScreenPage),
    AutoRoute<void>(page: MyReviewsScreenPage),
    AutoRoute<void>(page: CategoryLevel3ScreenPage),
    AutoRoute<void>(page: BrandDetailScreenPage),
    AutoRoute<void>(page: RecentlyViewedScreenPage),
    AutoRoute<void>(page: FeaturedProductsScreenPage),
    AutoRoute<void>(page: SimilarProductsScreenPage),
    AutoRoute<void>(page: NewArrivalsScreenPage),
    AutoRoute<void>(page: FreeDeliveryScreenPage),
    AutoRoute<void>(page: HotDealsScreenPage),
    AutoRoute<void>(
      page: BottomNavigationPage,
      children: [
        AutoRoute<void>(page: HomeScreenPage),
        AutoRoute<void>(page: WishListScreenPage),
        AutoRoute<void>(page: CategoryScreenPage),
        AutoRoute<void>(page: BrandsScreenPage),
        AutoRoute<void>(page: ProfileScreenPage),
      ],
    ),
  ],
)
class $AppRouter {}

class AuthGuard extends AutoRouteGuard {
  final _helper = getIt<StorageHelper>();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (await _helper.hasAccessToken) {
      resolver.next();
    } else {
      router.root.replaceAll([const LoginRoute()]);
    }
  }
}
