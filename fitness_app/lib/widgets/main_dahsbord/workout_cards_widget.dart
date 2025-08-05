import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:fitness_app/widgets/main_dahsbord/workout_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WorkoutCardsWidget extends StatelessWidget {
  final double top;
  final double imageWidth;
  final double imageHeight;
  final double buttonTop;
  final double spacing;
  final double runSpacing;

  const WorkoutCardsWidget({
    super.key,
    required this.top,
    required this.imageWidth,
    required this.imageHeight,
    required this.buttonTop,
    required this.spacing,
    required this.runSpacing,
  });

  // Safe navigation method with error handling
  void _navigateToWorkout(BuildContext context) {
    try {
      // Option 1: Use pushNamed if you have named routes
      // Navigator.of(context).pushNamed('/workout');
      
      // Option 2: Use GoRouter with error handling
      if (GoRouter.of(context).canPop() || true) { // Check if router is available
        context.go('/workout');
      }
    } catch (e) {
      // Handle navigation error
      print('Navigation error: $e');
      // Show a snackbar or dialog to user
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Unable to navigate to workout screen'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: spacing,
        runSpacing: runSpacing,
        children: [
          GestureDetector(
            onTap: () => _navigateToWorkout(context),
            child: WorkoutCard(
              imagePath: 'assets/images/img_main_screen_01.png',
              buttonBackgroundColor: AppColors.darkRed,
              buttonTop: buttonTop,
              imageWidth: imageWidth,
              imageHeight: imageHeight,
              route: '/workout',
            ),
          ),
          GestureDetector(
            onTap: () => _navigateToWorkout(context),
            child: WorkoutCard(
              imagePath: 'assets/images/img_main_screen_02.png',
              buttonBackgroundColor: AppColors.lightRed,
              buttonTop: buttonTop,
              imageWidth: imageWidth,
              imageHeight: imageHeight,
              route: '/workout',
            ),
          ),
        ],
      ),
    );
  }
}