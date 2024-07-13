import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/create_ads_selected_image_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/create_new_ads_buttons_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/input_ads_information_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/set_ads_rentee_type_and_price.dart';
import 'package:get/get.dart';

class AddNewAdsPage extends StatelessWidget {
  const AddNewAdsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CreateAdsController>(
      init: CreateAdsController(),
      builder: (buildController) {
        return Scaffold(
          bottomNavigationBar: const CreateNewAdsButtonsWidget(),
          appBar: const CustomAppBar(title: AppStrings.addNewAdsAppBarTitle),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: RepaintBoundary(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 450),
                  child: buildController.pageState ==
                      CreateAdsPageState.inputInformation
                      ? InputAdsInformationWidget(controller: buildController)
                      : buildController.pageState == CreateAdsPageState.setPrice
                      ? const SetAdsRenteeTypeAndPrice()
                      : CreateAdsSelectedImageWidget(),
                ),
              )
              ),
          ),
        );
      }
    );
  }
}











enum CreateAdsPageState {inputInformation,selectImages,setPrice}
