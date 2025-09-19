import 'package:flutter/material.dart';
import 'package:spotify_clone/core/routes/app_routes.dart';
import 'package:spotify_clone/features/auth/presentation/pages/choose_auth_veiw.dart';
import 'package:spotify_clone/features/auth/presentation/pages/login_view.dart';
import 'package:spotify_clone/features/auth/presentation/pages/register_view.dart';
import 'package:spotify_clone/features/onboarding/presentation/pages/onboarding_view_one.dart';
import 'package:spotify_clone/features/onboarding/presentation/pages/onboarding_view_two.dart';
import 'package:spotify_clone/features/splash/presentation/pages/spalsh_view.dart';

abstract class AppRouter {
  static Route<dynamic>? onGenerateRoute(RouteSettings settigns) {
    switch (settigns.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SpalshView());
      case AppRoutes.onboardingOne:
        return MaterialPageRoute(builder: (_) => const OnboardingViewOne());
      case AppRoutes.onboardingTwo:
        return MaterialPageRoute(builder: (_) => const OnboardingViewTwo());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case AppRoutes.chooseAuth:
        return MaterialPageRoute(builder: (_) => const ChooseAuthVeiw());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      default:
        return MaterialPageRoute(builder: (_) => const SpalshView());
    }
  }
}
