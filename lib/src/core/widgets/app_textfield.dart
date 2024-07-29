import 'package:flutter/material.dart';
import 'package:hardwarepasal/src/core/themes/app_colors.dart';
import 'package:hardwarepasal/src/core/themes/app_styles.dart';
import 'package:icons_plus/icons_plus.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.label,
    this.hintText,
    this.errorText,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.enabled = true,
    this.onObscureText,
    this.onChanged,
  }) : super(key: key);

  final String label;
  final String? hintText;
  final String? errorText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final VoidCallback? onObscureText;
  final Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    final double scHeight = MediaQuery.of(context).size.height;
    final double scWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          height: 0.068 * scHeight,
          child: TextFormField(
            controller: controller,
            enabled: enabled,
            keyboardType: keyboardType,
            obscureText: obscureText,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0.032 * scWidth,
                vertical: 0.022 * scHeight,
              ),
// label: Text(label, style: AppStyles.text14Px.textGrey,),
              hintText: hintText,
              hintStyle: AppStyles.text14PxRegular.copyWith(
                color: AppColor.textGrey,
              ),
              suffixIcon: onObscureText != null
                  ? IconButton(
                      onPressed: onObscureText,
                      icon: Icon(
                        obscureText
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: errorText != null
                            ? AppColor.errorColor
                            : AppColor.textGrey,
                      ),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: AppColor.borderGrey),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: errorText != null
                      ? AppColor.errorColor
                      : AppColor.textGrey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  color: errorText != null
                      ? AppColor.errorColor
                      : AppColor.appColor,
                ),
              ),
            ),
            style: AppStyles.text14PxMedium.copyWith(
              color: AppColor.textDarkColor,
            ),
            onChanged: onChanged,
          ),
        ),
        SizedBox(
          height: scHeight * 0.007,
        ),
        errorText != null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(Icons.error, color: AppColor.errorColor, size: 12),
                  SizedBox(
                    width: scWidth * 0.01,
                  ),
                  Text(errorText ?? "",
                      style: AppStyles.text12PxMedium.copyWith(
                        color: AppColor.errorColor,
                      )),
                ],
              )
            : Container(),
      ],
    );
  }
}
