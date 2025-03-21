import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/helpers/extensions.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';

class CustomTopBar extends StatelessWidget {
  final String title;
  final bool? haveBackIcon;
  const CustomTopBar(
      {super.key, required this.title, this.haveBackIcon = false});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        children: [
          !haveBackIcon!
              ? SizedBox()
              : Expanded(
                  child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: IconButton(
                      onPressed: () {
                        context.pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 24.sp,
                      )),
                )),
          Expanded(
            flex: 2,
            child: CustomText(
              text: title,
              style: TextStyles.h1Semibold,
              align: haveBackIcon! ? TextAlign.center : TextAlign.start,
            ),
          ),
          !haveBackIcon! ? SizedBox() : Expanded(child: SizedBox())
        ],
      ),
    );
  }
}
