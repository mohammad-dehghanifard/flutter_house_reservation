import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/modules/main/pages/main_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ResultReservePage extends StatelessWidget {
  const ResultReservePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.resultReservePageAppBar),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.homeKey,height: 160.h),
            SizedBox(height: 24.h),
            Text(
                AppStrings.resultReservePageMessage,
                style: context.textTheme.bodySmall,
                textAlign: TextAlign.center,
            ),
            SizedBox(height: 24.h),
            CustomButtonWidget(
              onTap: () => Get.offAll(const MainPage()),
              text: AppStrings.backToHome,
            )
          ],
        ),
      ),
    );
  }
}
