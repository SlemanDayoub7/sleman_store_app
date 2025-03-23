import 'package:flutter/material.dart';
import 'package:sleman_store_app/core/di/dependency_injection.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/features/cart/ui/cart_screen.dart';
import 'package:sleman_store_app/features/home/data/models/product.dart';

import 'package:sleman_store_app/features/login/logic/cubit/login_cubit.dart';
import 'package:sleman_store_app/features/login/ui/login_screen.dart';
import 'package:sleman_store_app/features/onboarding/onboarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sleman_store_app/features/product_detail/product_detail_screen.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:sleman_store_app/features/profile/ui/profile_screen.dart';
import 'package:sleman_store_app/main_scaffold.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
        );
      case Routes.profileScreen:
        return MaterialPageRoute(
          builder: (_) => ProfileScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: LoginScreen(),
          ),
        );
      case Routes.cartScreen:
        return MaterialPageRoute(
          builder: (_) => CartScreen(),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => MainScaffold(),
        );
      case Routes.productDetail:
        return MaterialPageRoute(
            builder: (_) => ProductDetailScreen(
                  product: arguments as Product,
                ));

      default:
        return null;
    }
  }
}
