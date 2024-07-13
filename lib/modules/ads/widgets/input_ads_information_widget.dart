import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/facilities_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputAdsInformationWidget extends StatelessWidget {
  const InputAdsInformationWidget({
    super.key, required this.controller,
  });
  final CreateAdsController controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // input title
        const CustomTextField(label: AppStrings.inputAdsTitleLabel,hint: AppStrings.inputNewAdsTitleHint),
        SizedBox(height: 8.h),
        // input description
        const CustomTextField(
          label: AppStrings.inputAdsDescriptionLabel,
          hint: AppStrings.inputNewAdsDescriptionHint,
          maxLine: 8,
          hasBorder: true,
        ),
        SizedBox(height: 8.h),
        // input facilities
        Row(
          children: [
            Expanded(
                child: CustomTextField(
                    controller: controller.facilitiesTextController,
                    label: AppStrings.inputFacilitiesLabel,
                    hint: AppStrings.inputNewFacilitiesHint)
            ),
            SizedBox(width: 8.w),
            // button
            Padding(
              padding:  EdgeInsets.only(top: 24.h),
              child: CustomButtonWidget(
                  colorType: ButtonColorType.orange,
                  onTap: () => controller.addFacilities(),
                  text: AppStrings.addFacilities),
            )
          ],
        ),
        SizedBox(height: 12.h),
        // facilities list
        Wrap(
          children: List.generate(
              controller.facilities.length,
                  (index) =>  FacilitiesItemWidget(title: controller.facilities[index])),
        )
      ],
    );
  }
}