import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ReservationHistoryItemWidget extends StatelessWidget {
  const ReservationHistoryItemWidget({
    super.key,
    required this.ads,
  });

  final AdsModel ads;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 20.h),
      margin: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 12.0),
      width: double.infinity,
      height: 188.h,
      decoration: BoxDecoration(
          color: AppColors.lightWhite,
          border:  Border(bottom: BorderSide(color: AppColors.primary.withOpacity(0.30),width: 3)),
          borderRadius: BorderRadius.circular(12.r)
      ),
      child: Column(
        children: [
          // title and date
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 180.w,
                  child: Text(ads.title,style: context.textTheme.titleMedium,maxLines: 1,overflow: TextOverflow.ellipsis,)),
              Text("تاریخ : 1403/04/02",style: context.textTheme.bodySmall!.copyWith(fontSize: 12,color: AppColors.greyText)),
            ],
          ),
          SizedBox(height: 16.h),
          // image and rent type
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60.w,
                height: 45.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ads.image),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(6.r)
                ),
              ),
              Text("نوع اجاره :  ${ads.rentType}",style: context.textTheme.bodySmall!.copyWith(fontSize: 12,color: AppColors.greyText)),

            ],
          ),
          SizedBox(height: 6.h),
          // divider
          Divider(color: AppColors.secondary.withOpacity(0.30)),
          SizedBox(height: 6.h),
          // buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonWidget(onTap: () {}, text: AppStrings.sendComment),
              CustomButtonWidget(onTap: () {}, text: AppStrings.sendReport,colorType: ButtonColorType.orange),
            ],
          )
        ],
      ),
    );
  }
}