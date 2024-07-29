// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i28;
import 'package:flutter/material.dart' as _i29;
import 'package:hardwarepasal/src/app/presentation/bottom_nav_bar.dart' as _i22;
import 'package:hardwarepasal/src/app/presentation/notifications_screen.dart'
    as _i11;
import 'package:hardwarepasal/src/app/presentation/return_policy_screen.dart'
    as _i15;
import 'package:hardwarepasal/src/app/presentation/search_filter_screen.dart'
    as _i9;
import 'package:hardwarepasal/src/app/presentation/splash_screen.dart' as _i1;
import 'package:hardwarepasal/src/app/presentation/sub_brands_screen.dart'
    as _i16;
import 'package:hardwarepasal/src/app/presentation/sub_category_screen.dart'
    as _i17;
import 'package:hardwarepasal/src/app/presentation/terms_and%20_conditions_screen.dart'
    as _i14;
import 'package:hardwarepasal/src/feature/app_start/onboarding_screen.dart'
    as _i2;
import 'package:hardwarepasal/src/feature/auth/presentation/screen/login.dart'
    as _i3;
import 'package:hardwarepasal/src/feature/auth/presentation/screen/login_screen.dart'
    as _i5;
import 'package:hardwarepasal/src/feature/auth/presentation/screen/register_screen.dart'
    as _i6;
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/screen/brand_detail_screen.dart'
    as _i21;
import 'package:hardwarepasal/src/feature/brands_screen/data/model/brands_model/brands_model.dart'
    as _i32;
import 'package:hardwarepasal/src/feature/brands_screen/presentation/Screen/brands_screen.dart'
    as _i26;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/screen/cart_screen_page.dart'
    as _i7;
import 'package:hardwarepasal/src/feature/category_level_3_screen/presentation/screen/category_level_3_screen_page.dart'
    as _i20;
import 'package:hardwarepasal/src/feature/category_screen/data/model/category_model/category_model.dart'
    as _i31;
import 'package:hardwarepasal/src/feature/category_screen/presentation/screen/categories_screen.dart'
    as _i25;
import 'package:hardwarepasal/src/feature/change_password/presentation/screen/change_password_screen.dart'
    as _i12;
import 'package:hardwarepasal/src/feature/checkout/presentation/screen/checkout_screen.dart'
    as _i18;
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart'
    as _i30;
import 'package:hardwarepasal/src/feature/home_screen/presentation/screen/home_screen.dart'
    as _i23;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/screen/item_detail_screen.dart'
    as _i4;
import 'package:hardwarepasal/src/feature/my_orders_screen/presentation/screen/my_orders_screen.dart'
    as _i13;
import 'package:hardwarepasal/src/feature/my_reviews_screen/presentation/screen/my_reviews_screen.dart'
    as _i19;
import 'package:hardwarepasal/src/feature/profile_screen/presntation/screen/profile_screen.dart'
    as _i27;
import 'package:hardwarepasal/src/feature/search_screen/presentation/screen/search_area_screen.dart'
    as _i8;
import 'package:hardwarepasal/src/feature/update_profile/presentation/screen/edit_profile_screen.dart'
    as _i10;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/screen/wishlist_screen.dart'
    as _i24;

