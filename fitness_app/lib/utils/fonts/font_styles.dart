import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  static TextStyle title = GoogleFonts.alatsi(
    fontSize: 22.sp.clamp(18.sp, 24.sp),
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    height: 1.2,
    letterSpacing: 0.5,
    decoration: TextDecoration.none,
  );

  static TextStyle button = GoogleFonts.alatsi(
    fontSize: 15.sp.clamp(13.sp, 17.sp),
    fontWeight: FontWeight.w500,
    color: AppColors.white,
    height: 1.1,
    letterSpacing: 0.2,
    decoration: TextDecoration.none,
  );

  static TextStyle recommended = GoogleFonts.alatsi(
    fontSize: 18.sp.clamp(15.sp, 20.sp),
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    height: 1.3,
    letterSpacing: 0.3,
    decoration: TextDecoration.none,
  );

  static TextStyle label = GoogleFonts.alatsi(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.white.withOpacity(0.5),
    height: 1.0,
    decoration: TextDecoration.none,
  );

  static TextStyle value = GoogleFonts.alatsi(
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    height: 1.0,
    decoration: TextDecoration.none,
  );
}
