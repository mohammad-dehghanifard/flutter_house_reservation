import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class HomeSliderItem extends StatelessWidget {
  const HomeSliderItem({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      fit: StackFit.expand,
      children: [
        //image
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
        // gradiant
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            width: double.infinity,
            height: 180.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: AppGradiant.sliderGradiant,
                    begin: FractionalOffset.bottomCenter,
                    end: FractionalOffset.topCenter
                )
            ),
          ),
        ),
        // data
        Positioned(
          bottom: 10.h,
          left: 25.w,
          right: 25.w,
          child: Column(
            children: [
              // title and heart icon
              Row(
                children: [
                  Text("عنوان وارد شده",style: context.textTheme.titleLarge!.apply(color: AppColors.whiteSecondary),),
                  const Spacer(),
                  SvgPicture.asset(Assets.heart,colorFilter: const ColorFilter.mode(AppColors.whiteSecondary, BlendMode.srcIn),)
                ],
              ),
              SizedBox(height: 8.h),
              // information
              Row(
                children: [
                  Text("اجاره ساعتی",style: context.textTheme.titleMedium!.apply(color: AppColors.whiteSecondary),),
                  const Spacer(),
                  Text("نام محله",style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary),),

                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}