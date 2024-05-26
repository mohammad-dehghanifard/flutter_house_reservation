import 'dart:async';

import 'package:get/get.dart';

class AuthController extends GetxController {
   //======================================== Variables ===========================
   AuthPageType pageType = AuthPageType.sendOtp;
   int resendOtpTime = 12;
   Timer? _timer;

   //======================================== Functions ===========================

   void _updateTimer(){
      resendOtpTime--;
      update();
   }

   void resetTimer() {
      resendOtpTime = 12;
      startTimer();
   }

   void startTimer() {
      if (_timer != null) {
         _timer!.cancel(); // Cancel the existing timer
      }

      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
         if (resendOtpTime > 0) {
            _updateTimer();
         } else {
            _timer!.cancel();
            _timer = null;
         }
      });
   }
}


enum AuthPageType {sendOtp,confirmOtp,register}