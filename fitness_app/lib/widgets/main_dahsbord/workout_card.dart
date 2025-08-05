import 'package:fitness_app/utils/fonts/font_styles.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class WorkoutCard extends StatelessWidget {
  final String imagePath;
  final Color buttonBackgroundColor;
  final double buttonTop;
  final double imageWidth;
  final double imageHeight;
  final String route;

  const WorkoutCard({
    super.key,
    required this.imagePath,
    required this.buttonBackgroundColor,
    required this.buttonTop,
    required this.imageWidth,
    required this.imageHeight,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.r),
          child: Image.asset(
            imagePath,
            width: imageWidth,
            height: imageHeight,
            fit: BoxFit.cover,
            opacity: const AlwaysStoppedAnimation(1.0),
          ),
        ),
        Positioned(
          top: buttonTop,
          left: (imageWidth - 91.w) / 2, // Center button horizontally
          child: ElevatedButton(
            onPressed: () {
              context.go(route);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonBackgroundColor,
              minimumSize: Size(91.w, 22.h),
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            child: Text(
              'Start',
              style: AppTextStyles.button,
            ),
          ),
        ),
      ],
    );
  }
}