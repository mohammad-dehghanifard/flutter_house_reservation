import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
import 'package:flutter_house_reservation/backend/models/slider_model.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';

class FakeData {
  FakeData._();
  static List<OnBoardingModel> onBoardingItems = [
    OnBoardingModel(
      title: "عنوان اول",
      description: "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.",
      imagePath: Assets.onBoarding1
    ),
    OnBoardingModel(
        title: "عنوان دوم",
        description: "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.",
        imagePath: Assets.onBoarding2
    ),
    OnBoardingModel(
        title: "عنوان سوم",
        description: "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.",
        imagePath: Assets.onBoarding3
    )
  ];

  static List<SliderModel> homeSlider = [
    SliderModel(image: Assets.house1, title: "آپارتمان 90 متری شیک", neighbourhood: "عاشوری", rentType: "اجاره ماهانه", favorite: false),
    SliderModel(image: Assets.house2, title: "آپارتمان تک خواب", neighbourhood: "با هنر", rentType: "اجاره سالانه", favorite: false),
    SliderModel(image: Assets.house3, title: "خانه ویلایی 150 متری نوساز", neighbourhood: "امام زاده", rentType: "اجاره ساعتی", favorite: false),
  ];
}