import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_styles.dart';

class SnackBarHelper {
  static void showSnackBar({required String message, bool isError = false, required BuildContext context}) {
    ScaffoldMessenger.of(context)
        .showSnackBar(
      SnackBar(
        content: Row(
          children: [
            isError
                ? const Icon(
              Icons.error_outline,
              color: AppColor.whiteColor,
            )
                : const Icon(
              Icons.check_circle_outline,
              color: AppColor.whiteColor,
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              message,
              style: AppStyles.text14PxSemiBold.copyWith(
                color: AppColor.whiteColor,
              ),
            ),
          ],
        ),
        backgroundColor: isError ? AppColor.errorColor : AppColor.successColor,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }
}