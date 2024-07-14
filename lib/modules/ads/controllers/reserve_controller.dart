import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/controllers_build_id.dart';
import 'package:flutter_house_reservation/modules/ads/pages/reserve_page.dart';
import 'package:get/get.dart';
import 'package:persian_datetime_picker/persian_datetime_picker.dart';

class ReserveController extends GetxController {
//======================================== Variables ===========================
  ReservePageType pageType = ReservePageType.inputInfo;
  PaymentMethod paymentMethod = PaymentMethod.online;
  final TextEditingController dateText = TextEditingController();
  final TextEditingController timeText = TextEditingController();
//======================================== Functions ===========================

 void changePageState() {
   switch(pageType) {
     case ReservePageType.inputInfo:
      pageType = ReservePageType.setPaymentMethod;
      update();
     case ReservePageType.setPaymentMethod:
       pageType = ReservePageType.inputInfo;
       update();
   }
 }

 void changePaymentMethod(PaymentMethod newPaymentMethod) {
   paymentMethod = newPaymentMethod;
   update();
 }

 Future<void> reserveTimePicker(BuildContext context) async {
   final time = await showTimePicker(
     context: context,
     cancelText: AppStrings.cancel,
     confirmText: AppStrings.accept,
     helpText: AppStrings.timeHelper,
     barrierColor: AppColors.primary.withOpacity(0.25),
     initialTime: TimeOfDay.now(),
   );
   if(time != null) {
     final hour = time.hour.toString().length == 1? "0${time.hour}" : time.hour;
     final minute = time.minute.toString().length == 1? "0${time.minute}" : time.minute;
     timeText.text = "$minute : $hour";
     update([ControllersBuildId.reserveTime]);
   }
 }

 Future<void> reserveDatePicker(BuildContext context) async {
   final date = await showPersianDatePicker(
       context: context,
       initialDate: Jalali.now(),
       firstDate: Jalali(1403),
       lastDate: Jalali(1420));
      if(date != null) {
        final year = date.year.toString().length == 1? "0${date.year}" : date.year;
        final month = date.month.toString().length == 1? "0${date.month}" : date.month;
        final day = date.day.toString().length == 1? "0${date.day}" : date.day;
        dateText.text = "$day / $month / $year";
        update([ControllersBuildId.reserveDate]);
      }
 }
}



enum PaymentMethod {cash,transfer,online}