import 'package:chillex/screens/get_start.dart';
import 'package:chillex/screens/home.dart';
import 'package:chillex/screens/splash_screen.dart';

import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/get-started',
      builder: (context, state) => const GetStartPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
