import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: Text(title),
        backgroundColor: AppColors.darkScaffoldBackGroundColor,
        centerTitle: true,
        actions: const [
          _AppBarBackButton(),
        ]
    );
  }

  @override
  Widget get child => this;

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}

class _AppBarBackButton extends StatelessWidget {
  const _AppBarBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.back(),
      child: Container(
        width: 35.w,
        height: 35.h,
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.lightBlue.withOpacity(0.50)),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: const Icon(Icons.arrow_forward_ios_outlined),
      ),
    );
  }
}