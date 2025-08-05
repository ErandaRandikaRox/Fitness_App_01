import 'package:fitness_app/routes/routes.dart';
import 'package:fitness_app/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Fitness App',
          theme: ThemeData(
            primaryColor: AppColors.redPrimary,
            useMaterial3: true,
          ),
          routerConfig: router,
        );
      },
    );
  }
}