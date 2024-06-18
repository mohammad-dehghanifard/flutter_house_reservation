import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowAvatarWidget extends StatelessWidget {
  const ShowAvatarWidget({
    super.key,
     this.width = 45,
     this.height = 45,
  });

  final double width,height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.whiteSecondary)
      ),
      child: Container(
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(Assets.avatar),
              fit: BoxFit.cover,
            )
        ),
      ),
    );
  }
}