// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hardwarepasal/src/app/cubit/app_cubit.dart' as _i139;
import 'package:hardwarepasal/src/app/data/repository/app_data_repository_impl.dart'
    as _i106;
import 'package:hardwarepasal/src/app/data/source/app_source.dart' as _i45;
import 'package:hardwarepasal/src/app/domain/entity/usecase/app_data_usecase.dart'
    as _i107;
import 'package:hardwarepasal/src/app/domain/repository/app_data_repository.dart'
    as _i105;
import 'package:hardwarepasal/src/core/di/register_modules.dart' as _i146;
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart' as _i27;
import 'package:hardwarepasal/src/core/network/network_info.dart' as _i10;
import 'package:hardwarepasal/src/core/routes/app_router.dart' as _i3;
import 'package:hardwarepasal/src/feature/auth/data/repository/auth_repository.dart'
    as _i52;
import 'package:hardwarepasal/src/feature/auth/data/source/auth_remote_source.dart'
    as _i50;
import 'package:hardwarepasal/src/feature/auth/data/source/logout_remote_source.dart'
    as _i8;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/login_usecase.dart'
    as _i86;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/logout_usecase.dart'
    as _i87;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/register_usercase.dart'
    as _i95;
import 'package:hardwarepasal/src/feature/auth/domain/repository/auth_repository.dart'
    as _i51;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/login/login_cubit.dart'
    as _i129;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/logout/logout_cubit.dart'
    as _i130;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/register/register_cubit.dart'
    as _i132;
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/repository/brand_details_repository_impl.dart'
    as _i55;
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/source/brand_details_source.dart'
    as _i53;
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/entity/usecase/brand_details_usecase.dart'
    as _i56;
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/repository/brand_details_repository/brand_details_repository.dart'
    as _i54;
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/cubit/brand_details_cubit.dart'
    as _i112;
import 'package:hardwarepasal/src/feature/brands_screen/data/repository/brands_repository_impl.dart'
    as _i59;
import 'package:hardwarepasal/src/feature/brands_screen/data/source/brands_data_source.dart'
    as _i57;
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart'
    as _i60;
import 'package:hardwarepasal/src/feature/brands_screen/domain/repository/brands_repository/brands_repository.dart'
    as _i58;
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart'
    as _i113;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/apply_coupon_code_repository_impl.dart'
    as _i109;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/cart_data_repository_impl.dart'
    as _i115;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/quotation_email_repository_impl.dart'
    as _i21;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/apply_coupon_data_source.dart'
    as _i46;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/cart_data_source.dart'
    as _i61;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/quotation_email_data_source.dart'
    as _i19;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/apply_xoupon_usecase.dart'
    as _i111;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/cart_data_usecase.dart'
    as _i116;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/quotation_email_usecase.dart'
    as _i22;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/remove_from_cart_usecase.dart'
    as _i133;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/update_cart_usecase.dart'
    as _i137;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/apply_coupon_code_repository.dart'
    as _i108;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/cart_data_repository.dart'
    as _i114;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/quotation_email_repository.dart'
    as _i20;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/apply_coupon_cubit.dart'
    as _i140;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/cart_data_cubit.dart'
    as _i141;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/quotation_email_cubit.dart'
    as _i93;
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/repository/category_wise_products_repositoy_impl.dart'
    as _i68;
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/source/category_wise_products_source.dart'
    as _i66;
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/entity/usecase/category_wise_products_usecase.dart'
    as _i118;
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/repository/category_wise_products_repository/category_wise_products_repository.dart'
    as _i67;
import 'package:hardwarepasal/src/feature/category_level_3_screen/presentation/cubit/category_wise_products_cubit.dart'
    as _i142;
import 'package:hardwarepasal/src/feature/category_screen/data/repository/category_repository/category_repository_impl.dart'
    as _i64;
import 'package:hardwarepasal/src/feature/category_screen/data/source/category_data_source.dart'
    as _i62;
import 'package:hardwarepasal/src/feature/category_screen/domain/entity/usecase/category_usecase.dart'
    as _i65;
