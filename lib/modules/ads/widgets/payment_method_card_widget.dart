import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PaymentMethodCardWidget extends StatelessWidget {
  const PaymentMethodCardWidget({
    super.key,
    required this.icon,
    required this.text,
    this.selected = false, required this.onTap,
  });
  final IconData icon;
  final String text;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        width: 100.w,
        height: 100.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.r),
            color: selected? AppColors.lightBlue :AppColors.lightWhite
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: AppColors.greyText,size: 48,),
            SizedBox(height: 4.h),
            Text(text,style: context.textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}