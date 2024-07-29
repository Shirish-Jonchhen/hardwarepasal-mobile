import 'package:equatable/equatable.dart';

class SearchParams extends Equatable{
  final String keyword;

  const SearchParams({
    required this.keyword,
  });

  @override
  List<Object?> get props => [keyword];
}