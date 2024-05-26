import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key,  this.width = 128,  this.height = 1});
  final double width,height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      color: context.theme.colorScheme.secondary,
    );
  }
}
