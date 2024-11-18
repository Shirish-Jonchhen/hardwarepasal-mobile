import 'package:flutter/material.dart';

import '../../../../core/helpers/couter_helper.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_styles.dart';
import '../../../../core/widgets/app_texts.dart';
import '../../data/models/product_review_model/product_review_model.dart';
import 'app_review_card.dart';

class AppReviewSection extends StatelessWidget {
  const AppReviewSection({super.key, required this.reviews});
  final List<ProductReviewModel> reviews;

  @override
  Widget build(BuildContext context) {
    final double scHeight = MediaQuery.of(context).size.height;
    final double scWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: 0.029 * scWidth),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 0.01 * scHeight,
            ),

            //title
            Row(
              children: [
                Texts(
                  texts: "Ratings and Reviews",
                  textStyle: AppStyles.text12PxRegular,
                ),
                const Spacer(),
                Row(
                  children: [
                    Texts(
                      texts: "Write a Review",
                      textStyle: AppStyles.text12PxRegular
                          .copyWith(color: AppColor.appColor),
                    ),
                    SizedBox(
                      width: 0.01 * scWidth,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: AppColor.appColor,
                      size: 0.03 * scWidth,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 0.009 * scHeight,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: AppColor.textGrey.withOpacity(0.1),
            ),
            SizedBox(
              height: 0.014 * scHeight,
            ),

            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 0.021 * scWidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "${CounterHelper.calculateAvgReview(reviews)}",
                              style: AppStyles.text30PxSemiBold
                                  .copyWith(fontSize: 40),
                            ),
                            SizedBox(
                              width: 0.018 * scWidth,
                            ),
                            Texts(
                              texts: "(${reviews.length})",
                              textStyle: AppStyles.text12PxRegular
                                  .copyWith(
                                color: AppColor.textGrey,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 0.009 * scHeight,
                        ),
                        const Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.star,
                              color: AppColor.appColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.appColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.appColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.appColor,
                            ),
                            Icon(
                              Icons.star,
                              color: AppColor.appColor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.009 * scHeight,
                        ),
                        Texts(
                          texts: "${reviews.length} Comments",
                          textStyle:
                          AppStyles.text12PxRegular.copyWith(
                            color: AppColor.textGrey,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 0.098 * scWidth,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "5",
                              style: AppStyles.text12PxRegular,
                            ),
                            SizedBox(
                              width: 0.019 * scWidth,
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: reviews.isNotEmpty? CounterHelper.countNoOfRating(reviews, "5.00")/reviews.length : 0 ,
                                backgroundColor: AppColor.textGrey
                                    .withOpacity(0.1),
                                color: AppColor.appColor,
                                borderRadius:
                                BorderRadius.circular(17.87),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.014 * scHeight,
                        ),
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "4",
                              style: AppStyles.text12PxRegular,
                            ),
                            SizedBox(
                              width: 0.019 * scWidth,
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: reviews.isNotEmpty? CounterHelper.countNoOfRating(reviews, "4.00")/reviews.length : 0,
                                backgroundColor: AppColor.textGrey
                                    .withOpacity(0.1),
                                color: AppColor.appColor,
                                borderRadius:
                                BorderRadius.circular(17.87),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.014 * scHeight,
                        ),
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "3",
                              style: AppStyles.text12PxRegular,
                            ),
                            SizedBox(
                              width: 0.019 * scWidth,
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: reviews.isNotEmpty? CounterHelper.countNoOfRating(reviews, "3.00")/reviews.length : 0,
                                backgroundColor: AppColor.textGrey
                                    .withOpacity(0.1),
                                color: AppColor.appColor,
                                borderRadius:
                                BorderRadius.circular(17.87),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.014 * scHeight,
                        ),
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "2",
                              style: AppStyles.text12PxRegular,
                            ),
                            SizedBox(
                              width: 0.019 * scWidth,
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: reviews.isNotEmpty? CounterHelper.countNoOfRating(reviews, "2.00")/reviews.length : 0,
                                backgroundColor: AppColor.textGrey
                                    .withOpacity(0.1),
                                color: AppColor.appColor,
                                borderRadius:
                                BorderRadius.circular(17.87),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.014 * scHeight,
                        ),
                        Row(
                          crossAxisAlignment:
                          CrossAxisAlignment.center,
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          children: [
                            Text(
                              "1",
                              style: AppStyles.text12PxRegular,
                            ),
                            SizedBox(
                              width: 0.019 * scWidth,
                            ),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: reviews.isNotEmpty? CounterHelper.countNoOfRating(reviews, "1.00")/reviews.length : 0,
                                backgroundColor: AppColor.textGrey
                                    .withOpacity(0.1),
                                color: AppColor.appColor,
                                borderRadius:
                                BorderRadius.circular(17.87),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 0.014 * scHeight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 0.009 * scHeight,
            ),
            Container(
              height: 1,
              width: double.infinity,
              color: AppColor.textGrey.withOpacity(0.1),
            ),
            SizedBox(
              height: 0.014 * scHeight,
            ),
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: (reviews.length >= 3)? 3 : reviews.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return AppReviewCard(reviewModel: reviews[index]);
              },
              separatorBuilder:
                  (BuildContext context, int index) {
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(
                    vertical: 0.019 * scHeight,
                  ),
                  child: Container(
                    height: 1,
                    width: double.infinity,
                    color: AppColor.textGrey.withOpacity(0.1),
                  ),
                );
              },
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(
                vertical: 0.019 * scHeight,
              ),
              child: Container(
                height: 1,
                width: double.infinity,
                color: AppColor.textGrey.withOpacity(0.1),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Texts(
                  texts: reviews.isEmpty?"No Reviews": "View All",
                  textStyle: AppStyles.text12PxRegular
                      .copyWith(color: reviews.isEmpty? AppColor.errorColor :AppColor.appColor),
                ),

                if(reviews.isNotEmpty)
                SizedBox(
                  width: 0.01 * scWidth,
                ),
                if(reviews.isNotEmpty)
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.appColor,
                  size: 0.03 * scWidth,
                )
              ],
            ),

            //highlights

            SizedBox(
              height: 0.016 * scHeight,
            ),
          ],
        ),
      ),
    );
  }


}
