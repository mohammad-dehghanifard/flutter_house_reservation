import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/filter_and_search_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/dropdown_custom_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/filter_price_slider_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/select_score_item_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.filter,),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GetBuilder<FilterAndSearchController>(
          init: FilterAndSearchController(),
          builder: (buildController) {
            return Column(
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
                // filter by price
                SizedBox(height: 16.h),
                Text(AppStrings.sortByPrice,style: context.textTheme.titleMedium),
                const FilterPriceSliderWidget(),
                SizedBox(height: 16.h),
                // sort By Room
                Text(AppStrings.sortByRoom,style: context.textTheme.titleMedium),
                SizedBox(height: 8.h),
                CustomDropdownWidget(items: [
                  DropDownItem(title: 'تک خواب', value: '0'),
                  DropDownItem(title: '2 خواب', value: '1'),
                  DropDownItem(title: '3 خواب', value: '2'),
                  DropDownItem(title: 'بیشتر از 4 اتاق', value: '2'),
                ]),
                // sort by score
                SizedBox(height: 16.h),
                Text(AppStrings.sortByScore,style: context.textTheme.titleMedium),
                Wrap(
                  children: List.generate(6, (index) {
                    return  SelectScoreItemWidget(
                      onTap: () => buildController.changeScore(index),
                      selected: buildController.selectedScore == index,
                      index: index,
                    );
                  }),
                )
              ],
            );
          }
        ),
      ),
    );
  }
}





