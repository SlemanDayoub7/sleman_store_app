import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/constants/application_constants.dart';
import 'package:sleman_store_app/core/constants/shared_pref_keys.dart';
import 'package:sleman_store_app/core/di/dependency_injection.dart';

import 'package:sleman_store_app/core/routing/app_router.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/features/cart/logic/cubit/cart_cubit.dart';
import 'package:sleman_store_app/features/home/logic/cubit/home_cubit.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_cubit.dart';

class StoreApp extends StatelessWidget {
  final AppRouter appRouter;

  const StoreApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<HomeCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<CartCubit>(),
            ),
            BlocProvider(
              create: (context) => getIt<ProfileCubit>(),
              child: Container(),
            )
          ],
          child: MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            title: ApplicationConstants.applicationName,
            locale: context.locale,
            theme: ThemeData(
              primaryColor: ColorsManager.blackGray,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute:
                isLoggedInUser ? Routes.homeScreen : Routes.onBoardingScreen,
            onGenerateRoute: appRouter.generateRoute,
          ),
        ));
  }
}
