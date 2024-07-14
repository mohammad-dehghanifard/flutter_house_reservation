import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/input_reserve_info_widget.dart';


class ReservePage extends StatelessWidget {
  const ReservePage({super.key, required this.ads});
  final AdsModel ads;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
        child: InputReserveInfoWidget(ads: ads),
      ),
    );
  }
}



enum ReservePageType {inputInfo,setPaymentMethod}
