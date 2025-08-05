import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    // Responsive right and bottom offsets based on screen size
    final double rightOffset = screenWidth * 0.05; 
    final double bottomOffset = screenHeight * 0.07; 

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset('assets/images/img_splash screen.png', fit: BoxFit.cover),
          Positioned(
            right: rightOffset,
            bottom: bottomOffset,
            child: GestureDetector(
              onTap: () {
                context.go('/dashboard');
              },
              child: Image.asset(
                'assets/icons/icon_play_button.png',
                width: 24.w,
                height: 24.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
