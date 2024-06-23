import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectScoreItemWidget extends StatelessWidget {
  const SelectScoreItemWidget({
    super.key, required this.selected, required this.index, required this.onTap,
  });
  final bool selected;
  final int index;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        width: 60.w,
        height: 30.h,
        margin: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: selected? AppColors.lightBlue : AppColors.lightWhite,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child: index == 0 ? const Center(child: Text(AppStrings.all)) : Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.star),
            SizedBox(width: 4.w),
            Text(index.toString())
          ],
        ),
      ),
    );
  }
}