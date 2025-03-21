import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/helpers/extensions.dart';
import 'package:sleman_store_app/core/routing/routes.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_button.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';

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
                  SvgPicture.asset(AssetPaths.onboardingBackground),
                  Align(
                      alignment: AlignmentDirectional.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: CustomText(
                            text: LocaleKeys.welcome.tr(),
                            style: TextStyles.h1Semibold
                                .copyWith(fontSize: 40.sp)),
                      )),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Image.asset(
                        height: 697.h,
                        fit: BoxFit.fill,
                        AssetPaths.onboardingMan,
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
