import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/modules/auth/controllers/auth_controller.dart';
import 'package:flutter_house_reservation/modules/auth/widgets/register_widget.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'confirm_otp_widget.dart';
import 'send_otp_widget.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder: (buildController) {
          // set widget for show
          Widget child =  buildController.pageType == AuthPageType.sendOtp
              ? const SendOtpWidget()
              : buildController.pageType ==
              AuthPageType.confirmOtp
              ? const ConfirmOtpWidget()
              : const RegisterWidget();

          return AnimatedContainer(
              duration: const Duration(milliseconds: 50),
              margin: EdgeInsets.only(top: 12.h),
              padding: const EdgeInsets.all(25.0),
              width: double.infinity,
              height: buildController.pageType == AuthPageType.sendOtp
                  ? 200.h
                  : buildController.pageType ==
                  AuthPageType.confirmOtp
                  ? 250.h
                  : 300.h,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(12.r)
              ),
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                child: child,
              )

          );
        }
    );
  }
}