import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OtpTextFieldWidget extends StatelessWidget {
  const OtpTextFieldWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.inputAcceptOtpCode,style: context.textTheme.titleMedium!.apply(fontSizeFactor: 0.9)),
        SizedBox(height: 1.h),
        OtpTextField(
          filled: true,
          showFieldAsBox: true,
          borderWidth: 0,
          margin: EdgeInsets.symmetric(horizontal: 2.3.w),
          textStyle: context.textTheme.bodySmall,
          fillColor: AppColors.whiteSecondary,
          focusedBorderColor: Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          fieldWidth: 14.w,
          fieldHeight: 6.h,
        ),
      ],
    );
  }
}