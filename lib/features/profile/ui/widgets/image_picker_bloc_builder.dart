import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_state.dart';

class ImagePickerBlocBuilder extends StatelessWidget {
  const ImagePickerBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileState>(
      buildWhen: (previous, current) {
        return current is ImageLoading || current is ImageSuccess;
      },
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => _setupError(),
            imageLoading: () => Center(
                    child: const CircularProgressIndicator(
                  color: ColorsManager.blackGray,
                )),
            imageSuccess: (imageUrl) => ClipRRect(
                  borderRadius: BorderRadius.circular(100.r),
                  child: Image.file(
                    File(imageUrl),
                    height: 160.h,
                    width: 160.h,
                    errorBuilder: (context, error, stackTrace) {
                      return Center(
                        child: Container(
                            width: 160.w,
                            height: 160.h,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: ColorsManager.softGray,
                            ),
                            child: Center(
                                child: Icon(
                              Icons.image,
                              size: 50.sp,
                            ))),
                      );
                    },
                  ),
                ));
      },
    );
  }

  Center _setupError() {
    return Center(
        child: Container(
            width: 160.w,
            height: 160.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsManager.softGray,
            ),
            child: Center(
                child: Icon(
              Icons.image,
              size: 50.sp,
            ))));
  }
}
