import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/create_ads_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/select_image_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateAdsSelectedImageWidget extends StatelessWidget {
  CreateAdsSelectedImageWidget({super.key});
  final CreateAdsController controller = Get.find<CreateAdsController>();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectImageButtonWidget(icon: Icons.camera_alt,text: AppStrings.selectImageByCamera,onTap: () => controller.addImage(ImageSource.camera) ,),
            SizedBox(width: 12.w),
            SelectImageButtonWidget(icon: Icons.image,text: AppStrings.selectImageByGallery,onTap: () => controller.addImage(ImageSource.gallery)),
          ],
        ),
        SizedBox(height: 12.h),
        // images
        Wrap(
          children: List.generate(controller.images.length, (index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 75.w,
              height: 70.h,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Image.file(File(controller.images[index]),fit: BoxFit.fill)),
            ),
          )),
        )
      ],
    );
  }
}