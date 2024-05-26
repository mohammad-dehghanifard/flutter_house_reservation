import 'dart:async';

import 'package:get/get.dart';

class AuthController extends GetxController {
   //======================================== Variables ===========================
   AuthPageType pageType = AuthPageType.sendOtp;
   int resendOtpTime = 18;
   Timer? _timer;

   //======================================== Functions ===========================

   void _updateTimer(){
      resendOtpTime--;
      update();
   }

   void resetTimer() {
      resendOtpTime = 18;
      startTimer();
   }

   void startTimer() {
      if (_timer != null) {
         _timer!.cancel();
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

   void changePageState() {
      switch(pageType){
        case AuthPageType.sendOtp:
           pageType = AuthPageType.confirmOtp;
           startTimer();
           update();
        case AuthPageType.confirmOtp:
           pageType = AuthPageType.register;
           update();
         case AuthPageType.register :

      }
   }
}


enum AuthPageType {sendOtp,confirmOtp,register}