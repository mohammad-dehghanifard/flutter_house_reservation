import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/pages/add_new_ads_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CreateNewAdsButtonsWidget extends StatelessWidget {
  const CreateNewAdsButtonsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GetBuilder<CreateAdsController>(
          builder: (controller) {
            return Row(
              children: [
                Expanded(child: CustomButtonWidget(onTap: () => controller.changePageState(),text: AppStrings.goNext)),
                Padding(
                  padding:  EdgeInsets.only(right: 8.w),
                  child: RepaintBoundary(
                    child: AnimatedOpacity(
                      opacity: controller.pageState != CreateAdsPageState.inputInformation ? 1 : 0,
                      duration: const Duration(milliseconds: 500),
                      child: controller.pageState != CreateAdsPageState.inputInformation ? CustomButtonWidget(
                        onTap: () => controller.backState(),
                        colorType: ButtonColorType.orange,
                        text:  AppStrings.back,
                      ) : null,
                    ),
                  ),
                )
              ],
            );
          }
      ),
    );
  }
}