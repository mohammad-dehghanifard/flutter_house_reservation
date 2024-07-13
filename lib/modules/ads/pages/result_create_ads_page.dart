import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResultCreateAdsPage extends StatelessWidget {
  const ResultCreateAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.resultCreateAdsAppBarTitle),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.houses),
            SizedBox(height: 32.h),
            Text(AppStrings.resultCreateAdsSuccessTitle,style: context.textTheme.titleMedium),
            SizedBox(height: 8.h),
            Text(AppStrings.resultCreateAdsSuccessMessage,style: context.textTheme.bodySmall,textAlign: TextAlign.center),
            SizedBox(height: 32.h),
            CustomButtonWidget(onTap: () => Get.back(), text: AppStrings.backToHome)
          ],
        ),
      ),
    );
  }
}
