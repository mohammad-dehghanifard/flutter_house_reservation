import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExitDialogWidget extends StatelessWidget {
  const ExitDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: AppColors.darkScaffoldBackGroundColor,
      child: SizedBox(
        width: double.infinity,
        height: 120.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AppStrings.appExitMessage,style: context.textTheme.titleMedium!.apply(color: AppColors.whiteSecondary),),
            SizedBox(height: 16.h),
            // buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomButtonWidget(onTap: () => Get.back(), text: AppStrings.exitApp),
                CustomButtonWidget(onTap: () => Get.back(), text: AppStrings.cancel,colorType: ButtonColorType.orange,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
