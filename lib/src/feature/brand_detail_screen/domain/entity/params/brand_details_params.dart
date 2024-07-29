import 'package:equatable/equatable.dart';

class BrandDetailsParams extends Equatable{
  final String slug;

  const BrandDetailsParams({
    required this.slug,
  });

  @override
  List<Object?> get props => [slug];
}