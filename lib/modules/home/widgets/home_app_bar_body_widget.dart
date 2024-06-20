import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/helpers/widgets/show_avatar_widget.dart';
import 'package:flutter_house_reservation/modules/ads/pages/filter_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeAppBarBodyWidget extends StatelessWidget {
  const HomeAppBarBodyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // username,location,avatar
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
        ),
        SizedBox(height: 4.h),
        // search and filter
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // filter button
              GestureDetector(
                onTap: () => Get.to(const FilterPage()),
                child: Container(
                  width: 40.w,
                  height: 40.h,
                  margin: EdgeInsets.only(top: 20.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      color: AppColors.secondary
                  ),
                  child: const Icon(Icons.filter_list_alt),
                ),
              ),
              SizedBox(width: 16.w),
              // search
              const Expanded(
                  child: CustomTextField(
                    suffixIconPath: Assets.search,
                    hint: AppStrings.searchHint,
                  )
              ),

            ],
          ),
        )
      ],
    );
  }
}