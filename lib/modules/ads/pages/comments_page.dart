import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkScaffoldBackGroundColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(AppStrings.comments),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                  itemCount: 6,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          children: [
                            // user image , name , score
                            Row(
                              children: [
                                // image
                                Container(
                                  width: 55.w,
                                  height: 55.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.r),
                                    color: AppColors.primary
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                // username And score
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("محمد دهقانی فرد",style: context.textTheme.titleSmall),
                                    Row(
                                      children: [
                                        SvgPicture.asset(Assets.star),
                                        SizedBox(width: 8.w),
                                        Text("5",style: context.textTheme.titleSmall),
                                      ],
                                    )
                                  ],
                                )

                              ],
                            ),

                            // comment
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 12.h),
                              padding: const EdgeInsets.all(12),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: AppColors.lightWhite,
                                borderRadius: BorderRadius.circular(12.r)
                              ),
                              child: Text("همه چیز بسیار عالی بود",style: context.textTheme.bodySmall),
                            )
                          ],
                        ),
                      );
                    },
                )
            ),
            CustomButtonWidget(
              width: double.infinity,
                colorType: ButtonColorType.orange,
                onTap: () {},
                text: AppStrings.sendComment)
          ],
        ),
      ),
    );
  }
}
