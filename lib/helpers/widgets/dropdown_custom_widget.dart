import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';


class CustomDropdownWidget extends StatelessWidget {
  const CustomDropdownWidget({super.key, required this.items});
  final List<DropDownItem> items;
  @override
  Widget build(BuildContext context) {
    return CustomDropdown<DropDownItem>(
      maxlines: 1,
      decoration: CustomDropdownDecoration(
        closedFillColor: AppColors.whiteSecondary,
        expandedFillColor: AppColors.whiteSecondary,
        expandedShadow: [
          BoxShadow(color: AppColors.primary.withOpacity(0.10),blurRadius: 15,offset: const Offset(0, 5))
        ],
        closedSuffixIcon: const Icon(Icons.arrow_drop_down_sharp,color: AppColors.primary),
        expandedSuffixIcon: const Icon(Icons.arrow_drop_up,color: AppColors.primary),
      ),
      items: items,
      initialItem: items[0],
      onChanged: (value) {
        log('changing value to: ${value!.value}');
      },
    );
  }
}

class DropDownItem {
  DropDownItem({required this.title,required this.value});
  final String title,value;

  @override
  String toString() {
    return title;
  }
}