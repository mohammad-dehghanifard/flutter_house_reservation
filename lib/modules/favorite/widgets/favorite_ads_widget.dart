import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class FavoriteAdsWidget extends StatelessWidget {
  const FavoriteAdsWidget({
    super.key,
    required this.ads,
  });

  final AdsModel ads;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 120.h,
          child: Stack(
            children: [
              // image
              ClipRRect(
                borderRadius: BorderRadius.circular(12.r),
                child: Image.asset(ads.image,fit: BoxFit.cover,),
              ),
              //gradiant
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 90.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      gradient: LinearGradient(
                          colors: AppGradiant.sliderGradiant,
                          begin: FractionalOffset.bottomCenter,
                          end: FractionalOffset.topCenter
                      )
                  ),
                ),
              ),
              // title
              Positioned(
                  bottom: 15,
                  left: 10,
                  right: 10,
                  child: Text(
                    ads.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary),)
              ),
            ],
          ),
        ),

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
    );
  }
}