import 'package:get/get.dart';

class FilterAndSearchController extends GetxController {
//======================================== Variables ===========================

  int selectedScore = 0;

//======================================== Functions ===========================
  void changeScore(int newIndex) {
    selectedScore = newIndex;
    update();
  }
}