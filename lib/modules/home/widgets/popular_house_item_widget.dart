import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PopularHouseItemWidget extends StatelessWidget {
  const PopularHouseItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 25.w,vertical: 4.h),
      padding: const EdgeInsets.all(8),
      height: 100.h,
      decoration: BoxDecoration(
          color: AppColors.whiteSecondary,
          borderRadius: BorderRadius.circular(16.r)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //IMAGE
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                image: const DecorationImage(
                    image: AssetImage(Assets.house2),
                    fit: BoxFit.cover
                )
            ),
          ),
          // information
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("عنوان وارد شده",style: context.textTheme.titleMedium),
                  const Spacer(),
                  // price and time
                  Row(
                    children: [
                      Text("125،000 تومان",style: context.textTheme.bodySmall),
                      const Spacer(),
                      Text("اجاره ساعتی",style: context.textTheme.titleSmall),
                    ],
                  ),
                  const Spacer(),
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
          )
        ],
      ),
    );
  }
}