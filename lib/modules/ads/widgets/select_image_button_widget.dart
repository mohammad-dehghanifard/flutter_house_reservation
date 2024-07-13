import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectImageButtonWidget extends StatelessWidget {
  const SelectImageButtonWidget({
    super.key, required this.icon, required this.text, required this.onTap,
  });
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 75.w,
        height: 70.h,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.secondary),
          borderRadius: BorderRadius.circular(8.r),

        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: AppColors.primary,size: 32),
            SizedBox(height: 6.h),
            Text(text,style: context.textTheme.bodySmall!.apply(fontSizeFactor: 0.75)),
          ],
        ),
      ),
    );
  }
}