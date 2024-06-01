import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
//======================================== Variables ===========================
  final PageController navigationController = PageController();
  int selectedPageIndex = 0;
//======================================== Functions ===========================
  void onChangePage(int newPageIndex) {
    navigationController.animateToPage(newPageIndex, duration: 350.milliseconds, curve: Curves.easeIn);
    selectedPageIndex = newPageIndex;
    update();
  }
}