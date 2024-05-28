import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
//======================================== Variables ===========================
  HomePageDataType selectedHomeDataType = HomePageDataType.all;

//======================================== Functions ===========================
  void changeHomeData(HomePageDataType? value) {
    selectedHomeDataType = value ?? HomePageDataType.all;
    update(["segmented"]);
  }

}

enum HomePageDataType {all,house,hall}