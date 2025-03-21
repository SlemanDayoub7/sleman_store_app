import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/spacing.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/profile/data/models/user.dart';
import 'package:sleman_store_app/features/profile/ui/widgets/image_picker_section.dart';

class ProfileHeader extends StatelessWidget {
  final User userProfile;

  const ProfileHeader({
    Key? key,
    required this.userProfile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImagePickerSection(),
        verticalSpace(15.h),
        CustomText(
          text: '${userProfile.name.firstname} ${userProfile.name.lastname}',
          style: TextStyles.h3Semibold,
        ),
        verticalSpace(5.h),
        CustomText(
          text: '@${userProfile.username}',
          style: TextStyles.b1Semibold,
        ),
      ],
    );
  }
}
