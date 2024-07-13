import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/facilities_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddNewAdsPage extends StatelessWidget {
  const AddNewAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAdsController>(
      init: CreateAdsController(),
      builder: (buildController) {
        return Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonWidget(onTap: () {},text: AppStrings.goNext),
          ),
          appBar: const CustomAppBar(title: AppStrings.addNewAdsAppBarTitle),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
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
                            controller: buildController.facilitiesTextController,
                              label: AppStrings.inputFacilitiesLabel,
                              hint: AppStrings.inputNewFacilitiesHint)
                      ),
                      SizedBox(width: 8.w),
                      // button
                      Padding(
                        padding:  EdgeInsets.only(top: 24.h),
                        child: CustomButtonWidget(
                          colorType: ButtonColorType.orange,
                            onTap: () => buildController.addFacilities(),
                            text: AppStrings.addFacilities),
                      )
                    ],
                  ),
                  SizedBox(height: 12.h),
                  // facilities list
                  Wrap(
                    children: List.generate(
                        buildController.facilities.length,
                            (index) =>  FacilitiesItemWidget(title: buildController.facilities[index])),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
