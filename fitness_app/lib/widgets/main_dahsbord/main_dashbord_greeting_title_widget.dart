import 'package:fitness_app/utils/fonts/font_styles.dart';
import 'package:flutter/material.dart';


class GreetingTitleWidget extends StatelessWidget {
  final double top;
  final double left;
  final double maxWidth;
  final double maxHeight;
  final bool isSmallScreen;

  const GreetingTitleWidget({
    super.key,
    required this.top,
    required this.left,
    required this.maxWidth,
    required this.maxHeight,
    required this.isSmallScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: maxWidth,
          maxHeight: maxHeight,
        ),
        child: Text(
          'Hello Jenna,\nLets start exercising',
          style: AppTextStyles.title.copyWith(
            fontSize: isSmallScreen
                ? AppTextStyles.title.fontSize! * 0.9
                : AppTextStyles.title.fontSize,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
        ),
      ),
    );
  }
}