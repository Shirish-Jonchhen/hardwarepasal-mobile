import 'package:bloc/bloc.dart';
import 'package:hardwarepasal/src/feature/home_screen/data/models/product_model/product_model.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/api_response/api_response.dart';
import '../../data/models/home_all_products_model/home_all_products_model.dart';
import '../../domain/entity/params/all_products_params.dart';
import '../../domain/entity/usecase/home_all_products_usecase.dart';

part 'home_all_products_cubit.freezed.dart';
part 'home_all_products_state.dart';


@injectable
class HomeAllProductsCubit extends Cubit<HomeAllProductsState> {
  final HomeAllProductsUseCase _homeAllProductsUseCase;
  HomeAllProductsCubit(this._homeAllProductsUseCase) : super(HomeAllProductsState.initial());

  bool _isFetching = false;
  List<ProductModel> _products = [];
  int _currentPage = 1;
  bool _hasMoreProducts = true;

  void getAllProducts(int page) async {
    if(_isFetching || !_hasMoreProducts) return;

    _isFetching = true;
    emit(const HomeAllProductsState.loading());

    final response = await _homeAllProductsUseCase.call(AllProductsParams(page: page));
    response.fold(
      (l) => l.when(
        serverError: (message) => emit(HomeAllProductsState.error(message: message)),
        noInternet: () => emit(const HomeAllProductsState.noInternet()),
      ),
      (r){
        final products = r.data?.data?.products?.data ?? [];
        if (products.isEmpty) {
          _hasMoreProducts = false;
        } else {
          _products.addAll(products);
          _currentPage++;
          emit(HomeAllProductsState.success(data: _products));
        }
        _isFetching = false;
        // emit(HomeAllProductsState.success(data: _products));
      },
    );
  }
  void loadMoreProducts() {
    if (_hasMoreProducts) {
      getAllProducts(_currentPage);
    }
  }
}


