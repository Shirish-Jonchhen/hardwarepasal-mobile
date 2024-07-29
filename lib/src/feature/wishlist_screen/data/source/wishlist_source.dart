import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/core/helpers/storage_helper.dart';
import 'package:hardwarepasal/src/feature/cart_screen/data/models/cart_model/cart_model.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api_response/api_response.dart';
import '../../../item_detail_screen/data/models/cart_item_model/cart_item_model.dart';

abstract class WishlistDataSource {
  Future<ApiResponse<List<CartItemModel>>> getWishList();
  Future<ApiResponse<int>> addWishList(ProductModel product);
  Future<ApiResponse<void>> removeWishList(int productId);

}

@LazySingleton(as: WishlistDataSource)
class WishListDataSourceImpl implements WishlistDataSource {
  const WishListDataSourceImpl();

  @override
  Future<ApiResponse<List<CartItemModel>>> getWishList() async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    List<CartItemModel> wishlist = await storageHelper.getCartItems();
    return ApiResponse(data: wishlist, message: 'message');
  }


  @override
  Future<ApiResponse<int>> addWishList(ProductModel product) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    int result = await storageHelper.addItemsToCart(value: product);
    return ApiResponse(data: result, message: 'message');
  }

  @override
  Future<ApiResponse<void>> removeWishList(int productId) async {
    FlutterSecureStorage storage = const FlutterSecureStorage();
    StorageHelper storageHelper = StorageHelper(storage);
    await storageHelper.removeItemFromCart(productId: productId);
    return ApiResponse(data: null, message: 'message');
  }



}
