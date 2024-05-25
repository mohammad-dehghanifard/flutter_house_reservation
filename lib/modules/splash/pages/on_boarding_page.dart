import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
import 'package:flutter_house_reservation/fake_data.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_divider.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // page view
            Expanded(
              child: PageView.builder(
                  itemCount: FakeData.onBoardingItems.length,
                  itemBuilder: (context, index) {
                    final OnBoardingModel item = FakeData.onBoardingItems[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // image
                        Container(
                          width: double.infinity,
                          height: 60.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(item.imagePath!),
                              fit: BoxFit.cover
                            )
                          ),
                        ),
                        // content
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // title
                              Text(item.title!,style: context.textTheme.titleLarge),
                              SizedBox(height: 1.h),
                              const CustomDivider(),
                              // description
                              SizedBox(height: 4.h),
                              Text(item.description!,style: context.textTheme.bodySmall!.apply(heightDelta: 0.5)),

                            ],
                          ),
                        )
                      ],
                    );
                  },),
            ),
            //indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(FakeData.onBoardingItems.length, (index) => Container(
                width: 3.w,
                height: 3.h,
                margin: EdgeInsets.only(
                  right: 2.w,
                ),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.lightBlue
                ),
              )),
            ),
            // buttons
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonWidget(onTap: () {},text: AppStrings.next,),
                  SizedBox(width: 4.w),
                  CustomButtonWidget(colorType: ButtonColorType.white,onTap:() {},text: AppStrings.previous),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