class AppRouter extends _i28.RootStackRouter {
  AppRouter([_i29.GlobalKey<_i29.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i28.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i1.SplashScreenPage(),
      );
    },
    OnBoardingScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i2.OnBoardingScreenPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i3.LoginPage(),
      );
    },
    ItemDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ItemDetailScreenRouteArgs>();
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: _i4.ItemDetailScreenPage(
          key: args.key,
          productModel: args.productModel,
        ),
      );
    },
    LoginScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i5.LoginScreenPage(),
      );
    },
    RegisterScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i6.RegisterScreenPage(),
      );
    },
    CartScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i7.CartScreenPage(),
      );
    },
    SearchAreaScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i8.SearchAreaScreenPage(),
      );
    },
    SearchFilterScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SearchFilterScreenRouteArgs>();
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: _i9.SearchFilterScreenPage(
          key: args.key,
          searchText: args.searchText,
        ),
      );
    },
    EditProfileScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i10.EditProfileScreenPage(),
      );
    },
    NotificationScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i11.NotificationScreenPage(),
      );
    },
    ChangePasswordScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i12.ChangePasswordScreenPage(),
      );
    },
    MyOrdersScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i13.MyOrdersScreenPage(),
      );
    },
    TermsAndConditionsScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i14.TermsAndConditionsScreenPage(),
      );
    },
    ReturnPolicyScreenRoute.name: (routeData) {
      final args = routeData.argsAs<ReturnPolicyScreenRouteArgs>(
          orElse: () => const ReturnPolicyScreenRouteArgs());
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: _i15.ReturnPolicyScreenPage(key: args.key),
      );
    },
    SubBrandsScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i16.SubBrandsScreenPage(),
      );
    },
    SubCategoryScreenRoute.name: (routeData) {
      final args = routeData.argsAs<SubCategoryScreenRouteArgs>();
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: _i17.SubCategoryScreenPage(
          key: args.key,
          categoryItemModel: args.categoryItemModel,
        ),
      );
    },
    CheckoutScreenRoute.name: (routeData) {
      final args = routeData.argsAs<CheckoutScreenRouteArgs>();
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: _i18.CheckoutScreenPage(
          key: args.key,
          products: args.products,
        ),
      );
    },
    MyReviewsScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i19.MyReviewsScreenPage(),
      );
    },
    CategoryLevel3ScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i20.CategoryLevel3ScreenPage(),
      );
    },
    BrandDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<BrandDetailScreenRouteArgs>();
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: _i21.BrandDetailScreenPage(
          key: args.key,
          brandData: args.brandData,
        ),
      );
    },
    BottomNavigationRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i22.BottomNavigationPage(),
      );
    },
    HomeScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i23.HomeScreenPage(),
      );
    },
    WishListScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i24.WishListScreenPage(),
      );
    },
    CategoryScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i25.CategoryScreenPage(),
      );
    },
    BrandsScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i26.BrandsScreenPage(),
      );
    },
    ProfileScreenRoute.name: (routeData) {
      return _i28.AdaptivePage<void>(
        routeData: routeData,
        child: const _i27.ProfileScreenPage(),
      );
    },
  };

  @override
  List<_i28.RouteConfig> get routes => [
        _i28.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i28.RouteConfig(
          OnBoardingScreenRoute.name,
          path: '/on-boarding-screen-page',
        ),
        _i28.RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        _i28.RouteConfig(
          ItemDetailScreenRoute.name,
          path: '/item-detail-screen-page',
        ),
        _i28.RouteConfig(
          LoginScreenRoute.name,
          path: '/login-screen-page',
        ),
        _i28.RouteConfig(
          RegisterScreenRoute.name,
          path: '/register-screen-page',
        ),
        _i28.RouteConfig(
          CartScreenRoute.name,
          path: '/cart-screen-page',
        ),
        _i28.RouteConfig(
          SearchAreaScreenRoute.name,
          path: '/search-area-screen-page',
        ),
        _i28.RouteConfig(
          SearchFilterScreenRoute.name,
          path: '/search-filter-screen-page',
        ),
        _i28.RouteConfig(
          EditProfileScreenRoute.name,
          path: '/edit-profile-screen-page',
        ),
        _i28.RouteConfig(
          NotificationScreenRoute.name,
          path: '/notification-screen-page',
        ),
        _i28.RouteConfig(
          ChangePasswordScreenRoute.name,
          path: '/change-password-screen-page',
        ),
        _i28.RouteConfig(
          MyOrdersScreenRoute.name,
          path: '/my-orders-screen-page',
        ),
        _i28.RouteConfig(
          TermsAndConditionsScreenRoute.name,
          path: '/terms-and-conditions-screen-page',
        ),
        _i28.RouteConfig(
          ReturnPolicyScreenRoute.name,
          path: '/return-policy-screen-page',
        ),
        _i28.RouteConfig(
          SubBrandsScreenRoute.name,
          path: '/sub-brands-screen-page',
        ),
        _i28.RouteConfig(
          SubCategoryScreenRoute.name,
          path: '/sub-category-screen-page',
        ),
        _i28.RouteConfig(
          CheckoutScreenRoute.name,
          path: '/checkout-screen-page',
        ),
        _i28.RouteConfig(
          MyReviewsScreenRoute.name,
          path: '/my-reviews-screen-page',
        ),
        _i28.RouteConfig(
          CategoryLevel3ScreenRoute.name,
          path: '/category-level3-screen-page',
        ),
        _i28.RouteConfig(
          BrandDetailScreenRoute.name,
          path: '/brand-detail-screen-page',
        ),
        _i28.RouteConfig(
          BottomNavigationRoute.name,
          path: '/bottom-navigation-page',
          children: [
            _i28.RouteConfig(
              HomeScreenRoute.name,
              path: 'home-screen-page',
              parent: BottomNavigationRoute.name,
            ),
            _i28.RouteConfig(
              WishListScreenRoute.name,
              path: 'wish-list-screen-page',
              parent: BottomNavigationRoute.name,
            ),
            _i28.RouteConfig(
              CategoryScreenRoute.name,
              path: 'category-screen-page',
              parent: BottomNavigationRoute.name,
            ),
            _i28.RouteConfig(
              BrandsScreenRoute.name,
              path: 'brands-screen-page',
              parent: BottomNavigationRoute.name,
            ),
            _i28.RouteConfig(
              ProfileScreenRoute.name,
              path: 'profile-screen-page',
              parent: BottomNavigationRoute.name,
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreenPage]
class SplashScreenRoute extends _i28.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.OnBoardingScreenPage]
class OnBoardingScreenRoute extends _i28.PageRouteInfo<void> {
  const OnBoardingScreenRoute()
      : super(
          OnBoardingScreenRoute.name,
          path: '/on-boarding-screen-page',
        );

  static const String name = 'OnBoardingScreenRoute';
}

/// generated route for
/// [_i3.LoginPage]
class LoginRoute extends _i28.PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.ItemDetailScreenPage]
class ItemDetailScreenRoute
    extends _i28.PageRouteInfo<ItemDetailScreenRouteArgs> {
  ItemDetailScreenRoute({
    _i29.Key? key,
    required _i30.ProductModel productModel,
  }) : super(
          ItemDetailScreenRoute.name,
          path: '/item-detail-screen-page',
          args: ItemDetailScreenRouteArgs(
            key: key,
            productModel: productModel,
          ),
        );

  static const String name = 'ItemDetailScreenRoute';
}

class ItemDetailScreenRouteArgs {
  const ItemDetailScreenRouteArgs({
    this.key,
    required this.productModel,
  });

  final _i29.Key? key;

  final _i30.ProductModel productModel;

  @override
  String toString() {
    return 'ItemDetailScreenRouteArgs{key: $key, productModel: $productModel}';
  }
}

/// generated route for
/// [_i5.LoginScreenPage]
class LoginScreenRoute extends _i28.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(
          LoginScreenRoute.name,
          path: '/login-screen-page',
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i6.RegisterScreenPage]
class RegisterScreenRoute extends _i28.PageRouteInfo<void> {
  const RegisterScreenRoute()
      : super(
          RegisterScreenRoute.name,
          path: '/register-screen-page',
        );

  static const String name = 'RegisterScreenRoute';
}

/// generated route for
/// [_i7.CartScreenPage]
class CartScreenRoute extends _i28.PageRouteInfo<void> {
  const CartScreenRoute()
      : super(
          CartScreenRoute.name,
          path: '/cart-screen-page',
        );

  static const String name = 'CartScreenRoute';
}

/// generated route for
/// [_i8.SearchAreaScreenPage]
class SearchAreaScreenRoute extends _i28.PageRouteInfo<void> {
  const SearchAreaScreenRoute()
      : super(
          SearchAreaScreenRoute.name,
          path: '/search-area-screen-page',
        );

  static const String name = 'SearchAreaScreenRoute';
}

/// generated route for
/// [_i9.SearchFilterScreenPage]
class SearchFilterScreenRoute
    extends _i28.PageRouteInfo<SearchFilterScreenRouteArgs> {
  SearchFilterScreenRoute({
    _i29.Key? key,
    required String searchText,
  }) : super(
          SearchFilterScreenRoute.name,
          path: '/search-filter-screen-page',
          args: SearchFilterScreenRouteArgs(
            key: key,
            searchText: searchText,
          ),
        );

  static const String name = 'SearchFilterScreenRoute';
}

class SearchFilterScreenRouteArgs {
  const SearchFilterScreenRouteArgs({
    this.key,
    required this.searchText,
  });

  final _i29.Key? key;

  final String searchText;

  @override
  String toString() {
    return 'SearchFilterScreenRouteArgs{key: $key, searchText: $searchText}';
  }
}

/// generated route for
/// [_i10.EditProfileScreenPage]
class EditProfileScreenRoute extends _i28.PageRouteInfo<void> {
  const EditProfileScreenRoute()
      : super(
          EditProfileScreenRoute.name,
          path: '/edit-profile-screen-page',
        );

  static const String name = 'EditProfileScreenRoute';
}

/// generated route for
/// [_i11.NotificationScreenPage]
class NotificationScreenRoute extends _i28.PageRouteInfo<void> {
  const NotificationScreenRoute()
      : super(
          NotificationScreenRoute.name,
          path: '/notification-screen-page',
        );

  static const String name = 'NotificationScreenRoute';
}

/// generated route for
/// [_i12.ChangePasswordScreenPage]
class ChangePasswordScreenRoute extends _i28.PageRouteInfo<void> {
  const ChangePasswordScreenRoute()
      : super(
          ChangePasswordScreenRoute.name,
          path: '/change-password-screen-page',
        );

  static const String name = 'ChangePasswordScreenRoute';
}

/// generated route for
/// [_i13.MyOrdersScreenPage]
class MyOrdersScreenRoute extends _i28.PageRouteInfo<void> {
  const MyOrdersScreenRoute()
      : super(
          MyOrdersScreenRoute.name,
          path: '/my-orders-screen-page',
        );

  static const String name = 'MyOrdersScreenRoute';
}

/// generated route for
/// [_i14.TermsAndConditionsScreenPage]
class TermsAndConditionsScreenRoute extends _i28.PageRouteInfo<void> {
  const TermsAndConditionsScreenRoute()
      : super(
          TermsAndConditionsScreenRoute.name,
          path: '/terms-and-conditions-screen-page',
        );

  static const String name = 'TermsAndConditionsScreenRoute';
}

/// generated route for
/// [_i15.ReturnPolicyScreenPage]
class ReturnPolicyScreenRoute
    extends _i28.PageRouteInfo<ReturnPolicyScreenRouteArgs> {
  ReturnPolicyScreenRoute({_i29.Key? key})
      : super(
          ReturnPolicyScreenRoute.name,
          path: '/return-policy-screen-page',
          args: ReturnPolicyScreenRouteArgs(key: key),
        );

  static const String name = 'ReturnPolicyScreenRoute';
}

class ReturnPolicyScreenRouteArgs {
  const ReturnPolicyScreenRouteArgs({this.key});

  final _i29.Key? key;

  @override
  String toString() {
    return 'ReturnPolicyScreenRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i16.SubBrandsScreenPage]
class SubBrandsScreenRoute extends _i28.PageRouteInfo<void> {
  const SubBrandsScreenRoute()
      : super(
          SubBrandsScreenRoute.name,
          path: '/sub-brands-screen-page',
        );

  static const String name = 'SubBrandsScreenRoute';
}

/// generated route for
/// [_i17.SubCategoryScreenPage]
class SubCategoryScreenRoute
    extends _i28.PageRouteInfo<SubCategoryScreenRouteArgs> {
  SubCategoryScreenRoute({
    _i29.Key? key,
    required _i31.CategoryItemModel categoryItemModel,
  }) : super(
          SubCategoryScreenRoute.name,
          path: '/sub-category-screen-page',
          args: SubCategoryScreenRouteArgs(
            key: key,
            categoryItemModel: categoryItemModel,
          ),
        );

  static const String name = 'SubCategoryScreenRoute';
}

class SubCategoryScreenRouteArgs {
  const SubCategoryScreenRouteArgs({
    this.key,
    required this.categoryItemModel,
  });

  final _i29.Key? key;

  final _i31.CategoryItemModel categoryItemModel;

  @override
  String toString() {
    return 'SubCategoryScreenRouteArgs{key: $key, categoryItemModel: $categoryItemModel}';
  }
}

/// generated route for
/// [_i18.CheckoutScreenPage]
class CheckoutScreenRoute extends _i28.PageRouteInfo<CheckoutScreenRouteArgs> {
  CheckoutScreenRoute({
    _i29.Key? key,
    required List<_i30.ProductModel> products,
  }) : super(
          CheckoutScreenRoute.name,
          path: '/checkout-screen-page',
          args: CheckoutScreenRouteArgs(
            key: key,
            products: products,
          ),
        );

  static const String name = 'CheckoutScreenRoute';
}

class CheckoutScreenRouteArgs {
  const CheckoutScreenRouteArgs({
    this.key,
    required this.products,
  });

  final _i29.Key? key;

  final List<_i30.ProductModel> products;

  @override
  String toString() {
    return 'CheckoutScreenRouteArgs{key: $key, products: $products}';
  }
}

/// generated route for
/// [_i19.MyReviewsScreenPage]
class MyReviewsScreenRoute extends _i28.PageRouteInfo<void> {
  const MyReviewsScreenRoute()
      : super(
          MyReviewsScreenRoute.name,
          path: '/my-reviews-screen-page',
        );

  static const String name = 'MyReviewsScreenRoute';
}

/// generated route for
/// [_i20.CategoryLevel3ScreenPage]
class CategoryLevel3ScreenRoute extends _i28.PageRouteInfo<void> {
  const CategoryLevel3ScreenRoute()
      : super(
          CategoryLevel3ScreenRoute.name,
          path: '/category-level3-screen-page',
        );

  static const String name = 'CategoryLevel3ScreenRoute';
}

/// generated route for
/// [_i21.BrandDetailScreenPage]
class BrandDetailScreenRoute
    extends _i28.PageRouteInfo<BrandDetailScreenRouteArgs> {
  BrandDetailScreenRoute({
    _i29.Key? key,
    required _i32.BrandsItemModel brandData,
  }) : super(
          BrandDetailScreenRoute.name,
          path: '/brand-detail-screen-page',
          args: BrandDetailScreenRouteArgs(
            key: key,
            brandData: brandData,
          ),
        );

  static const String name = 'BrandDetailScreenRoute';
}

class BrandDetailScreenRouteArgs {
  const BrandDetailScreenRouteArgs({
    this.key,
    required this.brandData,
  });

  final _i29.Key? key;

  final _i32.BrandsItemModel brandData;

  @override
  String toString() {
    return 'BrandDetailScreenRouteArgs{key: $key, brandData: $brandData}';
  }
}

/// generated route for
/// [_i22.BottomNavigationPage]
class BottomNavigationRoute extends _i28.PageRouteInfo<void> {
  const BottomNavigationRoute({List<_i28.PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          path: '/bottom-navigation-page',
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';
}

/// generated route for
/// [_i23.HomeScreenPage]
class HomeScreenRoute extends _i28.PageRouteInfo<void> {
  const HomeScreenRoute()
      : super(
          HomeScreenRoute.name,
          path: 'home-screen-page',
        );

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i24.WishListScreenPage]
class WishListScreenRoute extends _i28.PageRouteInfo<void> {
  const WishListScreenRoute()
      : super(
          WishListScreenRoute.name,
          path: 'wish-list-screen-page',
        );

  static const String name = 'WishListScreenRoute';
}

/// generated route for
/// [_i25.CategoryScreenPage]
class CategoryScreenRoute extends _i28.PageRouteInfo<void> {
  const CategoryScreenRoute()
      : super(
          CategoryScreenRoute.name,
          path: 'category-screen-page',
        );

  static const String name = 'CategoryScreenRoute';
}

/// generated route for
/// [_i26.BrandsScreenPage]
class BrandsScreenRoute extends _i28.PageRouteInfo<void> {
  const BrandsScreenRoute()
      : super(
          BrandsScreenRoute.name,
          path: 'brands-screen-page',
        );

  static const String name = 'BrandsScreenRoute';
}

/// generated route for
/// [_i27.ProfileScreenPage]
class ProfileScreenRoute extends _i28.PageRouteInfo<void> {
  const ProfileScreenRoute()
      : super(
          ProfileScreenRoute.name,
          path: 'profile-screen-page',
        );

  static const String name = 'ProfileScreenRoute';
}
