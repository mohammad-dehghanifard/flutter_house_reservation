import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/fake_data.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/modules/profile/widgets/reservation_history_item_widget.dart';


class ReservationHistoryPage extends StatelessWidget {
  const ReservationHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.profileHistoryTitle),
      body: ListView.builder(
        itemCount: FakeData.homeAdsList.length,
          itemBuilder: (context, index) {
          final AdsModel ads = FakeData.homeAdsList[index];
            return ReservationHistoryItemWidget(ads: ads);
          },
      ),
    );
  }
}


