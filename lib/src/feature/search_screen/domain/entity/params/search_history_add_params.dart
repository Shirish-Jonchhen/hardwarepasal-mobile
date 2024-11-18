import 'package:equatable/equatable.dart';

class SearchHistoryAddParams extends Equatable{
  final String searchText;


  const SearchHistoryAddParams(
      {required this.searchText,}
      );

  @override
  List<Object?> get props => [searchText];
}