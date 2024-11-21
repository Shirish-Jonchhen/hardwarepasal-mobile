import 'package:equatable/equatable.dart';

class PostReviewParams extends Equatable{
  final String slug;
  final int stars;
  final String? description;

  const PostReviewParams({
    required this.slug,
    required this.stars,
    this.description,
  });

  @override
  List<Object?> get props => [slug, stars, description];
}