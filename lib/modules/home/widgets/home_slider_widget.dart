import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_slider_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSliderWidget extends StatelessWidget {
  const HomeSliderWidget({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final list = [
      Assets.house2,
      Assets.house1,
      Assets.house3,
    ];

    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return HomeSliderItem(imagePath: list[index]);
      },
      itemCount: 3,
      itemWidth: 300.0.w,
      itemHeight: 320.0.h,
      layout: SwiperLayout.TINDER,
    );
  }
}