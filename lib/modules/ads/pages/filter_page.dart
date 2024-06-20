import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/dropdown_custom_widget.dart';


class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(title: AppStrings.filter,),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(
          children: [
            CustomDropdownWidget(items: [
              DropDownItem(title: 'اجاره ساعتی', value: '0'),
              DropDownItem(title: 'اجاره روزانه', value: '1'),
              DropDownItem(title: 'اجاره سالانه', value: '2'),
            ])
          ],
        ),
      ),
    );
  }
}


