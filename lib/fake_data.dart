import 'package:flutter_house_reservation/backend/models/on_boarding_model.dart';
import 'package:flutter_house_reservation/backend/models/slider_model.dart';
import 'package:flutter_house_reservation/backend/models/tag_model.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';

import 'backend/models/ads_model.dart';

class FakeData {
  FakeData._();

  static const lorem = "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد.";
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

  static List<TagModel> homeTagList = [
    TagModel(title: "آپارتمان", image: Assets.house2),
    TagModel(title: "ویلایی", image: Assets.house1),
    TagModel(title: "دوبلکس", image: Assets.house3),
    TagModel(title: "مدرن", image: Assets.house2),
  ];

  static List<AdsModel> homeAdsList = [
    AdsModel(image: Assets.house1, title: "خانه نو ساز و شیک", description: lorem, score: 5, bedroom: 2, bathroom: 1, price: 125000,rentType: 'اجاره سالانه'),
    AdsModel(image: Assets.house2, title: "سوییت مبله", description: lorem, score: 3, bedroom: 0, bathroom: 1, price: 250000,rentType: 'اجاره ساعتی'),
    AdsModel(image: Assets.house3, title: "آپارتمان 95 متری", description: lorem, score: 4, bedroom: 3, bathroom: 1, price: 700000,rentType: 'اجاره روزانه'),
    AdsModel(image: Assets.house2, title: "خانه باغ بزرگ همراه با استخر و جکوزی", description: lorem, score: 5, bedroom: 4, bathroom: 2, price: 950000,rentType: 'اجاره روزانه'),
    AdsModel(image: Assets.house3, title: "خانه ویلایی بزرگ و دلباز", description: '', score: 2, bedroom: 2, bathroom: 1, price: 50000000,rentType: 'اجاره سالانه'),
    AdsModel(image: Assets.house1, title: "آپارتمان 150 متری", description: lorem, score: 4, bedroom: 3, bathroom: 2, price: 900000,rentType: 'اجاره روزانه'),
  ];
}