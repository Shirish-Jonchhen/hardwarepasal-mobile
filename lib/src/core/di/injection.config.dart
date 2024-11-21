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
import 'package:hardwarepasal/src/app/cubit/app_cubit.dart' as _i156;
import 'package:hardwarepasal/src/app/data/repository/app_data_repository_impl.dart'
    as _i119;
import 'package:hardwarepasal/src/app/data/source/app_source.dart' as _i49;
import 'package:hardwarepasal/src/app/domain/entity/usecase/app_data_usecase.dart'
    as _i120;
import 'package:hardwarepasal/src/app/domain/repository/app_data_repository.dart'
    as _i118;
import 'package:hardwarepasal/src/core/di/register_modules.dart' as _i163;
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart' as _i31;
import 'package:hardwarepasal/src/core/network/network_info.dart' as _i10;
import 'package:hardwarepasal/src/core/routes/app_router.dart' as _i3;
import 'package:hardwarepasal/src/feature/auth/data/repository/auth_repository.dart'
    as _i56;
import 'package:hardwarepasal/src/feature/auth/data/source/auth_remote_source.dart'
    as _i54;
import 'package:hardwarepasal/src/feature/auth/data/source/logout_remote_source.dart'
    as _i8;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/login_usecase.dart'
    as _i98;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/logout_usecase.dart'
    as _i99;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/register_usercase.dart'
    as _i108;
import 'package:hardwarepasal/src/feature/auth/domain/repository/auth_repository.dart'
    as _i55;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/login/login_cubit.dart'
    as _i146;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/logout/logout_cubit.dart'
    as _i147;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/register/register_cubit.dart'
    as _i149;
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/repository/brand_details_repository_impl.dart'
    as _i59;
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/source/brand_details_source.dart'
    as _i57;
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/entity/usecase/brand_details_usecase.dart'
    as _i60;
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/repository/brand_details_repository/brand_details_repository.dart'
    as _i58;
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/cubit/brand_details_cubit.dart'
    as _i125;
import 'package:hardwarepasal/src/feature/brands_screen/data/repository/brands_repository_impl.dart'
    as _i63;
import 'package:hardwarepasal/src/feature/brands_screen/data/source/brands_data_source.dart'
    as _i61;
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart'
    as _i64;
import 'package:hardwarepasal/src/feature/brands_screen/domain/repository/brands_repository/brands_repository.dart'
    as _i62;
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart'
    as _i126;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/apply_coupon_code_repository_impl.dart'
    as _i122;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/cart_data_repository_impl.dart'
    as _i128;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/quotation_email_repository_impl.dart'
    as _i25;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/apply_coupon_data_source.dart'
    as _i50;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/cart_data_source.dart'
    as _i65;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/quotation_email_data_source.dart'
    as _i23;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/apply_xoupon_usecase.dart'
    as _i124;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/cart_data_usecase.dart'
    as _i129;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/quotation_email_usecase.dart'
    as _i26;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/remove_from_cart_usecase.dart'
    as _i150;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/update_cart_usecase.dart'
    as _i154;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/apply_coupon_code_repository.dart'
    as _i121;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/cart_data_repository.dart'
    as _i127;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/quotation_email_repository.dart'
    as _i24;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/apply_coupon_cubit.dart'
    as _i157;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/cart_data_cubit.dart'
    as _i158;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/quotation_email_cubit.dart'
    as _i106;
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/repository/category_wise_products_repositoy_impl.dart'
    as _i72;
import 'package:hardwarepasal/src/feature/category_level_3_screen/data/source/category_wise_products_source.dart'
    as _i70;
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/entity/usecase/category_wise_products_usecase.dart'
    as _i131;
import 'package:hardwarepasal/src/feature/category_level_3_screen/domain/repository/category_wise_products_repository/category_wise_products_repository.dart'
    as _i71;
import 'package:hardwarepasal/src/feature/category_level_3_screen/presentation/cubit/category_wise_products_cubit.dart'
    as _i159;
