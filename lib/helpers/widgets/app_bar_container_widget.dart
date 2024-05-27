import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarContainerWidget extends StatelessWidget {
  const AppBarContainerWidget({
    super.key,  this.height = 150, required this.child,
  });
  final double height;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: height.h,
        decoration:  BoxDecoration(
            color: AppColors.darkScaffoldBackGroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40.r),
            )
        ),
        child: child
    );
  }
}