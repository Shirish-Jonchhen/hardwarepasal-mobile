import 'package:equatable/equatable.dart';

class SearchFilterParams extends Equatable{
  final String searchText;
  final int? sortBy;
  final String? lowRange;
  final String? highRange;
  final String? discount;
  final String? brand;
  final String? brandSearch;

  const SearchFilterParams(
    {required this.searchText, this.sortBy, this.lowRange, this.highRange, this.discount, this.brand, this.brandSearch}
  );

  @override
  List<Object?> get props => [searchText, sortBy, lowRange, highRange, discount, brand, brandSearch];
}