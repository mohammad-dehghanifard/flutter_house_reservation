import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/show_avatar_widget.dart';
import 'package:flutter_house_reservation/modules/profile/widgets/edit_avatar_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditUserPage extends StatelessWidget {
  const EditUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: AppStrings.profileChangeInfoTitle),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              // avatar
              Stack(
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
            ],
          ),
        ),
      ),
    );
  }
}