import 'package:hardwarepasal/src/feature/category_screen/data/repository/category_repository/category_repository_impl.dart'
    as _i68;
import 'package:hardwarepasal/src/feature/category_screen/data/source/category_data_source.dart'
    as _i66;
import 'package:hardwarepasal/src/feature/category_screen/domain/entity/usecase/category_usecase.dart'
    as _i69;
import 'package:hardwarepasal/src/feature/category_screen/domain/repository/category_repository/category_repository.dart'
    as _i67;
import 'package:hardwarepasal/src/feature/category_screen/presentation/cubit/category_cubit.dart'
    as _i130;
import 'package:hardwarepasal/src/feature/change_password/data/repository/change_password_repository_impl.dart'
    as _i133;
import 'package:hardwarepasal/src/feature/change_password/data/source/change_password_source.dart'
    as _i73;
import 'package:hardwarepasal/src/feature/change_password/domain/entity/usecase/change_password_usecase.dart'
    as _i134;
import 'package:hardwarepasal/src/feature/change_password/domain/repository/change_password_repository.dart'
    as _i132;
import 'package:hardwarepasal/src/feature/change_password/presentation/cubit/change_password_cubit.dart'
    as _i160;
import 'package:hardwarepasal/src/feature/checkout/data/repository/apply_coupon_repository_impl.dart'
    as _i52;
import 'package:hardwarepasal/src/feature/checkout/data/repository/checkout_repository_impl.dart'
    as _i76;
import 'package:hardwarepasal/src/feature/checkout/data/repository/place_order_repository_impl.dart'
    as _i17;
import 'package:hardwarepasal/src/feature/checkout/data/source/checkout_source.dart'
    as _i74;
import 'package:hardwarepasal/src/feature/checkout/data/source/place_order_source.dart'
    as _i15;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/apply_coupon_usecase.dart'
    as _i53;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/checkout_usecase.dart'
    as _i77;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/connectips_usecase.dart'
    as _i79;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/ime_pay_usecase.dart'
    as _i92;
import 'package:hardwarepasal/src/feature/checkout/domain/entity/usecase/place_order_usecase.dart'
    as _i18;
import 'package:hardwarepasal/src/feature/checkout/domain/repository/apply_coupon_repository.dart'
    as _i51;
import 'package:hardwarepasal/src/feature/checkout/domain/repository/checkout_repository.dart'
    as _i75;
import 'package:hardwarepasal/src/feature/checkout/domain/repository/place_order_repository.dart'
    as _i16;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/apply_coupon_cubit.dart'
    as _i123;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/checkout_cubit.dart'
    as _i135;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/connectips_cubit.dart'
    as _i136;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/ime_pay_cubit.dart'
    as _i145;
import 'package:hardwarepasal/src/feature/checkout/presentation/cubit/place_order_cubit.dart'
    as _i104;
import 'package:hardwarepasal/src/feature/free_delivery_screen/data/repository/free_delivery_repository_impl.dart'
    as _i82;
import 'package:hardwarepasal/src/feature/free_delivery_screen/data/source/free_delivery_data_source.dart'
    as _i80;
import 'package:hardwarepasal/src/feature/free_delivery_screen/domain/entity/usecase/free_delivery_usecase.dart'
    as _i83;
import 'package:hardwarepasal/src/feature/free_delivery_screen/domain/repository/free_delivery_repository.dart'
    as _i81;
import 'package:hardwarepasal/src/feature/free_delivery_screen/prasentation/cubit/free_delivery_cubit.dart'
    as _i138;
import 'package:hardwarepasal/src/feature/home_screen/data/repository/home_repository_impl.dart'
    as _i86;
import 'package:hardwarepasal/src/feature/home_screen/data/source/home_data_source.dart'
    as _i84;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/add_recently_viewed_usecase.dart'
    as _i115;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/featured_brands_usecase.dart'
    as _i137;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_all_products_usecase.dart'
    as _i139;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_brands_usecase.dart'
    as _i140;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_usecase.dart'
    as _i87;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/recently_viewed_usecase.dart'
    as _i107;
