import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:fitness_app/utils/fonts/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DailyProgressSummary extends StatelessWidget {
  const DailyProgressSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF6C0B0B), // Dark red
                  Color(0xFF000000), // Black
                ],
              ),
            ),
          ),

          // Back arrow icon
          Positioned(
            top: 34.h,
            left: 23.w,
            child: GestureDetector(
              onTap: () => context.go('/workout'),
              child: SizedBox(
                width: 12.w,
                height: 24.h,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: AppColors.white,
                  size: 12.w,
                ),
              ),
            ),
          ),

          // Title: "Daily Progress"
          Positioned(
            top: 58.h,
            left: 49.w,
            child: SizedBox(
              width: 261.w,
              height: 26.h,
              child: Text(
                'Daily Progress',
                textAlign: TextAlign.center,
                style: AppTextStyles.title,
              ),
            ),
          ),

          // Main image
          Positioned(
            top: 91.h,
            left: 94.w,
            child: Image.asset(
              'assets/images/img_daily_process_summery.png',
              width: 281.w,
              height: 721.h,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                width: 281.w,
                height: 721.h,
                color: Colors.grey[800],
                child: Icon(
                  Icons.image_not_supported,
                  color: Colors.grey[600],
                  size: 30.w,
                ),
              ),
            ),
          ),

          // 05:85 (time value)
          Positioned(
            top: 375.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('05:85', style: AppTextStyles.value),
            ),
          ),

          // Time Spent (label)
          Positioned(
            top: 401.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Time Spent', style: AppTextStyles.label),
            ),
          ),

          // 850 (heart rate value)
          Positioned(
            top: 449.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('850', style: AppTextStyles.value),
            ),
          ),

          // Heart Rate (label)
          Positioned(
            top: 475.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Heart Rate', style: AppTextStyles.label),
            ),
          ),

          // 1200 (calories value)
          Positioned(
            top: 515.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('1200', style: AppTextStyles.value),
            ),
          ),

          // Calories (label)
          Positioned(
            top: 541.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('Calories', style: AppTextStyles.label),
            ),
          ),

          // Steps (value)
          Positioned(
            top: 585.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('steps', style: AppTextStyles.value),
            ),
          ),

          // Steps (label)
          Positioned(
            top: 611.h,
            left: 29.w,
            child: SizedBox(
              width: 65.w,
              height: 15.h,
              child: Text('steps', style: AppTextStyles.label),
            ),
          ),

          // Black rectangle at bottom
          Positioned(
            top: 739.h,
            left: 0,
            child: Container(width: 375.w, height: 73.h, color: Colors.black),
          ),

          // Clock icon
          Positioned(
            top: 771.h,
            left: 62.w,
            child: Image.asset(
              'assets/icon/icon_clock.png',
              width: 26.w,
              height: 29.h,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.access_time, color: Colors.white, size: 26.w),
            ),
          ),

          // Location icon
          Positioned(
            top: 765.h,
            left: 240.w,
            child: Image.asset(
              'assets/icon/icon_location.png',
              width: 38.w,
              height: 32.h,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.location_on, color: Colors.white, size: 38.w),
            ),
          ),

          // "2hrs" text inside black rectangle
          Positioned(
            top: 774.h,
            left: 102.w,
            child: SizedBox(
              width: 65.w,
              height: 26.h,
              child: Text('2hrs', style: AppTextStyles.value),
            ),
          ),

          // "5km" text inside black rectangle
          Positioned(
            top: 774.h,
            left: 284.w,
            child: SizedBox(
              width: 45.w,
              height: 26.h,
              child: Text('5km', style: AppTextStyles.value),
            ),
          ),
        ],
      ),
    );
  }
}
