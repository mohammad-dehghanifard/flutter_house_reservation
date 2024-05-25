import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
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
}