import 'package:hardwarepasal/src/feature/category_screen/domain/repository/category_repository/category_repository.dart'
    as _i63;
import 'package:hardwarepasal/src/feature/category_screen/presentation/cubit/category_cubit.dart'
    as _i117;
import 'package:hardwarepasal/src/feature/change_password/data/repository/change_password_repository_impl.dart'
    as _i120;
import 'package:hardwarepasal/src/feature/change_password/data/source/change_password_source.dart'
    as _i69;
import 'package:hardwarepasal/src/feature/change_password/domain/entity/usecase/change_password_usecase.dart'
    as _i121;
import 'package:hardwarepasal/src/feature/change_password/domain/repository/change_password_repository.dart'
    as _i119;
import 'package:hardwarepasal/src/feature/change_password/presentation/cubit/change_password_cubit.dart'
    as _i143;
import 'package:hardwarepasal/src/feature/checkout/data/repository/apply_coupon_repository_impl.dart'
    as _i48;
import 'package:hardwarepasal/src/feature/checkout/data/repository/checkout_repository_impl.dart'
    as _i72;
import 'package:hardwarepasal/src/feature/checkout/data/repository/place_order_repository_impl.dart'
    as _i17;
import 'package:hardwarepasal/src/feature/checkout/data/source/checkout_source.dart'
    as _i70;
import 'package:hardwarepasal/src/feature/checkout/data/source/place_order_source.dart'
    as _i15;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/apply_coupon_usecase.dart'
    as _i49;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/checkout_usecase.dart'
    as _i73;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/connectips_usecase.dart'
    as _i75;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/ime_pay_usecase.dart'
    as _i80;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/place_order_usecase.dart'
    as _i18;
import 'package:hardwarepasal/src/feature/checkout/domain/repository/apply_coupon_repository.dart'
    as _i47;
import 'package:hardwarepasal/src/feature/checkout/domain/repository/checkout_repository.dart'
    as _i71;
import 'package:hardwarepasal/src/feature/checkout/domain/repository/place_order_repository.dart'
    as _i16;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/apply_coupon_cubit.dart'
    as _i110;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/checkout_cubit.dart'
    as _i122;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/connectips_cubit.dart'
    as _i123;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/ime_pay_cubit.dart'
    as _i128;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/place_order_cubit.dart'
    as _i92;
import 'package:hardwarepasal/src/feature/home_screen/data/repository/home_repository_impl.dart'
    as _i78;
import 'package:hardwarepasal/src/feature/home_screen/data/source/home_data_source.dart'
    as _i76;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/add_recently_viewed_usecase.dart'
    as _i102;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_all_products_usecase.dart'
    as _i124;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_brands_usecase.dart'
    as _i125;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_usecase.dart'
    as _i79;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/recently_viewed_usecase.dart'
    as _i94;
import 'package:hardwarepasal/src/feature/home_screen/domain/repository/home_repository.dart'
    as _i77;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_all_products_cubit.dart'
    as _i144;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_brands_cubit.dart'
    as _i145;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_cubit.dart'
    as _i126;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart'
    as _i127;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/add_to_cart_repository_impl.dart'
    as _i42;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/item_detail_repository_impl.dart'
    as _i83;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/add_to_cart_data_source.dart'
    as _i40;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/item_detail_data_source.dart'
    as _i81;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/add_to_cart_usecase.dart'
    as _i43;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/item_detail_usecase.dart'
    as _i84;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/add_to_cart_repository.dart'
    as _i41;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/item_detail_repository.dart'
    as _i82;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart'
    as _i103;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart'
    as _i85;
import 'package:hardwarepasal/src/feature/my_orders_screen/data/repository/my_orders_repository_impl.dart'
    as _i89;
import 'package:hardwarepasal/src/feature/my_orders_screen/data/source/my_orders_data_source.dart'
    as _i9;
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/entity/usecase/my_orders_usecase.dart'
    as _i90;
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/repository/my_orders_repository.dart'
    as _i88;
