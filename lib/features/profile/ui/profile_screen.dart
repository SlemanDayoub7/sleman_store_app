import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sleman_store_app/core/constants/asset_paths.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/widgets/custom_no_data.dart';
import 'package:sleman_store_app/core/widgets/custom_top_bar.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_state.dart';
import 'package:sleman_store_app/features/profile/ui/widgets/profile_header.dart';
import 'package:sleman_store_app/features/profile/ui/widgets/profile_info.dart';
import 'package:sleman_store_app/features/profile/ui/widgets/profile_shimmer_loading.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: RefreshIndicator(
          color: ColorsManager.blackGray,
          onRefresh: () async {
            await context.read<ProfileCubit>().fetchUserProfile();
          },
          child: SingleChildScrollView(
            padding: basePadding(),
            child: Column(
              children: [
                CustomTopBar(title: LocaleKeys.profile.tr()),
                Container(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height,
                  ),
                  child: BlocBuilder<ProfileCubit, ProfileState>(
                    buildWhen: (previous, current) {
                      return current is ProfileLoading ||
                          current is ProfileError ||
                          current is ProfileSuccess;
                    },
                    builder: (context, state) {
                      return state.maybeWhen(
                        orElse: () => const SizedBox.shrink(),
                        initial: () {
                          context.read<ProfileCubit>().fetchUserProfile();
                          return ProfileShimmerLoading();
                        },
                        profileloading: () => ProfileShimmerLoading(),
                        profileSuccess: (userProfile) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ProfileHeader(
                                userProfile: userProfile,
                              ),
                              SizedBox(height: 20.h),
                              ProfileInfo(userProfile: userProfile),
                            ],
                          );
                        },
                        profileError: (errorHandler) {
                          return CustomNoData(
                            widget: SvgPicture.asset(
                              AssetPaths.profileIcon,
                              width: 50.w,
                              height: 50.h,
                            ),
                            title: LocaleKeys.there_is_no_data_to_display.tr(),
                            description:
                                LocaleKeys.please_pull_down_to_refresh.tr(),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
