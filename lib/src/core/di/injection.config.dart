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
import 'package:hardwarepasal/src/app/cubit/app_cubit.dart' as _i33;
import 'package:hardwarepasal/src/core/di/register_modules.dart' as _i100;
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart' as _i15;
import 'package:hardwarepasal/src/core/network/network_info.dart' as _i10;
import 'package:hardwarepasal/src/core/routes/app_router.dart' as _i3;
import 'package:hardwarepasal/src/feature/auth/data/repository/auth_repository.dart'
    as _i36;
import 'package:hardwarepasal/src/feature/auth/data/source/auth_remote_source.dart'
    as _i34;
import 'package:hardwarepasal/src/feature/auth/data/source/logout_remote_source.dart'
    as _i8;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/login_usecase.dart'
    as _i60;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/logout_usecase.dart'
    as _i61;
import 'package:hardwarepasal/src/feature/auth/domain/entities/usecase/register_usercase.dart'
    as _i66;
import 'package:hardwarepasal/src/feature/auth/domain/repository/auth_repository.dart'
    as _i35;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/login/login_cubit.dart'
    as _i87;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/logout/logout_cubit.dart'
    as _i88;
import 'package:hardwarepasal/src/feature/auth/presentation/cubit/register/register_cubit.dart'
    as _i90;
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/repository/brand_details_repository_impl.dart'
    as _i39;
import 'package:hardwarepasal/src/feature/brand_detail_screen/data/source/brand_details_source.dart'
    as _i37;
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/entity/usecase/brand_details_usecase.dart'
    as _i40;
import 'package:hardwarepasal/src/feature/brand_detail_screen/domain/repository/brand_details_repository/brand_details_repository.dart'
    as _i38;
import 'package:hardwarepasal/src/feature/brand_detail_screen/presentation/cubit/brand_details_cubit.dart'
    as _i74;
import 'package:hardwarepasal/src/feature/brands_screen/data/repository/brands_repository_impl.dart'
    as _i43;
import 'package:hardwarepasal/src/feature/brands_screen/data/source/brands_data_source.dart'
    as _i41;
import 'package:hardwarepasal/src/feature/brands_screen/domain/entity/usecase/brands_usecase.dart'
    as _i44;
import 'package:hardwarepasal/src/feature/brands_screen/domain/repository/brands_repository/brands_repository.dart'
    as _i42;
import 'package:hardwarepasal/src/feature/brands_screen/presentation/cubit/brands_cubit.dart'
    as _i75;
import 'package:hardwarepasal/src/feature/cart_screen/data/repository/cart_data_repository_impl.dart'
    as _i77;
import 'package:hardwarepasal/src/feature/cart_screen/data/source/cart_data_source.dart'
    as _i45;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/cart_data_usecase.dart'
    as _i78;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/remove_from_cart_usecase.dart'
    as _i91;
import 'package:hardwarepasal/src/feature/cart_screen/domain/entity/usecase/update_cart_usecase.dart'
    as _i94;
import 'package:hardwarepasal/src/feature/cart_screen/domain/repository/cart_data_repository.dart'
    as _i76;
import 'package:hardwarepasal/src/feature/cart_screen/presentation/cubit/cart_data_cubit.dart'
    as _i96;
import 'package:hardwarepasal/src/feature/category_screen/data/repository/category_repository/category_repository_impl.dart'
    as _i48;
import 'package:hardwarepasal/src/feature/category_screen/data/source/category_data_source.dart'
    as _i46;
import 'package:hardwarepasal/src/feature/category_screen/domain/entity/usecase/category_usecase.dart'
    as _i49;
import 'package:hardwarepasal/src/feature/category_screen/domain/repository/category_repository/category_repository.dart'
    as _i47;
import 'package:hardwarepasal/src/feature/category_screen/presentation/cubit/category_cubit.dart'
    as _i79;
import 'package:hardwarepasal/src/feature/change_password/data/repository/change_password_repository_impl.dart'
    as _i81;
import 'package:hardwarepasal/src/feature/change_password/data/source/change_password_source.dart'
    as _i50;
import 'package:hardwarepasal/src/feature/change_password/domain/entity/usecase/change_password_usecase.dart'
    as _i82;