import 'package:hardwarepasal/src/feature/my_orders_screen/presentation/cubit/my_order_cubit.dart'
    as _i131;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/repository/new_arrivals_repository_impl.dart'
    as _i13;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/source/new_arrivals_data_source.dart'
    as _i11;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/entity/usecase/new_arrivals_usecase.dart'
    as _i14;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/repository/new_arrivals_repository.dart'
    as _i12;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/presentation/cubit/new_arrivals_cubit.dart'
    as _i91;
import 'package:hardwarepasal/src/feature/profile_screen/data/repository/user_detail_repository_impl.dart'
    as _i34;
import 'package:hardwarepasal/src/feature/profile_screen/data/source/user_details_source.dart'
    as _i32;
import 'package:hardwarepasal/src/feature/profile_screen/domain/entity/usecase/user_details_usecase.dart'
    as _i35;
import 'package:hardwarepasal/src/feature/profile_screen/domain/repository/user_detail_repository.dart'
    as _i33;
import 'package:hardwarepasal/src/feature/profile_screen/presntation/cubit/user_details_cubit.dart'
    as _i100;
import 'package:hardwarepasal/src/feature/search_screen/data/repository/search_repository_impl.dart'
    as _i25;
import 'package:hardwarepasal/src/feature/search_screen/data/source/search_data_source.dart'
    as _i23;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/clear_history_usecase.dart'
    as _i74;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart'
    as _i97;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_history_add_usecase.dart'
    as _i98;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_history_usecase.dart'
    as _i99;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_usecase.dart'
    as _i26;
import 'package:hardwarepasal/src/feature/search_screen/domain/repository/search_repository.dart'
    as _i24;
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_cubit.dart'
    as _i135;
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_history_cubit.dart'
    as _i136;
import 'package:hardwarepasal/src/feature/update_profile/data/repository/update_profile_repository_impl.dart'
    as _i30;
import 'package:hardwarepasal/src/feature/update_profile/data/source/update_profile_data_source.dart'
    as _i28;
import 'package:hardwarepasal/src/feature/update_profile/domin/entity/usecase/update_profile_usecase.dart'
    as _i31;
import 'package:hardwarepasal/src/feature/update_profile/domin/repository/update_profile_repository.dart'
    as _i29;
import 'package:hardwarepasal/src/feature/update_profile/presentation/cubit/update_profile_cubit.dart'
    as _i138;
import 'package:hardwarepasal/src/feature/wishlist_screen/data/repository/wishlist_repository_impl.dart'
    as _i38;
import 'package:hardwarepasal/src/feature/wishlist_screen/data/source/wishlist_source.dart'
    as _i36;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/add_wish_list_usecase.dart'
    as _i44;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/remove_wish_list_usecase.dart'
    as _i96;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/wishlist_usecase.dart'
    as _i39;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/repository/wishlist_repository.dart'
    as _i37;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/add_wish_list_cubit.dart'
    as _i104;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/remove_wish_list_cubit.dart'
    as _i134;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/wishlist_cubit.dart'
    as _i101;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i6;
