import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/input_ads_information_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/select_image_button_widget.dart';
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
            child: CustomButtonWidget(onTap: () => buildController.changePageState(),text: AppStrings.goNext),
          ),
          appBar: const CustomAppBar(title: AppStrings.addNewAdsAppBarTitle),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: buildController.pageState ==
                        CreateAdsPageState.inputInformation
                    ? InputAdsInformationWidget(controller: buildController)
                    : const CreateAdaSelectedImageWidget(),
              ),
          ),
        );
      }
    );
  }
}

class CreateAdaSelectedImageWidget extends StatelessWidget {
  const CreateAdaSelectedImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            SelectImageButtonWidget(icon: Icons.camera_alt,text: AppStrings.selectImageByCamera,onTap: () {},),
            SizedBox(width: 12.w),
            SelectImageButtonWidget(icon: Icons.image,text: AppStrings.selectImageByGallery,onTap: () {},),
          ],
        )
      ],
    );
  }
}






enum CreateAdsPageState {inputInformation,selectImages}
