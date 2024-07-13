import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/facilities_item_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/input_ads_information_widget.dart';
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
              child: InputAdsInformationWidget(controller: buildController),
            ),
          ),
        );
      }
    );
  }
}



enum CreateAdsPageState {inputInformation,selectImages}
