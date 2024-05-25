import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
import 'package:flutter_house_reservation/fake_data.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/modules/main/pages/main_page.dart';
import 'package:flutter_house_reservation/modules/splash/controllers/on_boarding_controller.dart';
import 'package:flutter_house_reservation/modules/splash/widgets/on_boarding_page_indicator_widget.dart';
import 'package:flutter_house_reservation/modules/splash/widgets/on_boarding_widget.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<OnBoardingController>(
          init: OnBoardingController(),
          builder: (buildController) {
            return Column(
              children: [
                // page view
                Expanded(
                  child: PageView.builder(
                    controller: buildController.pageController,
                      itemCount: FakeData.onBoardingItems.length,
                      onPageChanged: buildController.onChangePage,
                      itemBuilder: (context, index) {
                        final OnBoardingModel item = FakeData.onBoardingItems[index];
                        return OnBoardingWidget(item: item);
                      },),
                ),
                //indicator
                const OnBoardingPageIndicatorWidget(),
                // buttons
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomButtonWidget(
                        onTap: () => buildController.selectedPage < 2? buildController.changePage() : Get.offAll(const MainPage()),
                        text: buildController.selectedPage == 2? AppStrings.lestGo : AppStrings.next),
                      SizedBox(width: 4.w),
                      // back button
                      Visibility(
                        visible: buildController.selectedPage > 0,
                          maintainAnimation: true,
                          maintainState: true,
                          child:AnimatedOpacity(
                            opacity: buildController.selectedPage > 0 ? 1 : 0,
                            duration: 1.seconds,
                            curve: Curves.fastOutSlowIn,
                            child: CustomButtonWidget(
                          colorType: ButtonColorType.white,
                          onTap:() => buildController.changePage(previous: true),
                          text: AppStrings.previous),)
                      )
                    ],
                  ),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}