import 'package:hardwarepasal/src/feature/change_password/domain/repository/change_password_repository.dart'
    as _i80;
import 'package:hardwarepasal/src/feature/change_password/presentation/cubit/change_password_cubit.dart'
    as _i97;
import 'package:hardwarepasal/src/feature/home_screen/data/repository/home_repository_impl.dart'
    as _i53;
import 'package:hardwarepasal/src/feature/home_screen/data/source/home_data_source.dart'
    as _i51;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/add_recently_viewed_usecase.dart'
    as _i71;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_all_products_usecase.dart'
    as _i83;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_brands_usecase.dart'
    as _i84;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/home_usecase.dart'
    as _i54;
import 'package:hardwarepasal/src/feature/home_screen/domain/entity/usecase/recently_viewed_usecase.dart'
    as _i65;
import 'package:hardwarepasal/src/feature/home_screen/domain/repository/home_repository.dart'
    as _i52;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_all_products_cubit.dart'
    as _i98;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_brands_cubit.dart'
    as _i99;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_cubit.dart'
    as _i85;
import 'package:hardwarepasal/src/feature/home_screen/presentation/cubit/home_recently_viewed_cubit.dart'
    as _i86;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/add_to_cart_repository_impl.dart'
    as _i30;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/repository/item_detail_repository_impl.dart'
    as _i57;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/add_to_cart_data_source.dart'
    as _i28;
import 'package:hardwarepasal/src/feature/item_detail_screen/data/source/item_detail_data_source.dart'
    as _i55;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/add_to_cart_usecase.dart'
    as _i31;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/item_detail_usecase.dart'
    as _i58;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/add_to_cart_repository.dart'
    as _i29;
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/repository/item_detail_repository.dart'
    as _i56;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/add_to_cart_cubit.dart'
    as _i72;
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart'
    as _i59;
import 'package:hardwarepasal/src/feature/my_orders_screen/data/repository/my_orders_repository_impl.dart'
    as _i63;
import 'package:hardwarepasal/src/feature/my_orders_screen/data/source/my_orders_data_source.dart'
    as _i9;
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/entity/usecase/my_orders_usecase.dart'
    as _i64;
import 'package:hardwarepasal/src/feature/my_orders_screen/domain/repository/my_orders_repository.dart'
    as _i62;
import 'package:hardwarepasal/src/feature/my_orders_screen/presentation/cubit/my_order_cubit.dart'
    as _i89;
import 'package:hardwarepasal/src/feature/profile_screen/data/repository/user_detail_repository_impl.dart'
    as _i22;
import 'package:hardwarepasal/src/feature/profile_screen/data/source/user_details_source.dart'
    as _i20;
import 'package:hardwarepasal/src/feature/profile_screen/domain/entity/usecase/user_details_usecase.dart'
    as _i23;
import 'package:hardwarepasal/src/feature/profile_screen/domain/repository/user_detail_repository.dart'
    as _i21;
import 'package:hardwarepasal/src/feature/profile_screen/presntation/cubit/user_details_cubit.dart'
    as _i69;
import 'package:hardwarepasal/src/feature/search_screen/data/repository/search_repository_impl.dart'
    as _i13;
import 'package:hardwarepasal/src/feature/search_screen/data/source/search_data_source.dart'
    as _i11;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_filter_usecase.dart'
    as _i68;
import 'package:hardwarepasal/src/feature/search_screen/domain/entity/usecase/search_usecase.dart'
    as _i14;
import 'package:hardwarepasal/src/feature/search_screen/domain/repository/search_repository.dart'
    as _i12;
import 'package:hardwarepasal/src/feature/search_screen/presentation/cubit/search_cubit.dart'
    as _i93;
import 'package:hardwarepasal/src/feature/update_profile/data/repository/update_profile_repository_impl.dart'
    as _i18;
import 'package:hardwarepasal/src/feature/update_profile/data/source/update_profile_data_source.dart'
    as _i16;
import 'package:hardwarepasal/src/feature/update_profile/domin/entity/usecase/update_profile_usecase.dart'
    as _i19;
import 'package:hardwarepasal/src/feature/update_profile/domin/repository/update_profile_repository.dart'
    as _i17;
