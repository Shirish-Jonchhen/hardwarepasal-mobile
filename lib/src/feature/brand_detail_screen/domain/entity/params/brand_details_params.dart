import 'package:equatable/equatable.dart';

class BrandDetailsParams extends Equatable{
  final String slug;
  final int page;
  final List<String>? Range;
  final String? discount;

  const BrandDetailsParams({
    required this.slug,
    required this.page,
    this.Range,
    this.discount,
  });

  @override
  List<Object?> get props => [slug , page, Range, discount];
}