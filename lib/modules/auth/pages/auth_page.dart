import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/modules/auth/controllers/auth_controller.dart';
import 'package:flutter_house_reservation/modules/auth/widgets/auth_container_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                      SizedBox(height: 16.h),
                      // show widgets
                      const AuthContainer()
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











