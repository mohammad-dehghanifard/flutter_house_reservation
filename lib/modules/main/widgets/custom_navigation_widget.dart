import 'package:flutter/cupertino.dart';
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
          _NavItem(onTap: () => onChangePage(0), deSelectedIcon: Assets.navHome,selectedIcon: Assets.navSelectedHome, selected: selectedPage == 0),
          _NavItem(onTap: () => onChangePage(1), deSelectedIcon: Assets.navHeart,selectedIcon: Assets.navSelectedHeart, selected: selectedPage == 1),
          _NavItem(onTap: () => onChangePage(2), deSelectedIcon: Assets.navMessage,selectedIcon: Assets.navSelectedMessage, selected: selectedPage == 2),
          _NavItem(onTap: () => onChangePage(3), deSelectedIcon: Assets.navBag,selectedIcon: Assets.navSelectedBag, selected: selectedPage == 3),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem(
      {required this.deSelectedIcon,
      required this.selected,
      required this.onTap, required this.selectedIcon});

  final String deSelectedIcon;
  final String selectedIcon;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: selected? 40.w : 0,
          height: selected? 40.h : 0,
          decoration: const BoxDecoration(
              shape: BoxShape.circle, color: AppColors.lightPurple),
        ),
        GestureDetector(
          onTap: onTap,
            child: SvgPicture.asset(
              selected? selectedIcon : deSelectedIcon,
              colorFilter: selected ? const ColorFilter.mode(AppColors.whiteSecondary, BlendMode.srcIn) : null,
              height: 18.h,)),
      ],
    );
  }
}
