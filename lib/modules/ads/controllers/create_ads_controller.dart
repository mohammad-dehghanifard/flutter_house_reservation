import 'package:flutter/cupertino.dart';
import 'package:flutter_house_reservation/modules/ads/pages/add_new_ads_page.dart';
import 'package:flutter_house_reservation/modules/ads/pages/result_create_ads_page.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateAdsController extends GetxController {
//======================================== Variables ===========================
  final TextEditingController facilitiesTextController = TextEditingController();
  final List<String> facilities = [];
  final List<String> images = [];
  CreateAdsPageState pageState = CreateAdsPageState.inputInformation;
//======================================== Functions ===========================
  void addFacilities(){
    facilities.add(facilitiesTextController.text);
    facilitiesTextController.clear();
    update();
  }

  Future<void> addImage(ImageSource source) async {
    final picker =  ImagePicker();
    final response = await picker.pickImage(source: source);
    if(response != null ) {
      images.add(response.path);
      update();
    }
  }

  void changePageState() {
    switch(pageState){
      case CreateAdsPageState.inputInformation:
        pageState = CreateAdsPageState.selectImages;
        update();
        break;
      case CreateAdsPageState.selectImages:
        pageState = CreateAdsPageState.setPrice;
        update();
        break;
      case CreateAdsPageState.setPrice:
        Get.off(const ResultCreateAdsPage());
    }
  }

  void backState() {
    switch(pageState){
      case CreateAdsPageState.inputInformation:
        break;
      case CreateAdsPageState.selectImages:
        pageState = CreateAdsPageState.inputInformation;
        update();
        break;
      case CreateAdsPageState.setPrice:
        pageState = CreateAdsPageState.selectImages;
        update();
        break;
    }
  }
}