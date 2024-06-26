import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/modules/splash/controllers/splash_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<SplashController>(
      init: SplashController(),
      builder: (buildController) {
        return Scaffold(
          backgroundColor: AppColors.darkScaffoldBackGroundColor,
          body: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    // LOGO
                    SvgPicture.asset(Assets.logo),
                    SizedBox(height: 12.h),
                    // loading
                    LoadingAnimationWidget.stretchedDots(color: AppColors.secondary, size: 32.h),
                    const Spacer(),
                    Text(AppStrings.appVersion,style: context.textTheme.bodySmall!.apply(color: AppColors.secondary))
                  ],
                ),
              ),
            ),
          ),
        );
      }
    );
  }
}
