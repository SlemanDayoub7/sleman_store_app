import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/extensions.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';

import 'package:sleman_store_app/features/login/logic/cubit/login_cubit.dart';
import 'package:sleman_store_app/features/login/logic/cubit/login_state.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.blackGray,
                ),
              ),
            );
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  void setupErrorState(BuildContext context, String error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: ColorsManager.white,
        icon: Icon(
          Icons.error,
          color: Colors.red,
          size: 40.sp,
        ),
        content: CustomText(
          color: ColorsManager.blackGray,
          text: error,
          style: TextStyles.b1Semibold,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: CustomText(
              color: ColorsManager.blackGray,
              text: LocaleKeys.done.tr(),
              style: TextStyles.b1Semibold,
            ),
          ),
        ],
      ),
    );
  }
}
