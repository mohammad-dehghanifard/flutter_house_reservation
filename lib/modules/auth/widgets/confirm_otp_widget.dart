import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_button.dart';
import 'package:flutter_house_reservation/modules/auth/controllers/auth_controller.dart';
import 'package:flutter_house_reservation/modules/auth/widgets/otp_text_field_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class ConfirmOtpWidget extends StatelessWidget {
  const ConfirmOtpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
        builder: (buildController) {
          return Column(
            children: [
              Text(AppStrings.inputOtpCodeMessage,style: context.textTheme.bodySmall),
              SizedBox(height: 4.h),
              const OtpTextFieldWidget(),
              SizedBox(height: 2.h),
              // timer
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppStrings.resendCodeMessage,style: context.textTheme.bodySmall),
                  if(buildController.resendOtpTime > 0)
                    Text("${buildController.resendOtpTime}  ثانیه",style: context.textTheme.bodySmall),
                  if(buildController.resendOtpTime == 0)
                    CustomTextButton(onTap: () => buildController.resetTimer(),text: AppStrings.resendCode)
                ],
              ),
              const Spacer(),
              CustomButtonWidget(onTap: () => buildController.changePageState(), text: AppStrings.acceptOtpCode)
            ],
          );
        }
    );
  }
}