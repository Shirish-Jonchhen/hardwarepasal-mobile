import 'package:equatable/equatable.dart';

class ItemDetailParams extends Equatable {
  final String slug;


  const ItemDetailParams({
    required this.slug,

  });

  @override
  List<Object?> get props => [slug];
}