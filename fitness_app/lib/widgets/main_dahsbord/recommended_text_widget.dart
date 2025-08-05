import 'package:fitness_app/utils/fonts/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendedTextWidget extends StatelessWidget {
  final double top;
  final double left;
  final bool isSmallScreen;

  const RecommendedTextWidget({
    super.key,
    required this.top,
    required this.left,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 250.w,
          maxHeight: 25.h,
        ),
        child: Text(
          'Recommended for you',
          style: AppTextStyles.recommended.copyWith(
            fontSize: isSmallScreen
                ? AppTextStyles.recommended.fontSize! * 0.9
                : AppTextStyles.recommended.fontSize,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
    );
  }
}