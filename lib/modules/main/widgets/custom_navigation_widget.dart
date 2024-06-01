import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNavigation extends StatelessWidget {
  const CustomNavigation({
    super.key, required this.onChangePage, required this.selectedPage,
  });
   final Function(int newPage) onChangePage;
   final int selectedPage;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55.h,
      decoration: BoxDecoration(
          color: AppColors.darkScaffoldBackGroundColor,
          borderRadius: BorderRadius.circular(18.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(onTap: () => onChangePage(0), iconPath: Assets.navHome, selected: selectedPage == 0),
          _NavItem(onTap: () => onChangePage(1), iconPath: Assets.navMessage, selected: selectedPage == 1),
          _NavItem(onTap: () => onChangePage(2), iconPath: Assets.heart, selected: selectedPage == 2),
          _NavItem(onTap: () => onChangePage(3), iconPath: Assets.navBag, selected: selectedPage == 3),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem(
      {super.key,
      required this.iconPath,
      required this.selected,
      required this.onTap});

  final String iconPath;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GestureDetector(
          onTap: onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: selected? 40.w : 0,
            height: selected? 40.h : 0,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.lightPurple),
          ),
        ),
        SvgPicture.asset(iconPath,height: 18.h,),
      ],
    );
  }
}
