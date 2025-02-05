import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';

import '../../feature/auth/data/models/user_model.dart';
import '../../feature/item_detail_screen/data/models/cart_item_model/cart_item_model.dart';
import '../constants/app_constants.dart';

class StorageHelper {
  const StorageHelper(this._storage);

  final FlutterSecureStorage _storage;

  Future<bool> get hasInitiallyOpened async {
    final token = await _storage.read(key: AppConstants.initialOpen);
    if(token != null && token.isNotEmpty){
      print(token);
    }else{
      print("Token nai Xaina");
    }
    return token != null && token.isNotEmpty;
  }

  Future<void> saveInitialAppOpen() async =>
      await _storage.write(key: AppConstants.initialOpen, value: 'true');

  Future<bool> get hasAccessToken async {
    final token = await _storage.read(key: AppConstants.accessToken);
    return token != null && token.isNotEmpty;
  }

  FutureOr<bool> get isTokenExpired async {
    final expiryTime = await _storage.read(key: AppConstants.expiryTime);
    if (expiryTime == null || expiryTime.isEmpty) return true;
    final expiryDate = DateTime.parse(expiryTime);
    final currentDate = DateTime.now();
    return currentDate.isAfter(expiryDate);
  }

  Future<String?> getToken() async {
    final String? token = await _storage.read(key: AppConstants.accessToken);
    return token;
  }

  FutureOr<Option<String>> getRefreshToken() async {
    final refreshToken = await _storage.read(key: AppConstants.refreshToken);
    return optionOf(refreshToken);
  }
  //
  // Future<void> saveSessionToken(String value) async =>
  //     await _storage.write(key: AppConstants.sessionToken, value: value);

  Future<String?> getValue({required String key}) async =>
      _storage.read(key: key);

  Future<void> setValue({required String key, required String value}) async =>
      _storage.write(key: key, value: value);

  Future<void> deleteValue({required String key}) async =>
      _storage.delete(key: key);

  // Future<void> clearAll() async => _storage.deleteAll();

  // Future<Map<String, String>> getAllValues() async => _storage.readAll();

  Future<void> setSession({required UserModel model}) async =>
      await Future.wait([
        _storage.write(
            key: AppConstants.accessToken, value: model.data!.access_token),
      ]);

  Future<void> updateSession({
    required String accessToken,
    required String refreshToken,
    required String expiryTime,
  }) async =>
      await Future.wait([
        _storage.write(key: AppConstants.accessToken, value: accessToken),
        _storage.write(key: AppConstants.refreshToken, value: refreshToken),
        _storage.write(key: AppConstants.expiryTime, value: expiryTime),
      ]);

  //user data
  Future<void> saveUserData({required UserDetails model}) async {
    await _storage.write(
        key: AppConstants.userData, value: jsonEncode(model.toJson()));
  }

  Future<UserDetails> getUserData() async {
    String? jsonString = await _storage.read(key: AppConstants.userData);
    await saveInitialAppOpen();
    if (jsonString != null) {
      return UserDetails.fromJson(jsonDecode(jsonString));
    }
    return const UserDetails();
  }

  //previous searches
  Future<int> addSearchHistory({required String value}) async {
    List<String> searchHistory = await getSearchHistory();
    if (searchHistory.contains(value)) {
      searchHistory.remove(value);
    }
    searchHistory.add(value);
    String jsonString = jsonEncode(searchHistory);
    await _storage.write(key: AppConstants.searchHistory, value: jsonString);
    return 1;
  }

  Future<List<String>> getSearchHistory() async {
    String? jsonString = await _storage.read(key: AppConstants.searchHistory);
    if (jsonString != null) {
      List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((item) => item.toString()).toList();
    }
    return [];
  }

  Future<int> clearSearchHistory() async {
    await _storage.delete(key: AppConstants.searchHistory);
    return 1;
  }

  //cart routes
  Future<int> addItemsToCart(
      {required ProductModel value, int productQuantity = 1}) async {
    List<CartItemModel> cartItems = await getCartItems();

    bool isExist = cartItems.any((element) => element.product!.id == value.id);
    if (isExist) {
      return 0;
    } else {
      cartItems.add(CartItemModel(product: value, quantity: productQuantity));
      String jsonString =
          jsonEncode(cartItems.map((ele) => ele.toJson()).toList());
      await _storage.write(key: AppConstants.cartItems, value: jsonString);
      return 1;
    }
  }

