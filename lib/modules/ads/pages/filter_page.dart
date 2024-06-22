import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/dropdown_custom_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/filter_price_slider_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';


class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.filter,),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // sort By Rent Type
            Text(AppStrings.sortByRentType,style: context.textTheme.titleMedium),
            SizedBox(height: 8.h),
            CustomDropdownWidget(items: [
              DropDownItem(title: 'اجاره ساعتی', value: '0'),
              DropDownItem(title: 'اجاره روزانه', value: '1'),
              DropDownItem(title: 'اجاره سالانه', value: '2'),
            ]),

            SizedBox(height: 16.h),
            Text(AppStrings.sortByPrice,style: context.textTheme.titleMedium),
            const FilterPriceSliderWidget(),
          ],
        ),
      ),
    );
  }
}




