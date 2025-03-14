import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/features/login/ui/login_screen.dart';
import 'package:sleman_store_app/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => SizedBox(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => SizedBox(),
        );
      default:
        return null;
    }
  }
}
