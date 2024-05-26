import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/auth/controllers/auth_controller.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SendOtpWidget extends StatelessWidget {
  const SendOtpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      builder: (buildController) {
        return Column(
          children: [
            Text(AppStrings.sendSmsMessage,style: context.textTheme.bodySmall),
            SizedBox(height: 4.h),
            const CustomTextField(
              label: AppStrings.phoneNumberLabel,
              hint: AppStrings.inputPhoneHint,
              inputType: TextInputType.phone,
            ),
            const Spacer(),
            CustomButtonWidget(onTap: () => buildController.changePageState(), text: AppStrings.sendOtpCode)
          ],
        );
      }
    );
  }
}