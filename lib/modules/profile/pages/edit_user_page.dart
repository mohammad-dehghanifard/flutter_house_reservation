import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/helpers/widgets/show_avatar_widget.dart';
import 'package:flutter_house_reservation/modules/profile/widgets/edit_avatar_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditUserPage extends StatelessWidget {
  const EditUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.profileChangeInfoTitle),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: CustomButtonWidget(
            width: double.infinity,
            onTap: () {},
            text: AppStrings.edit),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // avatar and change avatar
              Center(
                child: Stack(
                  children: [
                    const ShowAvatarWidget(
                      width: 160,
                      height: 160,
                    ),
                    // edit image button
                    Positioned(
                      bottom: 15.h,
                      right: 10.w,
                      child: EditAvatarButtonWidget(onTap: () {}),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              // change userName
              const CustomTextField(hasBorder: true,hint: AppStrings.changeUserNameHint),
              // change full name
              const CustomTextField(hasBorder: true,hint: AppStrings.changeFullNameHint),
              // change phone
              const CustomTextField(hasBorder: true,hint: AppStrings.changePhoneHint),
              SizedBox(height: 16.h),
              // rules
              Text(AppStrings.tipTitle,style: context.textTheme.titleMedium!.apply(color: AppColors.redColor)),
              Text(AppStrings.tipText,style: context.textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}


