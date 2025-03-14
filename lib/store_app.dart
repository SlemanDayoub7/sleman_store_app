import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/routing/app_router.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/core/theming/colors.dart';

class StoreApp extends StatelessWidget {
  final AppRouter appRouter;
  const StoreApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        child: MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          title: 'Doc App',
          locale: context.locale,
          theme: ThemeData(
            primaryColor: ColorsManager.blackGray,
            scaffoldBackgroundColor: Colors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.onBoardingScreen,
          onGenerateRoute: appRouter.generateRoute,
        ));
  }
}
