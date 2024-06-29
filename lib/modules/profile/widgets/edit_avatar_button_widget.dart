import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditAvatarButtonWidget extends StatelessWidget {
  const EditAvatarButtonWidget({
    super.key, required this.onTap,
  });
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30.w,
        height: 30.h,
        decoration: const BoxDecoration(
            color: AppColors.secondary,
            shape: BoxShape.circle
        ),
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}