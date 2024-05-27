import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/app_bar_container_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/show_avatar_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // app bar
        AppBarContainerWidget(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    // username and location
                    Column(
                      children: [
                        Text("سلام محمد دهقانی فرد عزیز",style: context.textTheme.titleMedium!.apply(color: AppColors.whiteSecondary)),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            SvgPicture.asset(Assets.location),
                            SizedBox(width: 8.w),
                            Text("استان بوشهر،شهر گناوه",style: context.textTheme.bodyMedium!.apply(color: AppColors.whiteSecondary)),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    // avatar
                    const ShowAvatarWidget()
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}




