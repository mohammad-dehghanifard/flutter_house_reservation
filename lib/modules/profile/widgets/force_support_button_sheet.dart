import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForceSupportButtonSheet extends StatelessWidget {
  const ForceSupportButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.h,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: AppColors.whiteSecondary,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(32.r),
          topLeft: Radius.circular(32.r),
        ),
      ),
      child: Column(
        children: [
          Image.asset(Assets.forceSupport,height: 120.h),
          SizedBox(height: 12.h),
          const Text(AppStrings.forceSupportMessage),
          const Spacer(),
          CustomButtonWidget(onTap: () {}, text: AppStrings.callSupport)
        ],
      ),
    );
  }
}
