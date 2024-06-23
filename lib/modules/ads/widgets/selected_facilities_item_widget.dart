import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectedFacilitiesItemWidget extends StatelessWidget {
  const SelectedFacilitiesItemWidget({
    super.key, required this.index, required this.text, required this.selected, required this.onTap,
  });
  final int index;
  final String text;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        width: 90.w,
        height: 30.h,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: selected ? AppColors.primary : AppColors.lightWhite,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child:  Center(child: Text(text,style: context.textTheme.bodyMedium!.apply(color: selected? AppColors.whiteSecondary : null),)),
      ),
    );
  }
}