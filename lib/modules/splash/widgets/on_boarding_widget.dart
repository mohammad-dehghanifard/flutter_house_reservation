import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_divider.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OnBoardingWidget extends StatelessWidget {
  const OnBoardingWidget({
    super.key,
    required this.item,
  });

  final OnBoardingModel item;

  @override
  Widget build(BuildContext context) {
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
  }
}