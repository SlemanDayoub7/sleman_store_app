import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/features/profile/data/models/user.dart';

class ProfileInfo extends StatelessWidget {
  final User userProfile;

  const ProfileInfo({Key? key, required this.userProfile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InfoSection(
            icon: Icons.email,
            title: LocaleKeys.email.tr(),
            value: userProfile.email),
        InfoSection(
            icon: Icons.phone,
            title: LocaleKeys.phone.tr(),
            value: userProfile.phone),
        InfoSection(
          icon: Icons.location_pin,
          title: LocaleKeys.address.tr(),
          value:
              '${userProfile.address.street}, ${userProfile.address.city}, ${userProfile.address.zipcode}',
        ),
      ],
    );
  }
}

class InfoSection extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoSection({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Icon(icon, size: 24.r, color: ColorsManager.blackGray),
          SizedBox(width: 15.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: title,
                style: TextStyles.h4Medium,
                color: ColorsManager.darkGray,
              ),
              CustomText(text: value, style: TextStyles.b1Medium),
            ],
          ),
        ],
      ),
    );
  }
}
