import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ReservationNowButton extends StatelessWidget {
  const ReservationNowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25.w,vertical: 8.h),
      width: double.infinity,
      height: 50.h,
      decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColors.darkScaffoldBackGroundColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButtonWidget(
              width: 220,
              onTap: () {},
              text: AppStrings.reservationNow),
          SizedBox(width: 16.w),
          // add to favorite
          SvgPicture.asset(Assets.heart,height: 24.h,),

        ],
      ),
    );
  }
}