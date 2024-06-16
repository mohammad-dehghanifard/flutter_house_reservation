import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/backend/models/ads_model.dart';
import 'package:flutter_house_reservation/fake_data.dart';
import 'package:flutter_house_reservation/modules/favorite/widgets/favorite_ads_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 0
          ),
          itemCount: FakeData.homeAdsList.length,
          itemBuilder: (context, index) {
            final AdsModel ads = FakeData.homeAdsList[index];
            return FavoriteAdsWidget(ads: ads);
          },),
    );
  }
}


