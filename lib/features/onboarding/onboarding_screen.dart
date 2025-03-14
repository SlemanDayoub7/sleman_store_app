import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleman_store_app/core/helpers/extensions.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_button.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/generated/codegen_loader.g.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 737.h,
              child: Stack(
                children: [
                  SvgPicture.asset('assets/svgs/onboarding_background.svg'),
                  Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: CustomText(
                          text: LocaleKeys.welcome.tr(),
                          style:
                              TextStyles.h1Semibold.copyWith(fontSize: 50.sp))),
                  Align(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Image.asset(
                        height: 697.h,
                        fit: BoxFit.fill,
                        'assets/images/onboarding_man.png',
                      ))
                ],
              ),
            ),
            CustomButton(
              margin: EdgeInsets.all(15.sp),
              onPressed: () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
              text: LocaleKeys.get_started.tr(),
            )
          ],
        ),
      )),
    );
  }
}
