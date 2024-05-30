import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class UserSuggestionHomeItemWidget extends StatelessWidget {
  const UserSuggestionHomeItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 240,
          height: 285,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.whiteSecondary,
              borderRadius: BorderRadius.circular(16.r)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // image
              Stack(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: Image.asset(Assets.house3)),
                  // LIKE ICON
                  Positioned(
                    right: 12.w,
                    child: Container(
                      width: 25.w,
                      height: 30.w,
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: AppColors.darkScaffoldBackGroundColor.withOpacity(0.70),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(32.r),
                            bottomRight: Radius.circular(32.r),
                          )
                      ),
                      child: SvgPicture.asset(Assets.heart),
                    ),
                  )
                ],
              ),
              SizedBox(height: 8.h),
              // title
              Text("عنوان وارد شده",style: context.textTheme.titleMedium),
              SizedBox(height: 8.h),
              // price and time
              Row(
                children: [
                  Text("125،000 هزار تومان",style: context.textTheme.bodySmall),
                  const Spacer(),
                  Text("اجاره ساعتی",style: context.textTheme.titleSmall),
                ],
              ),
              SizedBox(height: 8.h),
              // score and features
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.bathroom,
                    height: 16.h,
                    colorFilter: const ColorFilter.mode(AppColors.greyText, BlendMode.srcIn),
                  ),
                  SizedBox(width: 6.w),
                  Text("1",style: context.textTheme.bodyMedium!.copyWith(fontSize: 16)),

                  const Spacer(),
                  Padding(
                    padding:  EdgeInsets.only(bottom: 8.h),
                    child: SvgPicture.asset(
                        Assets.bedroom,
                        height: 18.h,
                        colorFilter: const ColorFilter.mode(AppColors.greyText, BlendMode.srcIn)
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Text("2",style: context.textTheme.bodyMedium!.copyWith(fontSize: 16)),

                  const Spacer(),
                  SvgPicture.asset(Assets.star,height: 16.h),
                  SizedBox(width: 6.w),
                  Text("4",style: context.textTheme.bodyMedium!.copyWith(fontSize: 16)),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
