import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/modules/favorite/pages/favorite_page.dart';
import 'package:flutter_house_reservation/modules/home/pages/home_page.dart';
import 'package:flutter_house_reservation/modules/main/controllers/navigation_controller.dart';
import 'package:flutter_house_reservation/modules/main/widgets/custom_navigation_widget.dart';
import 'package:flutter_house_reservation/modules/messages/pages/messages_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<NavigationController>(
          init: NavigationController(),
          builder: (buildController) {
            return Stack(
              children: [
                PageView(
                 physics: const NeverScrollableScrollPhysics(),
                  controller: buildController.navigationController,
                  children: const [
                    HomePage(),
                    FavoritePage(),
                    MessagePage(),
                    ScreenTest(),
                  ],
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 25.h,vertical: 10.h),
                    child:  CustomNavigation(
                      onChangePage: (newPage) => buildController.onChangePage(newPage),
                      selectedPage: buildController.selectedPageIndex,
                    ),
                  ),
                ),
              ],
            );
          }
        ),
      ),
    );
  }
}




class ScreenTest extends StatelessWidget {
  const ScreenTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.amber,
    );
  }
}

