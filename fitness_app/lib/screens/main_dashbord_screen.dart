import 'package:fitness_app/widgets/main_dahsbord/main_dashbord_greeting_title_widget.dart';
import 'package:fitness_app/widgets/main_dahsbord/maindashbord_large_image_column_widget.dart';
import 'package:fitness_app/widgets/main_dahsbord/recommended_text_widget.dart';
import 'package:fitness_app/widgets/main_dahsbord/small_image_row_widget.dart';
import 'package:fitness_app/widgets/main_dahsbord/workout_cards_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainDashboardScreen extends StatelessWidget {
  const MainDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Enhanced responsive breakpoints
    final bool isSmallScreen = screenWidth < 360;
    final bool isMediumScreen = screenWidth >= 360 && screenWidth < 414;
    final bool isShortScreen = screenHeight < 600;
    final bool isTallScreen = screenHeight > 800;

    // Responsive paddings with better scaling
    final double horizontalPadding = isSmallScreen
        ? 8.w
        : isMediumScreen
        ? 12.w
        : 16.w;
    final double verticalPadding = isShortScreen
        ? 8.h
        : isTallScreen
        ? 20.h
        : 16.h;

    // Responsive title positioning
    final double titleTop = isShortScreen
        ? 35.h
        : isTallScreen
        ? 55.h
        : 45.h;
    final double titleHeight = isShortScreen ? 45.h : 52.h;

    // Title bottom position with responsive scaling
    final double textBottom = titleTop + titleHeight;

    // Top position for main workout images with adaptive spacing
    final double imageTop =
        textBottom +
        (isShortScreen
            ? 20.h
            : isTallScreen
            ? 35.h
            : 29.h);

    // Enhanced workout card sizing with better responsive logic
    final double availableWidth = screenWidth - (2 * horizontalPadding);
    final double cardSpacing = isSmallScreen ? 15.w : 27.w;
    final double maxCardWidth = isSmallScreen ? 140.w : 159.w;
    final double imageWidth = ((availableWidth - cardSpacing) / 2).clamp(
      120.w,
      maxCardWidth,
    );

    // Responsive image height with screen ratio consideration
    final double maxImageHeight = screenHeight * (isShortScreen ? 0.25 : 0.3);
    final double baseImageHeight = isSmallScreen ? 140.h : 165.h;
    final double imageHeight = baseImageHeight.clamp(120.h, maxImageHeight);

    // Button position inside workout card - responsive to image height, moved up by increasing offset
    final double buttonTop = imageHeight - (isSmallScreen ? 40.h : 48.h);

    // Enhanced responsive positioning for recommended section
    final double recommendedTop =
        imageTop +
        imageHeight +
        (isShortScreen
            ? 25.h
            : isTallScreen
            ? 45.h
            : 35.h);

    // Left and right padding for the small images row with better scaling
    final double leftPadding = isSmallScreen ? 8.w : 12.w;
    final double rightPadding = isSmallScreen ? 8.w : 14.w;

    // Calculate dynamic width for small images with improved spacing
    final double smallImageRowWidth = screenWidth - leftPadding - rightPadding;
    final double smallImageSpacing = isSmallScreen ? 4.w : 7.w;
    final double smallImageWidth =
        (smallImageRowWidth - 2 * smallImageSpacing) / 3;
    final double smallImageHeight = isSmallScreen ? 70.h : 82.h;

    // Responsive positioning for small images
    final double smallImagesTop =
        recommendedTop + (isShortScreen ? 30.h : 37.h);

    // Large images positioning with adaptive spacing
    final double largeImagesTop =
        smallImagesTop + smallImageHeight + (isShortScreen ? 25.h : 37.h);
    final double largeImageSpacing = isShortScreen ? 25.h : 36.h;

    // Large image dimensions with responsive scaling (reduced width)
    final double largeImageWidth = (screenWidth - leftPadding - rightPadding)
        .clamp(260.w, 327.w);
    final double largeImageHeight = isSmallScreen ? 85.h : 103.h;

    // Dynamic total height calculation
    final double calculatedHeight =
        largeImagesTop + (2 * largeImageHeight) + largeImageSpacing + 50.h;
    final double minHeight = screenHeight;
    final double totalHeight = calculatedHeight > minHeight
        ? calculatedHeight
        : minHeight;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
            vertical: verticalPadding,
          ),
          child: SizedBox(
            height: totalHeight,
            child: Stack(
              children: [
                GreetingTitleWidget(
                  top: titleTop,
                  left: horizontalPadding,
                  maxWidth: (screenWidth * 0.7).clamp(180.w, 250.w),
                  maxHeight: titleHeight,
                  isSmallScreen: isSmallScreen,
                ),
                RecommendedTextWidget(
                  top: recommendedTop,
                  left: leftPadding,
                  isSmallScreen: isSmallScreen,
                ),
                SmallImageRowWidget(
                  top: smallImagesTop,
                  left: leftPadding,
                  width: smallImageRowWidth,
                  imageWidth: smallImageWidth,
                  imageHeight: smallImageHeight,
                  spacing: smallImageSpacing,
                ),
                LargeImageColumnWidget(
                  top: largeImagesTop,
                  left: leftPadding,
                  imageWidth: largeImageWidth,
                  imageHeight: largeImageHeight,
                  spacing: largeImageSpacing,
                ),
                WorkoutCardsWidget(
                  top: imageTop,
                  imageWidth: imageWidth,
                  imageHeight: imageHeight,
                  buttonTop: buttonTop,
                  spacing: cardSpacing,
                  runSpacing: isShortScreen ? 15.h : 20.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