import 'package:hardwarepasal/src/feature/update_profile/presentation/cubit/update_profile_cubit.dart'
    as _i95;
import 'package:hardwarepasal/src/feature/wishlist_screen/data/repository/wishlist_repository_impl.dart'
    as _i26;
import 'package:hardwarepasal/src/feature/wishlist_screen/data/source/wishlist_source.dart'
    as _i24;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/add_wish_list_usecase.dart'
    as _i32;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/remove_wish_list_usecase.dart'
    as _i67;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/entity/usecase/wishlist_usecase.dart'
    as _i27;
import 'package:hardwarepasal/src/feature/wishlist_screen/domain/repository/wishlist_repository.dart'
    as _i25;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/add_wish_list_cubit.dart'
    as _i73;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/remove_wish_list_cubit.dart'
    as _i92;
import 'package:hardwarepasal/src/feature/wishlist_screen/presentation/cubit/wishlist_cubit.dart'
    as _i70;
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
    gh.lazySingleton<_i11.SearchDataSource>(() => _i11.SearchDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i12.SearchRepository>(() => _i13.SearchRepositoryImpl(
          gh<_i11.SearchDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i14.SearchUseCase>(
        () => _i14.SearchUseCase(gh<_i12.SearchRepository>()));
    gh.lazySingleton<_i15.StorageHelper>(() => registerModule.storageHelper);
    gh.lazySingleton<_i16.UpdateProfileDataSource>(
        () => _i16.UpdateProfileDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i17.UpdateProfileRepository>(
        () => _i18.UpdateProfileRepositoryImpl(
              gh<_i16.UpdateProfileDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i19.UpdateProfileUsecase>(
        () => _i19.UpdateProfileUsecase(gh<_i17.UpdateProfileRepository>()));
    gh.lazySingleton<_i20.UserDetailsDataSource>(
        () => const _i20.UserDetailsDataSourceImpl());
    gh.lazySingleton<_i21.UserDetailsRepository>(
        () => _i22.UserDetailRepositoryImpl(gh<_i20.UserDetailsDataSource>()));
    gh.lazySingleton<_i23.UserDetailsUseCase>(
        () => _i23.UserDetailsUseCase(gh<_i21.UserDetailsRepository>()));
    gh.lazySingleton<_i24.WishlistDataSource>(
        () => const _i24.WishListDataSourceImpl());
    gh.lazySingleton<_i25.WishlistRepository>(
        () => _i26.WishlistRepositoryImpl(gh<_i24.WishlistDataSource>()));
    gh.lazySingleton<_i27.WishlistUsecase>(
        () => _i27.WishlistUsecase(gh<_i25.WishlistRepository>()));
    gh.lazySingleton<_i28.AddToCartDataSource>(
        () => _i28.AddToCartDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i29.AddToCartRepository>(
        () => _i30.AddToCartRepositoryImpl(
              gh<_i28.AddToCartDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i31.AddToCartUsecase>(
        () => _i31.AddToCartUsecase(gh<_i29.AddToCartRepository>()));
    gh.lazySingleton<_i32.AddWishListUsecase>(
        () => _i32.AddWishListUsecase(gh<_i25.WishlistRepository>()));
    gh.factory<_i33.AppCubit>(() => _i33.AppCubit(gh<_i15.StorageHelper>()));
    gh.lazySingleton<_i34.AuthRemoteSource>(() => _i34.AuthRemoteSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i35.AuthRepository>(() => _i36.AuthRepositoryImpl(
          gh<_i34.AuthRemoteSource>(),
          gh<_i8.LogoutRemoteSource>(),
          gh<_i10.NetworkInfo>(),
          gh<_i15.StorageHelper>(),
        ));
    gh.lazySingleton<_i37.BrandDetailsDataSource>(
        () => _i37.BrandDetailsDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i38.BrandDetailsRepository>(
        () => _i39.BrandDetailsRepositoryImpl(
              gh<_i37.BrandDetailsDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i40.BrandDetailsUsecase>(
        () => _i40.BrandDetailsUsecase(gh<_i38.BrandDetailsRepository>()));
    gh.lazySingleton<_i41.BrandsDataSource>(() => _i41.BrandsDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i42.BrandsRepository>(() => _i43.BrandsRepositoryImpl(
          gh<_i41.BrandsDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i44.BrandsUsecase>(
        () => _i44.BrandsUsecase(gh<_i42.BrandsRepository>()));
    gh.lazySingleton<_i45.CartDataSource>(() => _i45.CartDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i46.CategoryDataSource>(() => _i46.CategoryDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i47.CategoryRepository>(() => _i48.CategoryRepositoryImpl(
          gh<_i46.CategoryDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i49.CategoryUsecase>(
        () => _i49.CategoryUsecase(gh<_i47.CategoryRepository>()));
    gh.lazySingleton<_i50.ChangePasswordSource>(
        () => _i50.ChangePasswordSourceImpl(
              gh<_i4.Dio>(instanceName: 'authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i51.HomeDataSource>(() => _i51.HomeDataSourceImpl(
          gh<_i4.Dio>(instanceName: 'un-authenticated'),
          gh<_i7.Logger>(),
        ));
    gh.lazySingleton<_i52.HomeRepository>(() => _i53.HomeRepositoryImpl(
          gh<_i51.HomeDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i54.HomeUseCase>(
        () => _i54.HomeUseCase(gh<_i52.HomeRepository>()));
    gh.lazySingleton<_i55.ItemDetailDataSource>(
        () => _i55.ItemDetailDataSourceImpl(
              gh<_i4.Dio>(instanceName: 'un-authenticated'),
              gh<_i7.Logger>(),
            ));
    gh.lazySingleton<_i56.ItemDetailRepository>(
        () => _i57.ItemDetailRepositoryImpl(
              gh<_i55.ItemDetailDataSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i58.ItemDetailUsecase>(
        () => _i58.ItemDetailUsecase(gh<_i56.ItemDetailRepository>()));
    gh.factory<_i59.ItemDetailsCubit>(
        () => _i59.ItemDetailsCubit(gh<_i58.ItemDetailUsecase>()));
    gh.lazySingleton<_i60.LoginUseCase>(
        () => _i60.LoginUseCase(gh<_i35.AuthRepository>()));
    gh.lazySingleton<_i61.LogoutUsecase>(
        () => _i61.LogoutUsecase(gh<_i35.AuthRepository>()));
    gh.lazySingleton<_i62.MyOrdersRepository>(() => _i63.MyOrdersRepositoryImpl(
          gh<_i9.MyOrdersDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i64.MyOrdersUsecase>(
        () => _i64.MyOrdersUsecase(gh<_i62.MyOrdersRepository>()));
    gh.lazySingleton<_i65.RecentlyViewedUsecase>(
        () => _i65.RecentlyViewedUsecase(gh<_i52.HomeRepository>()));
    gh.lazySingleton<_i66.RegisterUseCase>(
        () => _i66.RegisterUseCase(gh<_i35.AuthRepository>()));
    gh.lazySingleton<_i67.RemoveWishListUsecase>(
        () => _i67.RemoveWishListUsecase(gh<_i25.WishlistRepository>()));
    gh.lazySingleton<_i68.SearchFilterUseCase>(
        () => _i68.SearchFilterUseCase(gh<_i12.SearchRepository>()));
    gh.factory<_i69.UserDetailsCubit>(
        () => _i69.UserDetailsCubit(gh<_i23.UserDetailsUseCase>()));
    gh.factory<_i70.WishlistCubit>(() => _i70.WishlistCubit(
          gh<_i27.WishlistUsecase>(),
          gh<_i32.AddWishListUsecase>(),
          gh<_i67.RemoveWishListUsecase>(),
        ));
    gh.lazySingleton<_i71.AddRecentlyViewedUsecase>(
        () => _i71.AddRecentlyViewedUsecase(gh<_i52.HomeRepository>()));
    gh.factory<_i72.AddToCartCubit>(
        () => _i72.AddToCartCubit(gh<_i31.AddToCartUsecase>()));
    gh.factory<_i73.AddWishListCubit>(
        () => _i73.AddWishListCubit(gh<_i32.AddWishListUsecase>()));
    gh.factory<_i74.BrandDetailsCubit>(
        () => _i74.BrandDetailsCubit(gh<_i40.BrandDetailsUsecase>()));
    gh.factory<_i75.BrandsCubit>(
        () => _i75.BrandsCubit(gh<_i44.BrandsUsecase>()));
    gh.lazySingleton<_i76.CartDataRepository>(() => _i77.CartDataRepositoryImpl(
          gh<_i45.CartDataSource>(),
          gh<_i10.NetworkInfo>(),
        ));
    gh.lazySingleton<_i78.CartDataUsecase>(
        () => _i78.CartDataUsecase(gh<_i76.CartDataRepository>()));
    gh.factory<_i79.CategoryCubit>(
        () => _i79.CategoryCubit(gh<_i49.CategoryUsecase>()));
    gh.lazySingleton<_i80.ChangePasswordRepository>(
        () => _i81.ChangePasswordRepositoryImpl(
              gh<_i50.ChangePasswordSource>(),
              gh<_i10.NetworkInfo>(),
            ));
    gh.lazySingleton<_i82.ChangePasswordUsecase>(
        () => _i82.ChangePasswordUsecase(gh<_i80.ChangePasswordRepository>()));
    gh.lazySingleton<_i83.HomeAllProductsUseCase>(
        () => _i83.HomeAllProductsUseCase(gh<_i52.HomeRepository>()));
    gh.lazySingleton<_i84.HomeBrandsUseCase>(
        () => _i84.HomeBrandsUseCase(gh<_i52.HomeRepository>()));
    gh.factory<_i85.HomeCubit>(() => _i85.HomeCubit(gh<_i54.HomeUseCase>()));
    gh.factory<_i86.HomeRecentlyViewedCubit>(() => _i86.HomeRecentlyViewedCubit(
          gh<_i65.RecentlyViewedUsecase>(),
          gh<_i71.AddRecentlyViewedUsecase>(),
        ));
    gh.factory<_i87.LoginCubit>(() => _i87.LoginCubit(gh<_i60.LoginUseCase>()));
    gh.factory<_i88.LogoutCubit>(
        () => _i88.LogoutCubit(gh<_i61.LogoutUsecase>()));
    gh.factory<_i89.MyOrderCubit>(
        () => _i89.MyOrderCubit(gh<_i64.MyOrdersUsecase>()));
    gh.factory<_i90.RegisterCubit>(
        () => _i90.RegisterCubit(gh<_i66.RegisterUseCase>()));
    gh.lazySingleton<_i91.RemoveFromCartUsecase>(
        () => _i91.RemoveFromCartUsecase(gh<_i76.CartDataRepository>()));
    gh.factory<_i92.RemoveWishListCubit>(
        () => _i92.RemoveWishListCubit(gh<_i67.RemoveWishListUsecase>()));
    gh.factory<_i93.SearchCubit>(
        () => _i93.SearchCubit(gh<_i68.SearchFilterUseCase>()));
    gh.lazySingleton<_i94.UpdateCartUsecase>(
        () => _i94.UpdateCartUsecase(gh<_i76.CartDataRepository>()));
    gh.factory<_i95.UpdateProfileCubit>(() => _i95.UpdateProfileCubit(
          gh<_i19.UpdateProfileUsecase>(),
          gh<_i69.UserDetailsCubit>(),
        ));
    gh.factory<_i96.CartDataCubit>(() => _i96.CartDataCubit(
          gh<_i78.CartDataUsecase>(),
          gh<_i91.RemoveFromCartUsecase>(),
          gh<_i94.UpdateCartUsecase>(),
        ));
    gh.factory<_i97.ChangePasswordCubit>(
        () => _i97.ChangePasswordCubit(gh<_i82.ChangePasswordUsecase>()));
    gh.factory<_i98.HomeAllProductsCubit>(
        () => _i98.HomeAllProductsCubit(gh<_i83.HomeAllProductsUseCase>()));
    gh.factory<_i99.HomeBrandsCubit>(
        () => _i99.HomeBrandsCubit(gh<_i84.HomeBrandsUseCase>()));
    return this;
  }
}

class _$RegisterModule extends _i100.RegisterModule {}
