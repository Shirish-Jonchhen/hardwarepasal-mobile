import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hardwarepasal/src/core/helpers/snackbar_helper.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/params/post_review_params.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/domain/entity/usecase/post_review_usecase.dart';
import 'package:hardwarepasal/src/feature/item_detail_screen/presentation/cubit/item_details_cubit.dart';
import 'package:injectable/injectable.dart';


import '../../data/models/add_to_cart_model/add_to_cart_model.dart';
import '../../data/models/post_review_response_model/post_review_response_model.dart';
import '../../domain/entity/params/add_to_cart_params.dart';
import '../../domain/entity/usecase/add_to_cart_usecase.dart';

part 'post_review_state.dart';
part 'post_review_cubit.freezed.dart';

@injectable
class PostReviewCubit extends Cubit<PostReviewState>{
  final PostReviewUsecase _postReviewUsecase;

  PostReviewCubit(this._postReviewUsecase) : super(PostReviewState.initial());

  void postReview({required String slug, required int stars, String? descriptions, required BuildContext context}) async {
    emit(PostReviewState.loading());
    final response = await _postReviewUsecase.call(PostReviewParams(slug: slug, stars: stars, description: descriptions));
    response.fold(
          (l) => l.when(
        serverError: (message) => PostReviewState.error(message: message),
        noInternet: () => const PostReviewState.noInternet(),
      ),
          (r){
            SnackBarHelper.showSnackBar(message: "Review Posted", context: context);
            emit(PostReviewState.success(data: r.data!));
          },
    );
  }

}