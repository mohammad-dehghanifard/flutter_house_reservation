import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/auth/controllers/auth_controller.dart';
import 'package:flutter_house_reservation/modules/auth/widgets/confirm_otp_widget.dart';
import 'package:flutter_house_reservation/modules/auth/widgets/register_widget.dart';
import 'package:flutter_house_reservation/modules/auth/widgets/send_otp_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.darkScaffoldBackGroundColor,
      body: SafeArea(
        child: GetBuilder<AuthController>(
          init: AuthController(),
          builder: (buildController) {
            return Stack(
              alignment: Alignment.center,
              children: [
                // content
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      // logo
                      SvgPicture.asset(Assets.logo),
                      SizedBox(height: 2.h),
                      Text(AppStrings.sendOtpTitle,style: context.textTheme.bodyMedium!.apply(color: AppColors.white)),
                      Container(
                        margin: EdgeInsets.only(top: 2.h),
                        padding: const EdgeInsets.all(25.0),
                        width: double.infinity,
                        height: 45.h,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(4.h)
                        ),
                          child:
                              buildController.pageType == AuthPageType.sendOtp
                                  ? const SendOtpWidget()
                                  : buildController.pageType ==
                                          AuthPageType.confirmOtp
                                      ? const ConfirmOtpWidget()
                                      : const RegisterWidget(),
                        )
                    ],
                  ),
                ),
                // bottom vector
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                    child: Opacity(
                      opacity: 0.5,
                        child: Image.asset(Assets.city))
                )
              ],
            );
          }
        ),
      ),
    );
  }
}









