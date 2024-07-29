import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hardwarepasal/src/app/cubit/app_cubit.dart';
import 'package:hardwarepasal/src/core/di/injection.dart';
import 'package:hardwarepasal/src/core/routes/app_router.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/login/login_cubit.dart';
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/cubit/brand_details_cubit.dart';
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart';
import 'package:hardwarepasal/src/feature/category_screen/presentation/cubit/category_cubit.dart';
import 'package:hardwarepasal/src/feature/change_password/presentation/cubit/change_password_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_all_products_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_brands_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_cubit.dart';
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart';
import 'package:hardwarepasal/src/feature/my_orders_screen/presentation/cubit/my_order_cubit.dart';
import 'package:hardwarepasal/src/feature/profile_screen/presntation/cubit/user_details_cubit.dart';
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_cubit.dart';
import 'package:hardwarepasal/src/feature/update_profile/presentation/cubit/update_profile_cubit.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/add_wish_list_cubit.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/remove_wish_list_cubit.dart';
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/wishlist_cubit.dart';

import '../../feature/auth/presentation/cubit/logout/logout_cubit.dart';
import '../../feature/auth/presentation/cubit/register/register_cubit.dart';

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      builder: (_, __) => AnnotatedRegion(
        value: SystemUiOverlayStyle.dark.copyWith(
          systemNavigationBarColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
          statusBarBrightness: Brightness.dark,
        ),
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<AppCubit>(),
              lazy: false,
            ),
            BlocProvider(
              create: (context) => getIt<LoginCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<RegisterCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<HomeCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<HomeBrandsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<HomeAllProductsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<AddToCartCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<WishlistCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<AddWishListCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<RemoveWishListCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<BrandsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<UserDetailsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CategoryCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<SearchCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<ChangePasswordCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<HomeRecentlyViewedCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<MyOrderCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<BrandDetailsCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<UpdateProfileCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<LogoutCubit>(),
            ),
          ],
          child: MaterialApp.router(
            theme: ThemeData(
              primarySwatch: Colors.green,
              primaryColor: AppColor.appColor,
              appBarTheme: AppBarTheme(
                elevation: 0,
                centerTitle: true,
                backgroundColor: Colors.grey.shade50,
              ),
            ),
            routerDelegate: router.delegate(),
            debugShowCheckedModeBanner: false,
            routeInformationParser: router.defaultRouteParser(),
            title: 'Hardware Pasal',
          ),
        ),
      ),
    );
  }
}