import 'package:equatable/equatable.dart';

class CategoryWiseProductsParams extends Equatable{
  final String slug;
  final int page;
  final String? sub_cat_id;
  final String? search;
  final String? sortBy;
  final List<String>? Range;
  final String? discount;
  final String? brand;
  final String? brandSearch;

  const CategoryWiseProductsParams({
    required this.slug,
    required this.page,
    this.sub_cat_id,
    this.search,
    this.sortBy,
    this.Range,
    this.discount,
    this.brand,
    this.brandSearch,
  });

  @override
  List<Object?> get props => [slug,page, sub_cat_id, search, sortBy, Range, discount, brand, brandSearch];
}