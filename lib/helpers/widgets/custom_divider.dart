import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key,  this.width = 64,  this.height = 0.2});
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