var homeData = {
  "code": 200,
  "message": "Success",
  "data": {
    "data": {
      "product": {
        "id": 1790,
        "product_cat_id": "324",
        "sup_id": "5",
        "name": "demo1",
        "description": "<p>s</p>",
        "cover_image": "2024-05-15-10-13-31_wfeJFUs9Vwproduct.jpg",
        "model_no": "Culpa eos cupidatat",
        "old_price": "816",
        "price": "804.00",
        "xtraAttribute": "",
        "weight": "20.00",
        "quantity": "1",
        "status": "featured",
        "slug": "demo1",
        "created_at": "2021-09-01T23:44:54.000000Z",
        "updated_at": "2024-05-15T07:11:26.000000Z",
        "brand_id": "87",
        "group_category_id": null,
        "clearanceSale": "1",
        "specification": "<p>d</p>",
        "delivery_days": "",
        "express_delivery_days": "",
        "express_delivery_price": "0.00",
        "discount": "1",
        "meta_keywords": "Ea enim qui eum ut",
        "meta_description": "Reiciendis provident",
        "meta_title": "Dolor vitae fuga Cu",
        "hot_deal": "",
        "warrenty": "1",
        "hpxpress": "",
        "view_count": "99",
        "video_link": "x91MPoITQ3I",
        "is_blocked": "0",
        "is_ask_price": "0",
        "images": [
          {
            "id": 1565,
            "image": "2024-05-15-10-14-41_Io7zf19mL1.png",
            "created_at": "2024-05-15T04:29:41.000000Z",
            "updated_at": "2024-05-15T04:29:41.000000Z",
            "product_id": "1790"
          },
          {
            "id": 1566,
            "image": "2024-05-15-12-56-26_xP8AgS95D9.jpg",
            "created_at": "2024-05-15T07:11:27.000000Z",
            "updated_at": "2024-05-15T07:11:27.000000Z",
            "product_id": "1790"
          }
        ],
        "reviews": [
          {
            "id": 33,
            "product_id": "1790",
            "user_id": "427",
            "stars": "5.00",
            "description": "nice",
            "deleted_at": null,
            "created_at": "2024-05-03T01:28:56.000000Z",
            "updated_at": "2024-05-03T01:28:56.000000Z"
          },
          {
            "id": 32,
            "product_id": "1790",
            "user_id": "427",
            "stars": "5.50",
            "description": "nice",
            "deleted_at": null,
            "created_at": "2024-05-03T01:21:14.000000Z",
            "updated_at": "2024-05-03T01:21:14.000000Z"
          },
          {
            "id": 31,
            "product_id": "1790",
            "user_id": "427",
            "stars": "5.00",
            "description": "nice",
            "deleted_at": null,
            "created_at": "2024-05-03T01:20:56.000000Z",
            "updated_at": "2024-05-03T01:20:56.000000Z"
          }
        ],
        "category": {
          "id": 324,
          "name": "Wrench",
          "description": null,
          "icon": "2021-07-18-00-10-21_syX8MMnmnz_category.jpg",
          "iconclass": null,
          "slug": "wrench",
          "sup_cat_id": "352",
          "status": "published",
          "created_by": "1",
          "updated_by": "46",
          "created_at": "2019-01-24T21:19:55.000000Z",
          "updated_at": "2021-07-17T12:55:21.000000Z",
          "meta_keywords": null,
          "meta_description": "Wrench online in Nepal: Visit our website for wide selection wrench available in Nepal.-Best price -Home delivery -genuine product.",
          "meta_title": "Buy wrench for the best price in Nepal",
          "is_grouping": null,
          "display": "0",
          "show_on_home": null,
          "offer_text": null,
          "display_text": null,
          "svg_icon": null,
          "public_path": "https://hardwarepasalapi.checkmysite.live/category/wrench",
          "image_url": "https://hardwarepasalapi.checkmysite.live/src/img/productcategory/2021-07-18-00-10-21_syX8MMnmnz_category.jpg"
        },
        "brand": {
          "id": 87,
          "category_id": null,
          "name": "BOSI Tools",
          "description": "",
          "image": "2019-05-01-12-36-16_b3VwpR2CJV_brand.png",
          "status": "featured",
          "created_at": "2019-02-16T22:53:16.000000Z",
          "updated_at": "2020-07-11T10:09:56.000000Z",
          "cover_image": null,
          "meta_title": null,
          "meta_keywords": null,
          "meta_description": null,
          "slug": "bosi-tools"
        }
      },
      "productYouMightLike": [
        {
          "id": 1618,
          "product_cat_id": "324",
          "sup_id": "0",
          "name": "48 In 1 Socket Wrench",
          "description": "<p style=\"text-align: justify;\">The tiger wrench combines 48 tools into one swiveling head and rotating adjustments let you find the size you need quickly and easily at any angle no guesswork means you save time replaces big, bulky socket and wrench tool kits works with Spline bolts, 6-point, 12-point, Torn, square and even damaged bolts.</p>",
          "cover_image": "2019-07-28-08-37-12_7MZ5rlAZolproduct.jpg",
          "model_no": "",
          "old_price": "1500",
          "price": "1200.00",
          "xtraAttribute": "",
          "weight": "1.00",
          "quantity": "1",
          "status": "featured",
          "slug": "48-in-1-socket-wrench",
          "created_at": "2019-07-17T18:45:07.000000Z",
          "updated_at": "2019-09-14T18:46:50.000000Z",
          "brand_id": "0",
          "group_category_id": null,
          "clearanceSale": "0",
          "specification": "<ul><li>Product Length: 25cm</li><li>Size: 8, 10, 11, 13, 14, 16, 17, 19, 5/16, 3/8, 7/16, 1/2, 9/16, 5/8, 11/16, 3/4</li><li>360 degree rotating heads</li><li>Works with: Hex, square, 12 point, damaged bolts, spline, metric or imperial, torx and more</li><li>Flexibility: 45 degree angle for hard-to-reach nuts and bolts.</li><li>Pro-grade alloy steel for super strength</li><li>works with virtually any size and shape nuts and bolts</li><li>Durable heavy- duty steel construction quick and easy to use</li><li>Extremely durable</li><li>Handles up to 135kgs of pressure</li><li>Metric and imperial-worldwide use</li></ul>",
          "delivery_days": "",
          "express_delivery_days": "",
          "express_delivery_price": "0.00",
          "discount": "20",
          "meta_keywords": "",
          "meta_description": "Buy 48 in 1 socket wrench online in Nepal. Visit our website for different types of wrench. -Online support- Fastest delivery- Delivery all over Nepal. ",
          "meta_title": "Price of 48 in 1 socket wrench online in Nepal. Hardwarepasal.com",
          "hot_deal": null,
          "warrenty": null,
          "hpxpress": null,
          "view_count": "75",
          "video_link": null,
          "is_blocked": "0",
          "is_ask_price": "0"
        },
        {
          "id": 1268,
          "product_cat_id": "324",
          "sup_id": "0",
          "name": "Ingco 8\" Adjustable wrench HADW131088",
          "description": "",
          "cover_image": "2019-04-12-08-04-39_wug9xovBOTproduct.jpg",
          "model_no": "HADW131088",
          "old_price": "580",
          "price": "551.00",
          "xtraAttribute": "",
          "weight": "1.00",
          "quantity": "1",
          "status": "published",
          "slug": "ingco-8-adjustable-wrench-hadw131088",
          "created_at": "2019-04-11T20:49:39.000000Z",
          "updated_at": "2019-08-31T23:37:32.000000Z",
          "brand_id": "89",
          "group_category_id": null,
          "clearanceSale": "0",
          "specification": "<p>PRODUCT CODE: PT004</p><ul><li>Size: 8 Inch</li><li>Forged chrome vanadium steel provides high strength and durability</li><li>Chrome plated for rust resistance</li><li>Slip-resistant bi-material handle for a comfortable grip</li><li>Used for automotive maintenance and repair, plumbing and general assembly tasks</li></ul>",
          "delivery_days": "",
          "express_delivery_days": "",
          "express_delivery_price": "0.00",
          "discount": "5",
          "meta_keywords": "",
          "meta_description": "Shop wrench online in Nepal. Visit our website for more wrench available.",
          "meta_title": "Adjustible wrench at the best price online in Nepal.",
          "hot_deal": null,
          "warrenty": null,
          "hpxpress": null,
          "view_count": "60",
          "video_link": null,
          "is_blocked": "0",
          "is_ask_price": "0"
        }
      ],
      "customersAreAlsoViewing": [
        {
          "id": 1618,
          "product_cat_id": "324",
          "sup_id": "0",
          "name": "48 In 1 Socket Wrench",
          "description": "<p style=\"text-align: justify;\">The tiger wrench combines 48 tools into one swiveling head and rotating adjustments let you find the size you need quickly and easily at any angle no guesswork means you save time replaces big, bulky socket and wrench tool kits works with Spline bolts, 6-point, 12-point, Torn, square and even damaged bolts.</p>",
          "cover_image": "2019-07-28-08-37-12_7MZ5rlAZolproduct.jpg",
          "model_no": "",
          "old_price": "1500",
          "price": "1200.00",
          "xtraAttribute": "",
          "weight": "1.00",
          "quantity": "1",
          "status": "featured",
          "slug": "48-in-1-socket-wrench",
          "created_at": "2019-07-17T18:45:07.000000Z",
          "updated_at": "2019-09-14T18:46:50.000000Z",
          "brand_id": "0",
          "group_category_id": null,
          "clearanceSale": "0",
          "specification": "<ul><li>Product Length: 25cm</li><li>Size: 8, 10, 11, 13, 14, 16, 17, 19, 5/16, 3/8, 7/16, 1/2, 9/16, 5/8, 11/16, 3/4</li><li>360 degree rotating heads</li><li>Works with: Hex, square, 12 point, damaged bolts, spline, metric or imperial, torx and more</li><li>Flexibility: 45 degree angle for hard-to-reach nuts and bolts.</li><li>Pro-grade alloy steel for super strength</li><li>works with virtually any size and shape nuts and bolts</li><li>Durable heavy- duty steel construction quick and easy to use</li><li>Extremely durable</li><li>Handles up to 135kgs of pressure</li><li>Metric and imperial-worldwide use</li></ul>",
          "delivery_days": "",
          "express_delivery_days": "",
          "express_delivery_price": "0.00",
          "discount": "20",
          "meta_keywords": "",
          "meta_description": "Buy 48 in 1 socket wrench online in Nepal. Visit our website for different types of wrench. -Online support- Fastest delivery- Delivery all over Nepal. ",
          "meta_title": "Price of 48 in 1 socket wrench online in Nepal. Hardwarepasal.com",
          "hot_deal": null,
          "warrenty": null,
          "hpxpress": null,
          "view_count": "75",
          "video_link": null,
          "is_blocked": "0",
          "is_ask_price": "0"
        },
        {
          "id": 1268,
          "product_cat_id": "324",
          "sup_id": "0",
          "name": "Ingco 8\" Adjustable wrench HADW131088",
          "description": "",
          "cover_image": "2019-04-12-08-04-39_wug9xovBOTproduct.jpg",
          "model_no": "HADW131088",
          "old_price": "580",
          "price": "551.00",
          "xtraAttribute": "",
          "weight": "1.00",
          "quantity": "1",
          "status": "published",
          "slug": "ingco-8-adjustable-wrench-hadw131088",
          "created_at": "2019-04-11T20:49:39.000000Z",
          "updated_at": "2019-08-31T23:37:32.000000Z",
          "brand_id": "89",
          "group_category_id": null,
          "clearanceSale": "0",
          "specification": "<p>PRODUCT CODE: PT004</p><ul><li>Size: 8 Inch</li><li>Forged chrome vanadium steel provides high strength and durability</li><li>Chrome plated for rust resistance</li><li>Slip-resistant bi-material handle for a comfortable grip</li><li>Used for automotive maintenance and repair, plumbing and general assembly tasks</li></ul>",
          "delivery_days": "",
          "express_delivery_days": "",
          "express_delivery_price": "0.00",
          "discount": "5",
          "meta_keywords": "",
          "meta_description": "Shop wrench online in Nepal. Visit our website for more wrench available.",
          "meta_title": "Adjustible wrench at the best price online in Nepal.",
          "hot_deal": null,
          "warrenty": null,
          "hpxpress": null,
          "view_count": "60",
          "video_link": null,
          "is_blocked": "0",
          "is_ask_price": "0"
        }
      ],
      "recently_view_product": [
        {
          "id": 1790,
          "product_cat_id": "324",
          "sup_id": "5",
          "name": "demo1",
          "description": "<p>s</p>",
          "cover_image": "2024-05-15-10-13-31_wfeJFUs9Vwproduct.jpg",
          "model_no": "Culpa eos cupidatat",
          "old_price": "816",
          "price": "804.00",
          "xtraAttribute": "",
          "weight": "20.00",
          "quantity": "1",
          "status": "featured",
          "slug": "demo1",
          "created_at": "2021-09-01T23:44:54.000000Z",
          "updated_at": "2024-05-15T07:11:26.000000Z",
          "brand_id": "87",
          "group_category_id": null,
          "clearanceSale": "1",
          "specification": "<p>d</p>",
          "delivery_days": "",
          "express_delivery_days": "",
          "express_delivery_price": "0.00",
          "discount": "1",
          "meta_keywords": "Ea enim qui eum ut",
          "meta_description": "Reiciendis provident",
          "meta_title": "Dolor vitae fuga Cu",
          "hot_deal": "",
          "warrenty": "1",
          "hpxpress": "",
          "view_count": "99",
          "video_link": "x91MPoITQ3I",
          "is_blocked": "0",
          "is_ask_price": "0"
        }
      ],
      "voucherlist": [
        {
          "id": 34,
          "coupon_name": "new",
          "coupon_code": "mZoJX6638A6557AB2E",
          "discount_type": "percentage",
          "discount_value": "15",
          "max_discount_value": "200",
          "description": null,
          "usage_limit_coupon": "1",
          "usage_limit_user": "1",
          "use_count": "22",
          "min_order": "400",
          "expire_date": "2024-05-23T18:15:00.000000Z",
          "show_on_product": "1",
          "show_on_cart": "1",
          "applicable_area": "all",
          "status": "active",
          "created_at": "2024-05-06T04:00:10.000000Z",
          "updated_at": "2024-05-08T21:54:55.000000Z"
        },
        {
          "id": 35,
          "coupon_name": "test coupon",
          "coupon_code": "test_coupon",
          "discount_type": "percentage",
          "discount_value": "10",
          "max_discount_value": "50",
          "description": null,
          "usage_limit_coupon": "1",
          "usage_limit_user": "5",
          "use_count": "1",
          "min_order": "100",
          "expire_date": "2024-06-07T18:15:00.000000Z",
          "show_on_product": "1",
          "show_on_cart": "1",
          "applicable_area": "all",
          "status": "active",
          "created_at": "2024-05-07T05:15:51.000000Z",
          "updated_at": "2024-05-07T23:18:38.000000Z"
        }
      ],
      "brand_product": []
    }
  }
};