import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/home/widgets/popular_house_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class InputReserveInfoWidget extends StatelessWidget {
  const InputReserveInfoWidget({
    super.key,
    required this.ads,
  });

  final AdsModel ads;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ads
        PopularHouseItemWidget(ads: ads),
        SizedBox(height: 24.h),
        // select time
        CustomTextField(
          label: AppStrings.inputReserveTimeLabel,
          suffixIconPath: Assets.time,
          hint: "${TimeOfDay.now().minute} : ${TimeOfDay.now().hour}",
          onTap: () async {
            await showTimePicker(
              context: context,
              cancelText: AppStrings.cancel,
              confirmText: AppStrings.accept,
              helpText: AppStrings.timeHelper,
              barrierColor: AppColors.primary.withOpacity(0.25),
              initialTime: TimeOfDay.now(),
            );
          },
        ),
        SizedBox(height: 12.h),
        // select date
        CustomTextField(
          label: AppStrings.inputReserveDateLabel,
          suffixIconPath: Assets.date,
          hint: "${Jalali.now().day} / ${Jalali.now().month} /${Jalali.now().year} ",
          onTap: () async {
            await showPersianDatePicker(
                context: context,
                initialDate: Jalali.now(),
                firstDate: Jalali(1403),
                lastDate: Jalali(1420));
          },
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