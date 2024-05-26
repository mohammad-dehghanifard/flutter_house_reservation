import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:sizer/sizer.dart';

class SendOtpWidget extends StatelessWidget {
  const SendOtpWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
        CustomButtonWidget(onTap: () {}, text: AppStrings.sendOtpCode)
      ],
    );
  }
}