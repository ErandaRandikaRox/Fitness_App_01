import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SmallImageWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;

  const SmallImageWidget({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((width * 0.08).clamp(8.r, 12.r)),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(
                (width * 0.08).clamp(8.r, 12.r),
              ),
            ),
            child: Icon(
              Icons.image_not_supported,
              color: Colors.grey[600],
              size: width * 0.3,
            ),
          );
        },
      ),
    );
  }
}