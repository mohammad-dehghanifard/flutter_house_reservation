import 'package:flutter_house_reservation/helpers/constants/controllers_build_id.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
//======================================== Variables ===========================
  HomePageDataType selectedHomeDataType = HomePageDataType.all;

//======================================== Functions ===========================
  void changeHomeData(HomePageDataType? value) {
    selectedHomeDataType = value ?? HomePageDataType.all;
    update([ControllersBuildId.homeSegmentedButton]);
  }

}

enum HomePageDataType {all,house,hall}