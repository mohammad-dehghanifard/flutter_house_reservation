import 'package:flutter/cupertino.dart';
import 'package:flutter_house_reservation/modules/ads/pages/add_new_ads_page.dart';
import 'package:get/get.dart';

class CreateAdsController extends GetxController {
//======================================== Variables ===========================
  final TextEditingController facilitiesTextController = TextEditingController();
  final List<String> facilities = [];
  CreateAdsPageState pageState = CreateAdsPageState.inputInformation;
//======================================== Functions ===========================
  void addFacilities(){
    facilities.add(facilitiesTextController.text);
    facilitiesTextController.clear();
    update();
  }

  void changePageState() {
    switch(pageState){
      case CreateAdsPageState.inputInformation:
        pageState = CreateAdsPageState.selectImages;
        update();
        break;
      case CreateAdsPageState.selectImages:
        // TODO: Handle this case.
    }
  }
}