import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/fake_data.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/modules/splash/controllers/on_boarding_controller.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPageIndicatorWidget extends StatelessWidget {
  const OnBoardingPageIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(FakeData.onBoardingItems.length, (index) {
        return GetBuilder<OnBoardingController>(builder: (buildController) {
          final selected = buildController.selectedPage == index;
          return RepaintBoundary(
            child: AnimatedContainer(
              duration: 350.milliseconds,
              width: !selected ? 12.w : 24.w,
              height: !selected ? 12.w : 6.w,
              margin: EdgeInsets.only(
                right: 2.w,
              ),
              decoration: BoxDecoration(
                  borderRadius: selected
                      ? BorderRadius.circular(4)
                      : BorderRadius.circular(100),
                  color: selected ? AppColors.blue : AppColors.lightBlue),
            ),
          );
        });
      }),
    );
  }
}