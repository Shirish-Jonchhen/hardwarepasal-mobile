import '../../feature/item_detail_screen/data/models/product_review_model/product_review_model.dart';

class CounterHelper {
  static String calculateAvgReview(List<ProductReviewModel> reviews) {
    double total = 0;
    for (ProductReviewModel review in reviews) {
      total += review.stars!;
    }

    if (reviews.isEmpty) {
      return '0.0';
    }
    return (total / reviews.length).toStringAsFixed(2);
  }

  static double countNoOfRating(
      List<ProductReviewModel> reviews, String rating) {
    double count = 0;
    for (ProductReviewModel review in reviews) {
      if (review.stars == double.parse(rating)) {
        count++;
      }
    }
    return count;
  }
}
