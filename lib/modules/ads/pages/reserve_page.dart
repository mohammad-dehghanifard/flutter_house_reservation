import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/reserve_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/input_reserve_info_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/set_reserve_payment_method_widget.dart';
import 'package:flutter_house_reservation/modules/home/widgets/popular_house_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class ReservePage extends StatelessWidget {
  const ReservePage({super.key, required this.ads});
  final AdsModel ads;
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<ReserveController>(
      init: ReserveController(),
      builder: (controller) {
        return Scaffold(
          appBar: const CustomAppBar(title: AppStrings.reserve),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButtonWidget(
              onTap: () {},
              text: AppStrings.next,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(25.0),
            child: SingleChildScrollView(child: Column(
              children: [
                PopularHouseItemWidget(ads: ads),
                SizedBox(height: 24.h),
                controller.pageType == ReservePageType.inputInfo? SetReservePaymentMethodWidget(price: ads.price) :InputReserveInfoWidget(),
              ],
            )),
          ),
        );
      }
    );
  }
}



enum ReservePageType {inputInfo,setPaymentMethod}
