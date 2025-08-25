import 'package:flutter/material.dart';
import 'package:spotify/core/routes/app_routes.dart';
import 'package:spotify/features/onboarding/presentation/pages/onboarding_view_one.dart';
import 'package:spotify/features/onboarding/presentation/pages/onboarding_view_two.dart';
import 'package:spotify/features/splash/presentation/pages/spalsh_view.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settigns) {
    switch (settigns.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SpalshView());
      case AppRoutes.onboardingOne:
        return MaterialPageRoute(builder: (_) => const OnboardingViewOne());
      case AppRoutes.onboardingTwo:
        return MaterialPageRoute(builder: (_) => const OnboardingViewTwo());
      default:
        return MaterialPageRoute(builder: (_) => const SpalshView());
    }
  }
}
