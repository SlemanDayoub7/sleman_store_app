import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/theming/colors.dart';
import 'package:sleman_store_app/features/profile/logic/cubit/profile_cubit.dart';
import 'package:sleman_store_app/features/profile/ui/widgets/image_picker_bloc_builder.dart';

class ImagePickerSection extends StatelessWidget {
  const ImagePickerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 160.w,
        height: 160.h,
        child: Stack(
          children: [
            ImagePickerBlocBuilder(),
            Align(
              alignment: Alignment.bottomRight,
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: ColorsManager.blackGray,
                child: IconButton(
                  icon: Icon(
                    Icons.camera_alt,
                    color: ColorsManager.white,
                    size: 24.sp,
                  ),
                  onPressed: () async {
                    await context.read<ProfileCubit>().selectImage();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
