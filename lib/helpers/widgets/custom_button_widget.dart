import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget(
      {super.key, this.colorType = ButtonColorType.primary, required this.onTap, required this.text});

  final ButtonColorType colorType;
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStatePropertyAll(colorType == ButtonColorType.primary
                    ? AppColors.primary
                    : colorType == ButtonColorType.white
                        ? AppColors.whiteSecondary
                        : AppColors.secondary),
            elevation: const MaterialStatePropertyAll(0),
            minimumSize: MaterialStatePropertyAll(Size(36.w, 6.h)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.w)))),
        onPressed: onTap,
        child: Text(
          text,
          style: context.textTheme.titleLarge!
              .apply(color:colorType == ButtonColorType.white? AppColors.greyText: AppColors.white, fontSizeFactor: 0.7),
        ));
  }
}

enum ButtonColorType { primary, white, orange }
