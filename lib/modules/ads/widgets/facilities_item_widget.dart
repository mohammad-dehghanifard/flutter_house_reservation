import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FacilitiesItemWidget extends StatelessWidget {
  const FacilitiesItemWidget({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.symmetric(vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 4.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.r),
          color: AppColors.whiteSecondary
      ),
      child: Text(title,style: context.textTheme.bodySmall!.apply(color: AppColors.black),),
    );
  }
}