  Future<void> addQuantityToCart({required ProductModel? product}) async {
    List<CartItemModel> cartItems = await getCartItems();
    int index =
        cartItems.indexWhere((element) => element.product!.id == product!.id);
    int prevQuantity = cartItems[index].quantity!;

    cartItems.removeAt(index);
    cartItems.insert(
        index, CartItemModel(product: product, quantity: prevQuantity + 1));

    String jsonString =
        jsonEncode(cartItems.map((ele) => ele.toJson()).toList());
    await _storage.write(key: AppConstants.cartItems, value: jsonString);
  }

  Future<void> subtractQuantityFromCart(
      {required ProductModel? product}) async {
    List<CartItemModel> cartItems = await getCartItems();
    int index =
        cartItems.indexWhere((element) => element.product!.id == product!.id);
    int prevQuantity = cartItems[index].quantity!;

    if (prevQuantity > 1) {
      cartItems.removeAt(index);
      cartItems.insert(
          index, CartItemModel(product: product, quantity: prevQuantity - 1));
    } else {
      cartItems.removeAt(index);
    }

    String jsonString =
        jsonEncode(cartItems.map((ele) => ele.toJson()).toList());
    await _storage.write(key: AppConstants.cartItems, value: jsonString);
  }

  Future<void> removeItemFromCart({required int? productId}) async {
    List<CartItemModel> cartItems = await getCartItems();
    cartItems.removeWhere((element) => element.product!.id == productId);
    String jsonString =
        jsonEncode(cartItems.map((ele) => ele.toJson()).toList());
    await _storage.write(key: AppConstants.cartItems, value: jsonString);
  }

  Future<void> clearCart() async {
    await _storage.delete(key: AppConstants.cartItems);
  }

  Future<List<CartItemModel>> getCartItems() async {
    String? jsonString = await _storage.read(key: AppConstants.cartItems);
    if (jsonString != null) {
      List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((item) => CartItemModel.fromJson(item)).toList();
    }
    return [];
  }

  //recently viewed products
  Future<List<ProductModel>> getRecentlyViewed() async {
    String? jsonString = await _storage.read(key: AppConstants.recentlyViewed);
    if (jsonString != null) {
      List<dynamic> jsonList = jsonDecode(jsonString);
      return jsonList.map((item) => ProductModel.fromJson(item)).toList();
    }
    return [];
  }

  Future<int> addItemsToRecentlyViewed({required ProductModel value}) async {
    List<ProductModel> recentlyViewed = await getRecentlyViewed();
    bool isExist = recentlyViewed.any((element) => element.id == value.id);
    if (isExist) {
     recentlyViewed.removeWhere((element) => element.id == value.id);
    }
    recentlyViewed.add(value);
    String jsonString =
        jsonEncode(recentlyViewed.map((ele) => ele.toJson()).toList());
    await _storage.write(key: AppConstants.recentlyViewed, value: jsonString);
    return 1;
  }


  //filter states
 Future<void> saveDiscountState({required String discount})async{
    await _storage.write(key: AppConstants.filterDiscount, value: discount);
  }

  Future<String?> getDiscountState() async {
    return await _storage.read(key: AppConstants.filterDiscount);
  }


  Future<void> saveMinPriceState({required String minPrice})async{
    await _storage.write(key: AppConstants.filterMinPrice, value: minPrice);
  }
  Future<void> saveMaxPriceState({required String minPrice})async{
    await _storage.write(key: AppConstants.filterMaxPrice, value: minPrice);
  }

  Future<void> savePriceRangeState({required String range})async{
    await _storage.write(key: AppConstants.filterPriceRange, value: range);
  }


  Future<String> getMinPriceState() async {
    return await _storage.read(key: AppConstants.filterMinPrice) ?? "0";
  }

  Future<String> getMaxPriceState() async {
    return await _storage.read(key: AppConstants.filterMaxPrice) ?? "9999";
  }

  Future<String> getPriceRangeState() async {
    return await _storage.read(key: AppConstants.filterPriceRange) ?? "000";
  }


  Future<void> resetFilterStates() async {
    await _storage.delete(key: AppConstants.filterDiscount);
    await _storage.delete(key: AppConstants.filterMinPrice);
    await _storage.delete(key: AppConstants.filterMaxPrice);
    await _storage.delete(key: AppConstants.filterPriceRange);
  }





}
