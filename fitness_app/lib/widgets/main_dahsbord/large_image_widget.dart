import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LargeImageWidget extends StatelessWidget {
  final String imagePath;
  final double width;
  final double height;
  final String titleText;
  final String buttonText;

  const LargeImageWidget({
    super.key,
    required this.imagePath,
    required this.width,
    required this.height,
    required this.titleText,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((width * 0.03).clamp(8.r, 12.r)),
      child: Stack(
        children: [
          Image.asset(
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
                    (width * 0.03).clamp(8.r, 12.r),
                  ),
                ),
                child: Icon(
                  Icons.image_not_supported,
                  color: Colors.grey[600],
                  size: width * 0.15,
                ),
              );
            },
          ),
          Positioned(
            top: 32.h,
            left: 82.w,
            child: Text(
              titleText,
              style: GoogleFonts.alatsi(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                height: 1.0,
                letterSpacing: 0,
                color: AppColors.white,
                textStyle: const TextStyle(decoration: TextDecoration.none),
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Positioned(
            top: 32.h + 16.sp + 17.h,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              child: Text(
                buttonText,
                style: GoogleFonts.alatsi(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  height: 1.0,
                  letterSpacing: 0,
                  color: AppColors.white,
                  textStyle: const TextStyle(decoration: TextDecoration.none),
                ),
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}