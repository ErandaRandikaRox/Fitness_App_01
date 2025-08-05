import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:fitness_app/utils/fonts/font_styles.dart';
import 'package:fitness_app/widgets/daily_workout_plan/RoundCard_workout_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DailyWorkoutPlan extends StatelessWidget {
  const DailyWorkoutPlan({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Calculate total height dynamically
    final double contentHeight =
        683.h +
        200.h +
        20.h; // Last RoundCard position + height + bottom padding
    final double minHeight = screenHeight;
    final double totalHeight = contentHeight > minHeight
        ? contentHeight
        : minHeight;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: screenWidth, // Use screen width instead of fixed 375.w
          height: totalHeight, // Ensure sufficient height for all content
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // Background Image
              Positioned(
                top: 0.h,
                left: 0.w,
                child: Image.asset(
                  'assets/images/img_daily_workout_plan_01.png',
                  width: screenWidth,
                  height: 348.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: screenWidth,
                      height: 348.h,
                      color: Colors.grey[800],
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.grey[600],
                        size: 50.w,
                      ),
                    );
                  },
                ),
              ),
              // Back Button Icon
              Positioned(
                top: 34.h,
                left: 23.w,
                child: GestureDetector(
                  onTap: () {
                    print('Back button tapped'); 
                    context.go(
                      '/dashboard',
                    ); // Ensure '/dashboard' is defined in GoRouter
                    // Alternative: Navigator.pop(context); // Uncomment to use Navigator instead
                  },
                  child: Container(
                    padding: EdgeInsets.all(10.w), 

                    child: Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.white,
                      size: 12.w,
                    ),
                  ),
                ),
              ),
              // Full Body Workout Text
              Positioned(
                top: 302.h,
                left: 12.w,
                child: SizedBox(
                  width: 180.w,
                  height: 26.h,
                  child: Text(
                    'Full Body Workout',
                    style: AppTextStyles.title,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ),
              // Buttons Row
              Positioned(
                top: 363.h,
                left: 12.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildButton('Cardio'),
                    SizedBox(width: 8.w),
                    _buildButton('Boxing'),
                    SizedBox(width: 8.w),
                    _buildButton('Zumba'),
                    SizedBox(width: 8.w),
                    _buildButton('Hiking'),
                  ],
                ),
              ),
              // Start Training Button
              Positioned(
                top: 416.h,
                left: 14.w,
                child: SizedBox(
                  width: 295.w,
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {
                      context.go('/workout_session');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.darkRed,
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 2.h,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      minimumSize: Size(295.w, 40.h),
                      elevation: 0,
                    ),
                    child: Text(
                      'Start Training',
                      style: AppTextStyles.button,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ),
              ),
              // Red Background Image
              Positioned(
                top: 406.h,
                left: 310.w,
                child: Image.asset(
                  'assets/icons/icon_red_background.png',
                  width: 60.w,
                  height: 60.h,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 60.w,
                      height: 60.h,
                      color: Colors.grey[800],
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.grey[600],
                        size: 30.w,
                      ),
                    );
                  },
                ),
              ),
              // Play Button Icon
              Positioned(
                top: 418.h,
                left: 323.w,
                child: GestureDetector(
                  onTap: () {
                    context.go('/progress');
                  },
                  child: Container(
                    padding: EdgeInsets.all(5.w),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/icons/icon_play_button.png',
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
              ),
              // First White Card Background
              Positioned(
                top: 473.h,
                left: 27.5.w,
                child: Container(
                  width: 320.w,
                  height: 200.h, // Match RoundCard height
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
              // Second White Card Background
              Positioned(
                top: 683.h, // Adjusted for 30px gap (473.h + 200.h + 30.h)
                left: 27.5.w,
                child: Container(
                  width: 320.w,
                  height: 200.h, // Match RoundCard height
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
              // Round 01 Card
              Positioned(
                top: 473.h,
                left: 27.5.w,
                child: const RoundCard(roundText: 'Round 01'),
              ),
              // Round 02 Card
              Positioned(
                top: 683.h, // Adjusted for 30px gap (473.h + 200.h + 30.h)
                left: 27.5.w,
                child: const RoundCard(roundText: 'Round 02'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(String label) {
    return SizedBox(
      width: 82.w,
      height: 27.h,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.redAccent,
          padding: EdgeInsets.fromLTRB(25.w, 7.h, 25.w, 7.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          minimumSize: Size(82.w, 27.h),
          elevation: 0,
        ),
        child: Text(
          label,
          style: AppTextStyles.button.copyWith(fontSize: 10.sp),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}
