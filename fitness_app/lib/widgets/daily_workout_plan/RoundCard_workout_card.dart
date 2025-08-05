import 'package:fitness_app/utils/fonts/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:go_router/go_router.dart';

class RoundCard extends StatelessWidget {
  final String roundText;

  const RoundCard({super.key, required this.roundText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320.w, // Match white card background
      height: 200.h, // Increased height to prevent overflow
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Round Text
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: 8.h,
            ), // Reduced padding slightly
            alignment: Alignment.center,
            child: Text(
              roundText,
              style: AppTextStyles.recommended.copyWith(
                color: AppColors.darkGrey,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          // First Exercise Row
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 8.h,
            ), // Adjusted padding
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Exercise Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    'assets/images/img_daily_workout_plan_02.png',
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 50.w,
                        height: 50.h,
                        color: Colors.grey[800],
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.grey[600],
                          size: 25.w,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                // Exercise Text and Reps
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Side Stretch Left',
                        style: AppTextStyles.button.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.darkGrey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(height: 4.h), // Reduced for tighter layout
                      Text(
                        '3x',
                        style: AppTextStyles.button.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkGrey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                // Play Button
                Container(
                  padding: EdgeInsets.all(5.w),
                  child: ClipOval(
                    child: GestureDetector(
                      onTap: () {
                        context.go(
                          '/workout_session',
                        ); // Navigate to workout session
                      },
                      child: Image.asset(
                        'assets/icons/icon_red_play_button.png',
                        width: 30.w,
                        height: 30.h,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 30.w,
                            height: 30.h,
                            color: Colors.grey[800],
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey[600],
                              size: 20.w,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Second Exercise Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Exercise Image
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.asset(
                    'assets/images/img_daily_workout_plan_02.png',
                    width: 50.w,
                    height: 50.h,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        width: 50.w,
                        height: 50.h,
                        color: Colors.grey[800],
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.grey[600],
                          size: 25.w,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(width: 12.w),
                // Exercise Text and Reps
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Side Stretch Right',
                        style: AppTextStyles.button.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.darkGrey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '3x',
                        style: AppTextStyles.button.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkGrey,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                // Play Button
                Container(
                  padding: EdgeInsets.all(5.w),
                  child: ClipOval(
                    child: GestureDetector(
                      onTap: () {
                        context.go(
                          '/workout_session',
                        ); // Navigate to workout session
                      },
                      child: Image.asset(
                        'assets/icons/icon_red_play_button.png',
                        width: 30.w,
                        height: 30.h,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            width: 30.w,
                            height: 30.h,
                            color: Colors.grey[800],
                            child: Icon(
                              Icons.image_not_supported,
                              color: Colors.grey[600],
                              size: 20.w,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
