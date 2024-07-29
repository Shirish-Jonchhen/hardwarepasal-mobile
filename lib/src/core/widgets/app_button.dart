import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:google_fonts/google_fonts.dart';

import 'package:hardwarepasal/src/core/themes/app_colors.dart';

class CustomButton extends StatelessWidget {
  /// [title] argument is required
  const CustomButton({
    Key? key,
    this.title,
    this.onPressed,
    this.titleStyle,
    this.backgroundColor = AppColor.appColor,
    this.shape,
    required this.width,
    this.height = 45,
    this.loading = false,
    this.isDisabled = false,
    this.icon,
    this.elevation = 0,
    this.gap = 17,
    this.splashColor,
    this.textcolor,
    required this.horizontal,
  }) : super(key: key);

  final String? title;
  final Widget? icon;

  final double gap;

  final double elevation;

  final VoidCallback? onPressed;

  final Color? textcolor;

  /// [titleStyle] is used to style the button text
  final TextStyle? titleStyle;

  /// [gradient] for enabled state of button
  final Color backgroundColor;

  /// [shape] is used to apply border radius on button,
  final ShapeBorder? shape;

  /// [width] button width, defaults is 140
  final double width;

  /// [height] button height, defaults is 44
  final double height;

  /// [loading] is used to display circular progress indicator on loading event, default is false
  final bool loading;
  final double horizontal;

  /// [isDisabled] is used to disable to button, default is true
  final bool isDisabled;

  final Color? splashColor;

  ShapeBorder get _shape =>
      shape ?? RoundedRectangleBorder(borderRadius: BorderRadius.circular(5));

  BoxConstraints get _constraints =>
      BoxConstraints.tightFor(width: width, height: height);

  Color get _splashColor => AppColor.whiteColor.withOpacity(0.4);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: Material(
        type: MaterialType.card,
        clipBehavior: Clip.antiAlias,
        color: isDisabled ? AppColor.grey : backgroundColor,
        shape: _shape,
        elevation: elevation,
        shadowColor: Colors.black,
        child: InkWell(
          splashColor: _splashColor,
          onTap: isDisabled || loading
              ? null
              : () {
                  onPressed?.call();
                },
          child: ConstrainedBox(
            constraints: _constraints,
            child: Ink(
              decoration: ShapeDecoration(
                shape: _shape,
                color: isDisabled ? AppColor.grey : backgroundColor,
              ),
              child: loading
                  ? const Center(
                      child: SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(color: Colors.white),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        if (icon != null) ...[
                          icon!,
                          if (title != null) gap.horizontalSpace,
                        ],
                        if (title != null)
                          Text(
                            title!,
                            style: GoogleFonts.inter(
                                fontSize: 14.sp,
                                color: textcolor ?? Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
