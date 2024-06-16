import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(bottom: 70.h),
      child: ListView.builder(
          itemCount: 8,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 25.w,vertical: 8.h),
              padding: const EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.r),
                color: AppColors.lightWhite
              ),
              child: Row(
                children: [
                  // image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.r),
                    child: Image.asset(Assets.house2,height: 70.h,width: 100.w,fit: BoxFit.cover),
                  ),
                  SizedBox(width: 8.w),
                  // text
                  Expanded(
                    child: Column(
                      children: [
                         Text("رزرو شما با موفقیت ثبت و به مالک اطلاع داده شد.",maxLines: 2,overflow: TextOverflow.ellipsis,style: context.textTheme.bodySmall),
                        SizedBox(height: 20.h,),
                        // message time
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Text("3 ساعت پیش",style: context.textTheme.bodySmall!.copyWith(color: AppColors.greyText,fontSize: 12)))
                      ],
                    ),
                  ),

                ],
              ),
            );
          },
      ),
    );
  }
}
