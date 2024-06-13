import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/constants/controllers_build_id.dart';
import 'package:flutter_house_reservation/modules/home/controllers/home_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeTagWidget extends StatelessWidget {
  const HomeTagWidget({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: ControllersBuildId.homeTag,
        builder: (buildController) {
          final bool selected = buildController.selectedTag == index;
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => buildController.updateTag(index),
                child: RepaintBoundary(
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 700),
                    margin:  EdgeInsets.symmetric(horizontal: 6.w),
                    width: 135.w,
                    height: 60.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        color: selected? AppColors.lightBlue :AppColors.lightWhite
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // image
                        SizedBox(
                            width: 45.w,
                            height: 45.h,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.asset(Assets.house2,fit: BoxFit.cover))),
                        Text(
                          "آپارتمان",
                          style: context.textTheme.titleMedium!.apply(
                              color: selected? AppColors.primary : AppColors.greyText
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        }
    );
  }
}