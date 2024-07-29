import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  const AppStyles._();

  static String? get fontFamily => GoogleFonts.inter().fontFamily;

  //light
  static TextStyle get text30PxLight => TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w300,
        fontFamily: fontFamily,
      );

  static TextStyle get text26PxLight => TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w300,
        fontFamily: fontFamily,
      );

  static TextStyle get text24PxLight => TextStyle(
    fontSize: 24.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get text20PxLight => TextStyle(
    fontSize: 20.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get text18PxLight => TextStyle(
    fontSize: 18.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get text16PxLight => TextStyle(
    fontSize: 16.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get text14PxLight => TextStyle(
    fontSize: 14.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  static TextStyle get text12PxLight => TextStyle(
    fontSize: 12.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w300,
      );

  //regular
  static TextStyle get text30PxRegular => TextStyle(
    fontSize: 30.sp,
        fontFamily: fontFamily,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text26PxRegular => TextStyle(
    fontSize: 26.sp,
        fontWeight: FontWeight.w400,
        fontFamily: fontFamily,
      );

  static TextStyle get text24PxRegular => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text20PxRegular => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text18PxRegular => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text16PxRegular => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text14PxRegular => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get text12PxRegular => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
      );

//medium

  static TextStyle get text30PxMedium => TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text26PxMedium => TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text24PxMedium => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text20PxMedium => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text18PxMedium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text16PxMedium => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text14PxMedium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text12PxMedium => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get text10PxMedium => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w500,
      );

//semi bold

  static TextStyle get text30PxSemiBold => TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text26PxSemiBold => TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text24PxSemiBold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text20PxSemiBold => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text18PxSemiBold => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text16PxSemiBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text14PxSemiBold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text12PxSemiBold => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get text10PxSemiBold => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w600,
      );

  //bold
  static TextStyle get text30PxBold => TextStyle(
        fontSize: 30.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text26PxBold => TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text24PxBold => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text20PxBold => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text18PxBold => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text16PxBold => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text14PxBold => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text12PxBold => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get text10PxBold => TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
      );
}

double calculateSpacing(double em) {
  return 16 * em;
}
