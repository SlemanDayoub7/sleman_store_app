import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/localization/generated/codegen_loader.g.dart';
import 'package:sleman_store_app/core/theming/text_styles.dart';
import 'package:sleman_store_app/core/widgets/custom_text.dart';
import 'package:sleman_store_app/core/widgets/custom_top_bar.dart';

import 'package:sleman_store_app/features/cart/ui/widgets/cart_bloc_builder.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            spacing: 20.h,
            children: [
              CustomTopBar(
                title: LocaleKeys.cart.tr(),
              ),
              CartBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
