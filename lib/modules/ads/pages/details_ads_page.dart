import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/modules/ads/pages/comments_page.dart';
import 'package:flutter_house_reservation/modules/ads/pages/reserve_page.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/facilities_item_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/reservation_now_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class DetailAdsPage extends StatelessWidget {
  const DetailAdsPage({super.key, required this.ads});
  final AdsModel ads;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:  ReservationNowButton(onTap: () => Get.to(ReservePage(ads: ads,)),),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // image and location
                Container(
                  width: double.infinity,
                  height: 450.h,
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: AppColors.darkScaffoldBackGroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32.r),
                      bottomRight: Radius.circular(32.r),
                    )
                  ),
                  child: Column(
                    children: [
                      //image
                      Container(
                        width: double.infinity,
                        height: 330.h,
                        margin: EdgeInsets.only(top: 8.h),
                        decoration: BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.white.withOpacity(0.30))),
                          borderRadius: BorderRadius.circular(12.r),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primary.withOpacity(0.50),
                              blurRadius: 15,
                              offset: const Offset(0,5)
                            )
                          ]
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(ads.image,fit: BoxFit.cover,height: double.infinity,),
                            ),
                            //gradiant
                            Container(
                              width: double.infinity,
                              height: 230.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.r),
                                  gradient: LinearGradient(
                                      colors: AppGradiant.sliderGradiant,
                                      begin: FractionalOffset.bottomCenter,
                                      end: FractionalOffset.topCenter
                                  )
                              ),
                            ),
                            // title and price
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(ads.title,style: context.textTheme.titleLarge!.apply(color: AppColors.whiteSecondary)),
                                  SizedBox(height: 4.h),
                                  Text("${ads.rentType} / ${ads.price}  تومان",style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      // location
                      Row(
                        children: [
                          SvgPicture.asset(Assets.location),
                          SizedBox(width: 4.w),
                          Text("بوشهر،میدان امام، کوچه اعتماد 17،پلاک 4",style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary),)
                        ],
                      ),
                      SizedBox(height: 16.h),
                      // information
                      Row(
                        children: [
                          SvgPicture.asset(
                            Assets.bathroom,
                            height: 16.h,
                            colorFilter: const ColorFilter.mode(AppColors.greyText, BlendMode.srcIn),
                          ),
                          SizedBox(width: 6.w),
                          Text("${ads.bathroom}",style: context.textTheme.bodyMedium!.copyWith(fontSize: 16,color: AppColors.whiteSecondary)),

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
                          Text("${ads.bedroom}",style: context.textTheme.bodyMedium!.copyWith(fontSize: 16,color: AppColors.whiteSecondary)),

                          const Spacer(),
                          SvgPicture.asset(Assets.star,height: 16.h),
                          SizedBox(width: 6.w),
                          Text("${ads.score}",style: context.textTheme.bodyMedium!.copyWith(fontSize: 16,color: AppColors.whiteSecondary)),
                        ],
                      )
                    ],
                  ),
                ),
                // content
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //description
                      Text(AppStrings.description,style: context.textTheme.titleMedium),
                      Text(ads.description,style: context.textTheme.bodySmall,textAlign: TextAlign.justify),
                      SizedBox(height: 12.h),
                      //Facilities
                      Text(AppStrings.facilities,style: context.textTheme.titleMedium),
                      Wrap(
                        children: List.generate(5, (index) =>
                            const FacilitiesItemWidget(title: "پارکینگ",)
                        ),
                      ),
                      SizedBox(height: 12.h),
                      // comments
                      TextButton(onPressed: () => Get.to(const CommentsPage()), child: Text("${AppStrings.showComments}(64 نظر ثبت شده)",style: context.textTheme.titleSmall!.apply(color: AppColors.primary)))
                    ],
                  ),
                )
              ],
            ),
          )
      ),
    );
  }
}




