import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
import 'package:flutter_house_reservation/fake_data.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_divider.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        CustomDivider(),
                      ],
                    ),
                  )
                ],
              );
            },),
      ),
    );
  }
}
