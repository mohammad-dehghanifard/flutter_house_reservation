import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreateAdsController extends GetxController {
//======================================== Variables ===========================
  final TextEditingController facilitiesTextController = TextEditingController();
  final List<String> facilities = [];
//======================================== Functions ===========================
  void addFacilities(){
    facilities.add(facilitiesTextController.text);
    facilitiesTextController.clear();
    update();
  }
}