import 'package:flutter_house_reservation/modules/main/pages/main_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
//======================================== Variables ===========================

//======================================== Functions ===========================
  Future<void> _navigateToMainScreen() async {
    await Future.delayed(3.seconds);
    Get.offAll(const MainPage());
  }

  @override
  void onInit() {
    _navigateToMainScreen();
    super.onInit();
  }
}