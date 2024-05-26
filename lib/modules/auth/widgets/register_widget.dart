import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/main/pages/main_page.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AppStrings.registerMessage,style: context.textTheme.bodySmall),
        SizedBox(height: 32.h),
        // input username
        const CustomTextField(
          label: AppStrings.usernameLabel,
          hint: AppStrings.inputPhoneHint,
        ),
        SizedBox(height: 24.h),
        // input full name
        const CustomTextField(
          label: AppStrings.fullNameLabel,
          hint: AppStrings.inputPhoneHint,
        ),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButtonWidget(onTap: () {Get.offAll(const MainPage());}, text: AppStrings.register),
            CustomButtonWidget(onTap: () {Get.offAll(const MainPage());}, text: AppStrings.signIn,colorType: ButtonColorType.orange,),
          ],
        )
      ],
    );
  }
}