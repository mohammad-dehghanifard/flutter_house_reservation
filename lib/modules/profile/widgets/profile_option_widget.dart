import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileOptionWidget extends StatelessWidget {
  const ProfileOptionWidget({
    super.key, required this.onTap, required this.title, required this.subTitle, required this.icon,
  });
  final Function() onTap;
  final String title,subTitle;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        title: Text(title,style: context.textTheme.bodySmall),
        subtitle: Text(subTitle,style: context.textTheme.bodySmall!.apply(color: AppColors.greyText,fontSizeFactor: 0.8)),
        leading: Container(
          width: 50.w,
          height: 60.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: AppColors.lightBeige
          ),
          child:  Icon(
            icon,
            color: AppColors.secondary,
            size: 32,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios_sharp,color: AppColors.lightBlue,),
    );
  }
}