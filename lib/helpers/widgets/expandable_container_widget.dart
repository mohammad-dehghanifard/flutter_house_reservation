import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ExpandableCustomWidget extends StatelessWidget {
  const ExpandableCustomWidget({super.key, required this.title, required this.content});
  final String title,content;
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r)
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r)
      ),
      backgroundColor: AppColors.primary,
      collapsedBackgroundColor: AppColors.primary,
      title: Text(title),
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ListTile(title: Text(content,style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary),)),
        ),
      ],
    );
  }
}