import 'package:hardwarepasal/src/feature/home_screen/domain/repository/home_repository.dart'
    as _i85;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_all_products_cubit.dart'
    as _i161;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_brands_cubit.dart'
    as _i162;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_cubit.dart'
    as _i141;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_featured_brands_cubit.dart'
    as _i142;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart'
    as _i143;
import 'package:hardwarepasal/src/feature/hot_deals_screen/data/repository/hot_deals_repository_impl.dart'
    as _i90;
import 'package:hardwarepasal/src/feature/hot_deals_screen/data/source/hot_deals_data_source.dart'
    as _i88;
import 'package:hardwarepasal/src/feature/hot_deals_screen/domain/entity/usecase/hot_deals_usecase.dart'
    as _i91;
import 'package:hardwarepasal/src/feature/hot_deals_screen/domain/repository/hot_deals_repository.dart'
    as _i89;
import 'package:hardwarepasal/src/feature/hot_deals_screen/presentation/cubit/hot_deals_cubit.dart'
    as _i144;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/add_to_cart_repository_impl.dart'
    as _i46;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/item_detail_repository_impl.dart'
    as _i95;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/post_review_repository_impl.dart'
    as _i21;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/add_to_cart_data_source.dart'
    as _i44;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/item_detail_data_source.dart'
    as _i93;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/post_review_data_source.dart'
    as _i19;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/add_to_cart_usecase.dart'
    as _i47;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/item_detail_usecase.dart'
    as _i96;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/post_review_usecase.dart'
    as _i22;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/add_to_cart_repository.dart'
    as _i45;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/item_detail_repository.dart'
    as _i94;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/post_review_repository.dart'
    as _i20;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart'
    as _i116;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart'
    as _i97;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/post_review_cubit.dart'
    as _i105;
import 'package:hardwarepasal/src/feature/my_orders_screen/data/repository/my_orders_repository_impl.dart'
    as _i101;
import 'package:hardwarepasal/src/feature/my_orders_screen/data/source/my_orders_data_source.dart'
    as _i9;
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/entity/usecase/my_orders_usecase.dart'
    as _i102;
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/repository/my_orders_repository.dart'
    as _i100;
import 'package:hardwarepasal/src/feature/my_orders_screen/presentation/cubit/my_order_cubit.dart'
    as _i148;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/repository/new_arrivals_repository_impl.dart'
    as _i13;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/data/source/new_arrivals_data_source.dart'
    as _i11;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/entity/usecase/new_arrivals_usecase.dart'
    as _i14;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/domain/repository/new_arrivals_repository.dart'
    as _i12;
import 'package:hardwarepasal/src/feature/new_arrivals_screen/presentation/cubit/new_arrivals_cubit.dart'
    as _i103;
import 'package:hardwarepasal/src/feature/profile_screen/data/repository/user_detail_repository_impl.dart'
    as _i38;
import 'package:hardwarepasal/src/feature/profile_screen/data/source/user_details_source.dart'
    as _i36;
import 'package:hardwarepasal/src/feature/profile_screen/domain/entity/usecase/user_details_usecase.dart'
    as _i39;
import 'package:hardwarepasal/src/feature/profile_screen/domain/repository/user_detail_repository.dart'
    as _i37;
import 'package:hardwarepasal/src/feature/profile_screen/presntation/cubit/user_details_cubit.dart'
    as _i113;
import 'package:hardwarepasal/src/feature/search_screen/data/repository/search_repository_impl.dart'
    as _i29;
import 'package:hardwarepasal/src/feature/search_screen/data/source/search_data_source.dart'
    as _i27;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/clear_history_usecase.dart'
    as _i78;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart'
    as _i110;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_history_add_usecase.dart'
    as _i111;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_history_usecase.dart'
    as _i112;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_usecase.dart'
    as _i30;
