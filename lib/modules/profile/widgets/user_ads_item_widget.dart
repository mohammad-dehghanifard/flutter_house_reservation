
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserAdsItemWidget extends StatelessWidget {
  const UserAdsItemWidget({super.key, required this.ads, required this.index});
  final AdsModel ads;
  final int index;

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
                image:  DecorationImage(
                    image: AssetImage(ads.image),
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
                  Text(ads.title,style: context.textTheme.titleMedium,maxLines: 1,overflow: TextOverflow.ellipsis,),
                  const Spacer(),
                  // price and time
                  Row(
                    children: [
                      Text("${ads.price} تومان",style: context.textTheme.bodySmall),
                      const Spacer(),
                      Text(ads.rentType,style: context.textTheme.titleSmall),
                    ],
                  ),
                  const Spacer(),
                  // ads state
                  index % 2 == 0 ? const _ExpiredAds() : index == 3 ? const _WaitingAds()  : const _PublishAds()

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _ExpiredAds extends StatelessWidget {
  const _ExpiredAds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: AppColors.redColor.withOpacity(0.30),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(child: Text("منسوخ شده",style: context.textTheme.bodyMedium!.apply(color: AppColors.redColor,fontSizeFactor: 0.80))),
    );
  }
}

class _PublishAds extends StatelessWidget {
  const _PublishAds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: AppColors.greenColor.withOpacity(0.30),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(child: Text("منتشر شده",style: context.textTheme.bodyMedium!.apply(color: AppColors.greenColor,fontSizeFactor: 0.80))),
    );
  }
}

class _WaitingAds extends StatelessWidget {
  const _WaitingAds({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 20.h,
      decoration: BoxDecoration(
        color: AppColors.secondary.withOpacity(0.30),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(child: Text("در انتظار تایید",style: context.textTheme.bodyMedium!.apply(color: AppColors.secondary,fontSizeFactor: 0.80))),
    );
  }
}