import 'package:logger/logger.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.AppRouter>(() => registerModule.router);
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.unauthenticatedDio,
      instanceName: 'un-authenticated',
    );
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.authenticatedDio,
      instanceName: 'authenticated',
    );
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.FlutterSecureStorage>(() => registerModule.storage);
    gh.lazySingleton<_i6.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i7.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i8.LogoutRemoteSource>(() => _i8.LogoutRemoteSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i9.MyOrdersDataSource>(() => _i9.MyOrdersDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i10.NetworkInfo>(
        () => _i10.NetworkInfoImpl(gh<_i6.InternetConnectionChecker>()));
    gh.lazySingleton<_i11.NewArrivalsDataSource>(
        () => _i11.NewArrivalsDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i12.NewArrivalsRepository>(
        () => _i13.NewArrivalsRepositoryImpl(
              gh<_i11.NewArrivalsDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i14.NewArrivalsUsecase>(
        () => _i14.NewArrivalsUsecase(gh<_i12.NewArrivalsRepository>()));
    gh.lazySingleton<_i15.PlaceOrderDataSource>(
        () => _i15.PlaceOrderDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i16.PlaceOrderRepository>(
        () => _i17.PlaceOrderRepositoryImpl(
              gh<_i15.PlaceOrderDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i18.PlaceOrderUsecase>(
        () => _i18.PlaceOrderUsecase(gh<_i16.PlaceOrderRepository>()));
    gh.lazySingleton<_i19.QuotationEmailDataSource>(
        () => _i19.QuotationEmailDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i20.QuotationEmailRepository>(
        () => _i21.QuotationEmailRepositoryImpl(
              gh<_i19.QuotationEmailDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i22.QuotationEmailUsecase>(
        () => _i22.QuotationEmailUsecase(gh<_i20.QuotationEmailRepository>()));
    gh.lazySingleton<_i23.SearchDataSource>(() => _i23.SearchDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i24.SearchRepository>(() => _i25.SearchRepositoryImpl(
          gh<_i23.SearchDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i26.SearchUseCase>(
        () => _i26.SearchUseCase(gh<_i24.SearchRepository>()));
    gh.lazySingleton<_i27.StorageHelper>(() => registerModule.storageHelper);
    gh.lazySingleton<_i28.UpdateProfileDataSource>(
        () => _i28.UpdateProfileDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i29.UpdateProfileRepository>(
        () => _i30.UpdateProfileRepositoryImpl(
              gh<_i28.UpdateProfileDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i31.UpdateProfileUsecase>(
        () => _i31.UpdateProfileUsecase(gh<_i29.UpdateProfileRepository>()));
    gh.lazySingleton<_i32.UserDetailsDataSource>(
        () => const _i32.UserDetailsDataSourceImpl());
    gh.lazySingleton<_i33.UserDetailsRepository>(
        () => _i34.UserDetailRepositoryImpl(gh<_i32.UserDetailsDataSource>()));
    gh.lazySingleton<_i35.UserDetailsUseCase>(
        () => _i35.UserDetailsUseCase(gh<_i33.UserDetailsRepository>()));
    gh.lazySingleton<_i36.WishlistDataSource>(
        () => const _i36.WishListDataSourceImpl());
    gh.lazySingleton<_i37.WishlistRepository>(
        () => _i38.WishlistRepositoryImpl(gh<_i36.WishlistDataSource>()));
    gh.lazySingleton<_i39.WishlistUsecase>(
        () => _i39.WishlistUsecase(gh<_i37.WishlistRepository>()));
    gh.lazySingleton<_i40.AddToCartDataSource>(
        () => _i40.AddToCartDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i41.AddToCartRepository>(
        () => _i42.AddToCartRepositoryImpl(
              gh<_i40.AddToCartDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i43.AddToCartUsecase>(
        () => _i43.AddToCartUsecase(gh<_i41.AddToCartRepository>()));
    gh.lazySingleton<_i44.AddWishListUsecase>(
        () => _i44.AddWishListUsecase(gh<_i37.WishlistRepository>()));
    gh.lazySingleton<_i45.AppDataSource>(() => _i45.AppDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i46.ApplyCouponDataSource>(
        () => _i46.ApplyCouponDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i47.ApplyCouponRepository>(
        () => _i48.ApplyCouponRepositoryImpl(
              gh<_i46.ApplyCouponDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i49.ApplyCouponUsecase>(
        () => _i49.ApplyCouponUsecase(gh<_i47.ApplyCouponRepository>()));
    gh.lazySingleton<_i50.AuthRemoteSource>(() => _i50.AuthRemoteSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i51.AuthRepository>(() => _i52.AuthRepositoryImpl(
          gh<_i50.AuthRemoteSource>(),
          gh<_i8.LogoutRemoteSource>(),
          gh<_i10.NetworkInfo>(),
          gh<_i27.StorageHelper>(),
        ));
    gh.lazySingleton<_i53.BrandDetailsDataSource>(
        () => _i53.BrandDetailsDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i54.BrandDetailsRepository>(
        () => _i55.BrandDetailsRepositoryImpl(
              gh<_i53.BrandDetailsDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i56.BrandDetailsUsecase>(
        () => _i56.BrandDetailsUsecase(gh<_i54.BrandDetailsRepository>()));
    gh.lazySingleton<_i57.BrandsDataSource>(() => _i57.BrandsDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i58.BrandsRepository>(() => _i59.BrandsRepositoryImpl(
          gh<_i57.BrandsDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i60.BrandsUsecase>(
        () => _i60.BrandsUsecase(gh<_i58.BrandsRepository>()));
    gh.lazySingleton<_i61.CartDataSource>(() => _i61.CartDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i62.CategoryDataSource>(() => _i62.CategoryDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i63.CategoryRepository>(() => _i64.CategoryRepositoryImpl(
          gh<_i62.CategoryDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i65.CategoryUsecase>(
        () => _i65.CategoryUsecase(gh<_i63.CategoryRepository>()));
    gh.lazySingleton<_i66.CategoryWiseProductsSource>(
        () => _i66.CategoryWiseProductsSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i67.CategoryWithProductsRepository>(
        () => _i68.CategoryWithProductsRepositoryImpl(
              gh<_i66.CategoryWiseProductsSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i69.ChangePasswordSource>(
        () => _i69.ChangePasswordSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i70.CheckoutDataSource>(() => _i70.CheckoutDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i71.CheckoutRepository>(() => _i72.CheckoutRepositoryImpl(
          gh<_i70.CheckoutDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i73.CheckoutUsecase>(
        () => _i73.CheckoutUsecase(gh<_i71.CheckoutRepository>()));
    gh.lazySingleton<_i74.ClearHistoryUsecase>(
        () => _i74.ClearHistoryUsecase(gh<_i24.SearchRepository>()));
    gh.lazySingleton<_i75.ConnectipsUsecase>(
        () => _i75.ConnectipsUsecase(gh<_i16.PlaceOrderRepository>()));
    gh.lazySingleton<_i76.HomeDataSource>(() => _i76.HomeDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i77.HomeRepository>(() => _i78.HomeRepositoryImpl(
          gh<_i76.HomeDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i79.HomeUseCase>(
        () => _i79.HomeUseCase(gh<_i77.HomeRepository>()));
    gh.lazySingleton<_i80.ImePayUsecase>(
        () => _i80.ImePayUsecase(gh<_i16.PlaceOrderRepository>()));
    gh.lazySingleton<_i81.ItemDetailDataSource>(
        () => _i81.ItemDetailDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i82.ItemDetailRepository>(
        () => _i83.ItemDetailRepositoryImpl(
              gh<_i81.ItemDetailDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i84.ItemDetailUsecase>(
        () => _i84.ItemDetailUsecase(gh<_i82.ItemDetailRepository>()));
    gh.factory<_i85.ItemDetailsCubit>(
        () => _i85.ItemDetailsCubit(gh<_i84.ItemDetailUsecase>()));
    gh.lazySingleton<_i86.LoginUseCase>(
        () => _i86.LoginUseCase(gh<_i51.AuthRepository>()));
    gh.lazySingleton<_i87.LogoutUsecase>(
        () => _i87.LogoutUsecase(gh<_i51.AuthRepository>()));
    gh.lazySingleton<_i88.MyOrdersRepository>(() => _i89.MyOrdersRepositoryImpl(
          gh<_i9.MyOrdersDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i90.MyOrdersUsecase>(
        () => _i90.MyOrdersUsecase(gh<_i88.MyOrdersRepository>()));
    gh.factory<_i91.NewArrivalsCubit>(
        () => _i91.NewArrivalsCubit(gh<_i14.NewArrivalsUsecase>()));
    gh.factory<_i92.PlaceOrderCubit>(() => _i92.PlaceOrderCubit(
          gh<_i18.PlaceOrderUsecase>(),
          gh<_i80.ImePayUsecase>(),
        ));
    gh.factory<_i93.QuotationEmailCubit>(
        () => _i93.QuotationEmailCubit(gh<_i22.QuotationEmailUsecase>()));
    gh.lazySingleton<_i94.RecentlyViewedUsecase>(
        () => _i94.RecentlyViewedUsecase(gh<_i77.HomeRepository>()));
    gh.lazySingleton<_i95.RegisterUseCase>(
        () => _i95.RegisterUseCase(gh<_i51.AuthRepository>()));
    gh.lazySingleton<_i96.RemoveWishListUsecase>(
        () => _i96.RemoveWishListUsecase(gh<_i37.WishlistRepository>()));
    gh.lazySingleton<_i97.SearchFilterUseCase>(
        () => _i97.SearchFilterUseCase(gh<_i24.SearchRepository>()));
    gh.lazySingleton<_i98.SearchHistoryAddUsecase>(
        () => _i98.SearchHistoryAddUsecase(gh<_i24.SearchRepository>()));
    gh.lazySingleton<_i99.SearchHistoryUsecase>(
        () => _i99.SearchHistoryUsecase(gh<_i24.SearchRepository>()));
    gh.factory<_i100.UserDetailsCubit>(
        () => _i100.UserDetailsCubit(gh<_i35.UserDetailsUseCase>()));
    gh.factory<_i101.WishlistCubit>(() => _i101.WishlistCubit(
          gh<_i39.WishlistUsecase>(),
          gh<_i44.AddWishListUsecase>(),
          gh<_i96.RemoveWishListUsecase>(),
        ));
    gh.lazySingleton<_i102.AddRecentlyViewedUsecase>(
        () => _i102.AddRecentlyViewedUsecase(gh<_i77.HomeRepository>()));
    gh.factory<_i103.AddToCartCubit>(
        () => _i103.AddToCartCubit(gh<_i43.AddToCartUsecase>()));
    gh.factory<_i104.AddWishListCubit>(
        () => _i104.AddWishListCubit(gh<_i44.AddWishListUsecase>()));
    gh.lazySingleton<_i105.AppDataRepository>(() => _i106.AppDataRepositoryImpl(
          gh<_i45.AppDataSource>(),
          gh<_i10.NetworkInfo>(),
          gh<_i27.StorageHelper>(),
        ));
    gh.lazySingleton<_i107.AppDataUsecase>(
        () => _i107.AppDataUsecase(gh<_i105.AppDataRepository>()));
    gh.lazySingleton<_i108.ApplyCouponCodeRepository>(
        () => _i109.ApplyCouponCodeRepositoryImpl(
              gh<_i46.ApplyCouponDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.factory<_i110.ApplyCouponCubit>(
        () => _i110.ApplyCouponCubit(gh<_i49.ApplyCouponUsecase>()));
    gh.lazySingleton<_i111.ApplyXouponUsecase>(
        () => _i111.ApplyXouponUsecase(gh<_i108.ApplyCouponCodeRepository>()));
    gh.factory<_i112.BrandDetailsCubit>(
        () => _i112.BrandDetailsCubit(gh<_i56.BrandDetailsUsecase>()));
    gh.factory<_i113.BrandsCubit>(
        () => _i113.BrandsCubit(gh<_i60.BrandsUsecase>()));
    gh.lazySingleton<_i114.CartDataRepository>(
        () => _i115.CartDataRepositoryImpl(
              gh<_i61.CartDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i116.CartDataUsecase>(
        () => _i116.CartDataUsecase(gh<_i114.CartDataRepository>()));
    gh.factory<_i117.CategoryCubit>(
        () => _i117.CategoryCubit(gh<_i65.CategoryUsecase>()));
    gh.lazySingleton<_i118.CategoryWiseProductsUsecase>(() =>
        _i118.CategoryWiseProductsUsecase(
            gh<_i67.CategoryWithProductsRepository>()));
    gh.lazySingleton<_i119.ChangePasswordRepository>(
        () => _i120.ChangePasswordRepositoryImpl(
              gh<_i69.ChangePasswordSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i121.ChangePasswordUsecase>(() =>
        _i121.ChangePasswordUsecase(gh<_i119.ChangePasswordRepository>()));
    gh.factory<_i122.CheckoutCubit>(
        () => _i122.CheckoutCubit(gh<_i73.CheckoutUsecase>()));
    gh.factory<_i123.ConnectipsCubit>(
        () => _i123.ConnectipsCubit(gh<_i75.ConnectipsUsecase>()));
    gh.lazySingleton<_i124.HomeAllProductsUseCase>(
        () => _i124.HomeAllProductsUseCase(gh<_i77.HomeRepository>()));
    gh.lazySingleton<_i125.HomeBrandsUseCase>(
        () => _i125.HomeBrandsUseCase(gh<_i77.HomeRepository>()));
    gh.factory<_i126.HomeCubit>(() => _i126.HomeCubit(gh<_i79.HomeUseCase>()));
    gh.factory<_i127.HomeRecentlyViewedCubit>(
        () => _i127.HomeRecentlyViewedCubit(
              gh<_i94.RecentlyViewedUsecase>(),
              gh<_i102.AddRecentlyViewedUsecase>(),
            ));
    gh.factory<_i128.ImePayCubit>(
        () => _i128.ImePayCubit(gh<_i80.ImePayUsecase>()));
    gh.factory<_i129.LoginCubit>(
        () => _i129.LoginCubit(gh<_i86.LoginUseCase>()));
    gh.factory<_i130.LogoutCubit>(
        () => _i130.LogoutCubit(gh<_i87.LogoutUsecase>()));
    gh.factory<_i131.MyOrderCubit>(
        () => _i131.MyOrderCubit(gh<_i90.MyOrdersUsecase>()));
    gh.factory<_i132.RegisterCubit>(
        () => _i132.RegisterCubit(gh<_i95.RegisterUseCase>()));
    gh.lazySingleton<_i133.RemoveFromCartUsecase>(
        () => _i133.RemoveFromCartUsecase(gh<_i114.CartDataRepository>()));
    gh.factory<_i134.RemoveWishListCubit>(
        () => _i134.RemoveWishListCubit(gh<_i96.RemoveWishListUsecase>()));
    gh.factory<_i135.SearchCubit>(
        () => _i135.SearchCubit(gh<_i97.SearchFilterUseCase>()));
    gh.factory<_i136.SearchHistoryCubit>(() => _i136.SearchHistoryCubit(
          gh<_i99.SearchHistoryUsecase>(),
          gh<_i74.ClearHistoryUsecase>(),
          gh<_i98.SearchHistoryAddUsecase>(),
        ));
    gh.lazySingleton<_i137.UpdateCartUsecase>(
        () => _i137.UpdateCartUsecase(gh<_i114.CartDataRepository>()));
    gh.factory<_i138.UpdateProfileCubit>(() => _i138.UpdateProfileCubit(
          gh<_i31.UpdateProfileUsecase>(),
          gh<_i100.UserDetailsCubit>(),
        ));
    gh.factory<_i139.AppCubit>(() => _i139.AppCubit(
          gh<_i27.StorageHelper>(),
          gh<_i107.AppDataUsecase>(),
        ));
    gh.factory<_i140.ApplyCouponCubit>(
        () => _i140.ApplyCouponCubit(gh<_i111.ApplyXouponUsecase>()));
    gh.factory<_i141.CartDataCubit>(() => _i141.CartDataCubit(
          gh<_i116.CartDataUsecase>(),
          gh<_i133.RemoveFromCartUsecase>(),
          gh<_i137.UpdateCartUsecase>(),
        ));
    gh.factory<_i142.CategoryWiseProductsCubit>(() =>
        _i142.CategoryWiseProductsCubit(
            gh<_i118.CategoryWiseProductsUsecase>()));
    gh.factory<_i143.ChangePasswordCubit>(
        () => _i143.ChangePasswordCubit(gh<_i121.ChangePasswordUsecase>()));
    gh.factory<_i144.HomeAllProductsCubit>(
        () => _i144.HomeAllProductsCubit(gh<_i124.HomeAllProductsUseCase>()));
    gh.factory<_i145.HomeBrandsCubit>(
        () => _i145.HomeBrandsCubit(gh<_i125.HomeBrandsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i146.RegisterModule {}
