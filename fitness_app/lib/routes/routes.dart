import 'package:fitness_app/screens/daily_process_summery.dart';
import 'package:fitness_app/screens/main_dashbord_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:fitness_app/screens/splash_screen.dart';
import 'package:fitness_app/screens/daily_workout_plan.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => const MainDashboardScreen(),
    ),
    GoRoute(
      path: '/progress',
      builder: (context, state) => const DailyProgressSummary(),
    ),
    GoRoute(
      path: '/workout',
      builder: (context, state) => const DailyWorkoutPlan(),
    ),
  ],
);