import 'package:hardwarepasal/src/feature/search_screen/domain/repository/search_repository.dart'
    as _i28;
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_cubit.dart'
    as _i152;
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_history_cubit.dart'
    as _i153;
import 'package:hardwarepasal/src/feature/update_profile/data/repository/update_profile_repository_impl.dart'
    as _i34;
import 'package:hardwarepasal/src/feature/update_profile/data/source/update_profile_data_source.dart'
    as _i32;
import 'package:hardwarepasal/src/feature/update_profile/domin/entity/usecase/update_profile_usecase.dart'
    as _i35;
import 'package:hardwarepasal/src/feature/update_profile/domin/repository/update_profile_repository.dart'
    as _i33;
import 'package:hardwarepasal/src/feature/update_profile/presentation/cubit/update_profile_cubit.dart'
    as _i155;
import 'package:hardwarepasal/src/feature/wishlist_screen/data/repository/wishlist_repository_impl.dart'
    as _i42;
import 'package:hardwarepasal/src/feature/wishlist_screen/data/source/wishlist_source.dart'
    as _i40;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/add_wish_list_usecase.dart'
    as _i48;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/remove_wish_list_usecase.dart'
    as _i109;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/wishlist_usecase.dart'
    as _i43;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/repository/wishlist_repository.dart'
    as _i41;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/add_wish_list_cubit.dart'
    as _i117;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/remove_wish_list_cubit.dart'
    as _i151;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/wishlist_cubit.dart'
    as _i114;
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
      () => registerModule.authenticatedDio,
      instanceName: 'authenticated',
    );
    gh.lazySingleton<_i4.Dio>(
      () => registerModule.unauthenticatedDio,
      instanceName: 'un-authenticated',
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
    gh.lazySingleton<_i19.PostReviewDataSource>(
        () => _i19.PostReviewDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i20.PostReviewRepository>(
        () => _i21.PostReviewRepositoryImpl(
              gh<_i19.PostReviewDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i22.PostReviewUsecase>(
        () => _i22.PostReviewUsecase(gh<_i20.PostReviewRepository>()));
    gh.lazySingleton<_i23.QuotationEmailDataSource>(
        () => _i23.QuotationEmailDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i24.QuotationEmailRepository>(
        () => _i25.QuotationEmailRepositoryImpl(
              gh<_i23.QuotationEmailDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i26.QuotationEmailUsecase>(
        () => _i26.QuotationEmailUsecase(gh<_i24.QuotationEmailRepository>()));
    gh.lazySingleton<_i27.SearchDataSource>(() => _i27.SearchDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i28.SearchRepository>(() => _i29.SearchRepositoryImpl(
          gh<_i27.SearchDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i30.SearchUseCase>(
        () => _i30.SearchUseCase(gh<_i28.SearchRepository>()));
    gh.lazySingleton<_i31.StorageHelper>(() => registerModule.storageHelper);
    gh.lazySingleton<_i32.UpdateProfileDataSource>(
        () => _i32.UpdateProfileDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i33.UpdateProfileRepository>(
        () => _i34.UpdateProfileRepositoryImpl(
              gh<_i32.UpdateProfileDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i35.UpdateProfileUsecase>(
        () => _i35.UpdateProfileUsecase(gh<_i33.UpdateProfileRepository>()));
    gh.lazySingleton<_i36.UserDetailsDataSource>(
        () => const _i36.UserDetailsDataSourceImpl());
    gh.lazySingleton<_i37.UserDetailsRepository>(
        () => _i38.UserDetailRepositoryImpl(gh<_i36.UserDetailsDataSource>()));
    gh.lazySingleton<_i39.UserDetailsUseCase>(
        () => _i39.UserDetailsUseCase(gh<_i37.UserDetailsRepository>()));
    gh.lazySingleton<_i40.WishlistDataSource>(
        () => const _i40.WishListDataSourceImpl());
    gh.lazySingleton<_i41.WishlistRepository>(
        () => _i42.WishlistRepositoryImpl(gh<_i40.WishlistDataSource>()));
    gh.lazySingleton<_i43.WishlistUsecase>(
        () => _i43.WishlistUsecase(gh<_i41.WishlistRepository>()));
    gh.lazySingleton<_i44.AddToCartDataSource>(
        () => _i44.AddToCartDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i45.AddToCartRepository>(
        () => _i46.AddToCartRepositoryImpl(
              gh<_i44.AddToCartDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i47.AddToCartUsecase>(
        () => _i47.AddToCartUsecase(gh<_i45.AddToCartRepository>()));
    gh.lazySingleton<_i48.AddWishListUsecase>(
        () => _i48.AddWishListUsecase(gh<_i41.WishlistRepository>()));
    gh.lazySingleton<_i49.AppDataSource>(() => _i49.AppDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i50.ApplyCouponDataSource>(
        () => _i50.ApplyCouponDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i51.ApplyCouponRepository>(
        () => _i52.ApplyCouponRepositoryImpl(
              gh<_i50.ApplyCouponDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i53.ApplyCouponUsecase>(
        () => _i53.ApplyCouponUsecase(gh<_i51.ApplyCouponRepository>()));
    gh.lazySingleton<_i54.AuthRemoteSource>(() => _i54.AuthRemoteSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i55.AuthRepository>(() => _i56.AuthRepositoryImpl(
          gh<_i54.AuthRemoteSource>(),
          gh<_i8.LogoutRemoteSource>(),
          gh<_i10.NetworkInfo>(),
          gh<_i31.StorageHelper>(),
        ));
    gh.lazySingleton<_i57.BrandDetailsDataSource>(
        () => _i57.BrandDetailsDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i58.BrandDetailsRepository>(
        () => _i59.BrandDetailsRepositoryImpl(
              gh<_i57.BrandDetailsDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i60.BrandDetailsUsecase>(
        () => _i60.BrandDetailsUsecase(gh<_i58.BrandDetailsRepository>()));
    gh.lazySingleton<_i61.BrandsDataSource>(() => _i61.BrandsDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i62.BrandsRepository>(() => _i63.BrandsRepositoryImpl(
          gh<_i61.BrandsDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i64.BrandsUsecase>(
        () => _i64.BrandsUsecase(gh<_i62.BrandsRepository>()));
    gh.lazySingleton<_i65.CartDataSource>(() => _i65.CartDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i66.CategoryDataSource>(() => _i66.CategoryDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i67.CategoryRepository>(() => _i68.CategoryRepositoryImpl(
          gh<_i66.CategoryDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i69.CategoryUsecase>(
        () => _i69.CategoryUsecase(gh<_i67.CategoryRepository>()));
    gh.lazySingleton<_i70.CategoryWiseProductsSource>(
        () => _i70.CategoryWiseProductsSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i71.CategoryWithProductsRepository>(
        () => _i72.CategoryWithProductsRepositoryImpl(
              gh<_i70.CategoryWiseProductsSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i73.ChangePasswordSource>(
        () => _i73.ChangePasswordSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i74.CheckoutDataSource>(() => _i74.CheckoutDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i75.CheckoutRepository>(() => _i76.CheckoutRepositoryImpl(
          gh<_i74.CheckoutDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i77.CheckoutUsecase>(
        () => _i77.CheckoutUsecase(gh<_i75.CheckoutRepository>()));
    gh.lazySingleton<_i78.ClearHistoryUsecase>(
        () => _i78.ClearHistoryUsecase(gh<_i28.SearchRepository>()));
    gh.lazySingleton<_i79.ConnectipsUsecase>(
        () => _i79.ConnectipsUsecase(gh<_i16.PlaceOrderRepository>()));
    gh.lazySingleton<_i80.FreeDeliveryDataSource>(
        () => _i80.FreeDeliveryDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i81.FreeDeliveryRepository>(
        () => _i82.FreeDeliveryRepositoryImpl(
              gh<_i80.FreeDeliveryDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i83.FreeDeliveryUsecase>(
        () => _i83.FreeDeliveryUsecase(gh<_i81.FreeDeliveryRepository>()));
    gh.lazySingleton<_i84.HomeDataSource>(() => _i84.HomeDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i85.HomeRepository>(() => _i86.HomeRepositoryImpl(
          gh<_i84.HomeDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i87.HomeUseCase>(
        () => _i87.HomeUseCase(gh<_i85.HomeRepository>()));
    gh.lazySingleton<_i88.HotDealsDataSource>(() => _i88.HotDealsDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i89.HotDealsRepository>(() => _i90.HotDealsRepositoryImpl(
          gh<_i88.HotDealsDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i91.HotDealsUsecase>(
        () => _i91.HotDealsUsecase(gh<_i89.HotDealsRepository>()));
    gh.lazySingleton<_i92.ImePayUsecase>(
        () => _i92.ImePayUsecase(gh<_i16.PlaceOrderRepository>()));
    gh.lazySingleton<_i93.ItemDetailDataSource>(
        () => _i93.ItemDetailDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i94.ItemDetailRepository>(
        () => _i95.ItemDetailRepositoryImpl(
              gh<_i93.ItemDetailDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i96.ItemDetailUsecase>(
        () => _i96.ItemDetailUsecase(gh<_i94.ItemDetailRepository>()));
    gh.factory<_i97.ItemDetailsCubit>(
        () => _i97.ItemDetailsCubit(gh<_i96.ItemDetailUsecase>()));
    gh.lazySingleton<_i98.LoginUseCase>(
        () => _i98.LoginUseCase(gh<_i55.AuthRepository>()));
    gh.lazySingleton<_i99.LogoutUsecase>(
        () => _i99.LogoutUsecase(gh<_i55.AuthRepository>()));
    gh.lazySingleton<_i100.MyOrdersRepository>(
        () => _i101.MyOrdersRepositoryImpl(
              gh<_i9.MyOrdersDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i102.MyOrdersUsecase>(
        () => _i102.MyOrdersUsecase(gh<_i100.MyOrdersRepository>()));
    gh.factory<_i103.NewArrivalsCubit>(
        () => _i103.NewArrivalsCubit(gh<_i14.NewArrivalsUsecase>()));
    gh.factory<_i104.PlaceOrderCubit>(() => _i104.PlaceOrderCubit(
          gh<_i18.PlaceOrderUsecase>(),
          gh<_i92.ImePayUsecase>(),
        ));
    gh.factory<_i105.PostReviewCubit>(
        () => _i105.PostReviewCubit(gh<_i22.PostReviewUsecase>()));
    gh.factory<_i106.QuotationEmailCubit>(
        () => _i106.QuotationEmailCubit(gh<_i26.QuotationEmailUsecase>()));
    gh.lazySingleton<_i107.RecentlyViewedUsecase>(
        () => _i107.RecentlyViewedUsecase(gh<_i85.HomeRepository>()));
    gh.lazySingleton<_i108.RegisterUseCase>(
        () => _i108.RegisterUseCase(gh<_i55.AuthRepository>()));
    gh.lazySingleton<_i109.RemoveWishListUsecase>(
        () => _i109.RemoveWishListUsecase(gh<_i41.WishlistRepository>()));
    gh.lazySingleton<_i110.SearchFilterUseCase>(
        () => _i110.SearchFilterUseCase(gh<_i28.SearchRepository>()));
    gh.lazySingleton<_i111.SearchHistoryAddUsecase>(
        () => _i111.SearchHistoryAddUsecase(gh<_i28.SearchRepository>()));
    gh.lazySingleton<_i112.SearchHistoryUsecase>(
        () => _i112.SearchHistoryUsecase(gh<_i28.SearchRepository>()));
    gh.factory<_i113.UserDetailsCubit>(
        () => _i113.UserDetailsCubit(gh<_i39.UserDetailsUseCase>()));
    gh.factory<_i114.WishlistCubit>(() => _i114.WishlistCubit(
          gh<_i43.WishlistUsecase>(),
          gh<_i48.AddWishListUsecase>(),
          gh<_i109.RemoveWishListUsecase>(),
        ));
    gh.lazySingleton<_i115.AddRecentlyViewedUsecase>(
        () => _i115.AddRecentlyViewedUsecase(gh<_i85.HomeRepository>()));
    gh.factory<_i116.AddToCartCubit>(
        () => _i116.AddToCartCubit(gh<_i47.AddToCartUsecase>()));
    gh.factory<_i117.AddWishListCubit>(
        () => _i117.AddWishListCubit(gh<_i48.AddWishListUsecase>()));
    gh.lazySingleton<_i118.AppDataRepository>(() => _i119.AppDataRepositoryImpl(
          gh<_i49.AppDataSource>(),
          gh<_i10.NetworkInfo>(),
          gh<_i31.StorageHelper>(),
        ));
    gh.lazySingleton<_i120.AppDataUsecase>(
        () => _i120.AppDataUsecase(gh<_i118.AppDataRepository>()));
    gh.lazySingleton<_i121.ApplyCouponCodeRepository>(
        () => _i122.ApplyCouponCodeRepositoryImpl(
              gh<_i50.ApplyCouponDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.factory<_i123.ApplyCouponCubit>(
        () => _i123.ApplyCouponCubit(gh<_i53.ApplyCouponUsecase>()));
    gh.lazySingleton<_i124.ApplyXouponUsecase>(
        () => _i124.ApplyXouponUsecase(gh<_i121.ApplyCouponCodeRepository>()));
    gh.factory<_i125.BrandDetailsCubit>(
        () => _i125.BrandDetailsCubit(gh<_i60.BrandDetailsUsecase>()));
    gh.factory<_i126.BrandsCubit>(
        () => _i126.BrandsCubit(gh<_i64.BrandsUsecase>()));
    gh.lazySingleton<_i127.CartDataRepository>(
        () => _i128.CartDataRepositoryImpl(
              gh<_i65.CartDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i129.CartDataUsecase>(
        () => _i129.CartDataUsecase(gh<_i127.CartDataRepository>()));
    gh.factory<_i130.CategoryCubit>(
        () => _i130.CategoryCubit(gh<_i69.CategoryUsecase>()));
    gh.lazySingleton<_i131.CategoryWiseProductsUsecase>(() =>
        _i131.CategoryWiseProductsUsecase(
            gh<_i71.CategoryWithProductsRepository>()));
    gh.lazySingleton<_i132.ChangePasswordRepository>(
        () => _i133.ChangePasswordRepositoryImpl(
              gh<_i73.ChangePasswordSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i134.ChangePasswordUsecase>(() =>
        _i134.ChangePasswordUsecase(gh<_i132.ChangePasswordRepository>()));
    gh.factory<_i135.CheckoutCubit>(
        () => _i135.CheckoutCubit(gh<_i77.CheckoutUsecase>()));
    gh.factory<_i136.ConnectipsCubit>(
        () => _i136.ConnectipsCubit(gh<_i79.ConnectipsUsecase>()));
    gh.lazySingleton<_i137.FeaturedBrandsUsecase>(
        () => _i137.FeaturedBrandsUsecase(gh<_i85.HomeRepository>()));
    gh.factory<_i138.FreeDeliveryCubit>(
        () => _i138.FreeDeliveryCubit(gh<_i83.FreeDeliveryUsecase>()));
    gh.lazySingleton<_i139.HomeAllProductsUseCase>(
        () => _i139.HomeAllProductsUseCase(gh<_i85.HomeRepository>()));
    gh.lazySingleton<_i140.HomeBrandsUseCase>(
        () => _i140.HomeBrandsUseCase(gh<_i85.HomeRepository>()));
    gh.factory<_i141.HomeCubit>(() => _i141.HomeCubit(gh<_i87.HomeUseCase>()));
    gh.factory<_i142.HomeFeaturedBrandsCubit>(
        () => _i142.HomeFeaturedBrandsCubit(gh<_i137.FeaturedBrandsUsecase>()));
    gh.factory<_i143.HomeRecentlyViewedCubit>(
        () => _i143.HomeRecentlyViewedCubit(
              gh<_i107.RecentlyViewedUsecase>(),
              gh<_i115.AddRecentlyViewedUsecase>(),
            ));
    gh.factory<_i144.HotDealsCubit>(
        () => _i144.HotDealsCubit(gh<_i91.HotDealsUsecase>()));
    gh.factory<_i145.ImePayCubit>(
        () => _i145.ImePayCubit(gh<_i92.ImePayUsecase>()));
    gh.factory<_i146.LoginCubit>(
        () => _i146.LoginCubit(gh<_i98.LoginUseCase>()));
    gh.factory<_i147.LogoutCubit>(
        () => _i147.LogoutCubit(gh<_i99.LogoutUsecase>()));
    gh.factory<_i148.MyOrderCubit>(
        () => _i148.MyOrderCubit(gh<_i102.MyOrdersUsecase>()));
    gh.factory<_i149.RegisterCubit>(
        () => _i149.RegisterCubit(gh<_i108.RegisterUseCase>()));
    gh.lazySingleton<_i150.RemoveFromCartUsecase>(
        () => _i150.RemoveFromCartUsecase(gh<_i127.CartDataRepository>()));
    gh.factory<_i151.RemoveWishListCubit>(
        () => _i151.RemoveWishListCubit(gh<_i109.RemoveWishListUsecase>()));
    gh.factory<_i152.SearchCubit>(
        () => _i152.SearchCubit(gh<_i110.SearchFilterUseCase>()));
    gh.factory<_i153.SearchHistoryCubit>(() => _i153.SearchHistoryCubit(
          gh<_i112.SearchHistoryUsecase>(),
          gh<_i78.ClearHistoryUsecase>(),
          gh<_i111.SearchHistoryAddUsecase>(),
        ));
    gh.lazySingleton<_i154.UpdateCartUsecase>(
        () => _i154.UpdateCartUsecase(gh<_i127.CartDataRepository>()));
    gh.factory<_i155.UpdateProfileCubit>(() => _i155.UpdateProfileCubit(
          gh<_i35.UpdateProfileUsecase>(),
          gh<_i113.UserDetailsCubit>(),
        ));
    gh.factory<_i156.AppCubit>(() => _i156.AppCubit(
          gh<_i31.StorageHelper>(),
          gh<_i120.AppDataUsecase>(),
        ));
    gh.factory<_i157.ApplyCouponCubit>(
        () => _i157.ApplyCouponCubit(gh<_i124.ApplyXouponUsecase>()));
    gh.factory<_i158.CartDataCubit>(() => _i158.CartDataCubit(
          gh<_i129.CartDataUsecase>(),
          gh<_i150.RemoveFromCartUsecase>(),
          gh<_i154.UpdateCartUsecase>(),
        ));
    gh.factory<_i159.CategoryWiseProductsCubit>(() =>
        _i159.CategoryWiseProductsCubit(
            gh<_i131.CategoryWiseProductsUsecase>()));
    gh.factory<_i160.ChangePasswordCubit>(
        () => _i160.ChangePasswordCubit(gh<_i134.ChangePasswordUsecase>()));
    gh.factory<_i161.HomeAllProductsCubit>(() => _i161.HomeAllProductsCubit(
          gh<_i139.HomeAllProductsUseCase>(),
          gh<_i131.CategoryWiseProductsUsecase>(),
        ));
    gh.factory<_i162.HomeBrandsCubit>(
        () => _i162.HomeBrandsCubit(gh<_i140.HomeBrandsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i163.RegisterModule {}
