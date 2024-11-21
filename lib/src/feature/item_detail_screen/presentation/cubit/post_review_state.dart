part of 'post_review_cubit.dart';


@freezed
class PostReviewState with _$PostReviewState {
  const factory PostReviewState.initial() = _Initial;
  const factory PostReviewState.loading() = _Loading;
  const factory PostReviewState.error({required String message}) = _Error;
  const factory PostReviewState.noInternet() = _NoInternet;
  const factory PostReviewState.success({required PostReviewResponseModel data}) = _Success;
}
