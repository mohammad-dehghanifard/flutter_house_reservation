import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/constants/controllers_build_id.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/reserve_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class InputReserveInfoWidget extends StatelessWidget {
  const InputReserveInfoWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // select time
        GetBuilder<ReserveController>(
          id: ControllersBuildId.reserveTime,
          builder: (controller) {
            return CustomTextField(
              controller: controller.timeText,
              label: AppStrings.inputReserveTimeLabel,
              suffixIconPath: Assets.time,
              hint: "${TimeOfDay.now().minute} : ${TimeOfDay.now().hour}",
              onTap: () => controller.reserveTimePicker(context),
            );
          }
        ),
        SizedBox(height: 12.h),
        // select date
        GetBuilder<ReserveController>(
          id: ControllersBuildId.reserveDate,
          builder: (controller) {
            return CustomTextField(
              controller: controller.dateText,
              label: AppStrings.inputReserveDateLabel,
              suffixIconPath: Assets.date,
              hint: "${Jalali.now().day} / ${Jalali.now().month} /${Jalali.now().year} ",
              onTap: () => controller.reserveDatePicker(context),
            );
          }
        ),
        SizedBox(height: 12.h),
        // set member
        const CustomTextField(
          label: AppStrings.inputReserveSetMemberLabel,
          hint: AppStrings.inputReserveSetMemberHint,
          inputType: TextInputType.number,
        ),
      ],
    );
  }
}