import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
//======================================== Variables ===========================

  final PageController pageController = PageController();
  int selectedPage = 0;

//======================================== Functions ===========================
  void changePage({bool previous = false}) {
    pageController.animateToPage(
        !previous
            ? pageController.page!.toInt() + 1
            : pageController.page!.toInt() - 1,
        duration: 400.milliseconds,
        curve: Curves.easeIn);
    _updateIndicator(previous);
  }

  void onChangePage(int newPage) {
    selectedPage = newPage;
    update();
  }

  _updateIndicator(bool previous) {
    if(!previous && pageController.page!.toInt() < 2) {
      selectedPage = pageController.page!.toInt() + 1;
      update();
    } else if(previous && pageController.page!.toInt() <= 2) {
      selectedPage = pageController.page!.toInt() - 1;
      update();
    }
  }
}