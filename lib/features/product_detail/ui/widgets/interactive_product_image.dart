import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sleman_store_app/core/widgets/custom_image.dart';

class InteractiveProductImage extends StatelessWidget {
  final String imageUrl;
  const InteractiveProductImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showImageDialog(context);
      },
      child: Center(
        child: CustomImage(
          imageUrl: imageUrl,
          height: 400.h,
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.all(10.w),
          child: Container(
            width: double.infinity,
            height: 500.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: InteractiveViewer(
              panEnabled: true, // Allow panning
              boundaryMargin: EdgeInsets.all(20), // Margin for panning
              minScale: 0.5, // Minimum zoom scale
              maxScale: 4.0, // Maximum zoom scale
              child: CustomImage(
                imageUrl: imageUrl,
              ),
            ),
          ),
        );
      },
    );
  }
}
