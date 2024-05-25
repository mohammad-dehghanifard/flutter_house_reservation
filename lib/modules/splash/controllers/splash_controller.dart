import 'package:flutter_house_reservation/modules/splash/pages/on_boarding_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
//======================================== Variables ===========================

//======================================== Functions ===========================
  Future<void> _navigateToMainScreen() async {
    await Future.delayed(3.seconds);
    Get.offAll(const OnBoardingPage());
  }

  @override
  void onInit() {
    _navigateToMainScreen();
    super.onInit();
  }
}