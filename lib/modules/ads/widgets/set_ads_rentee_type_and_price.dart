import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/helpers/widgets/dropdown_custom_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetAdsRenteeTypeAndPrice extends StatelessWidget {
  const SetAdsRenteeTypeAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppStrings.setRentType,style: context.textTheme.titleMedium),
        SizedBox(height: 8.h),
        // select rentee type
        CustomDropdownWidget(items: [
          DropDownItem(title: 'اجاره ساعتی', value: '0'),
          DropDownItem(title: 'اجاره روزانه', value: '1'),
          DropDownItem(title: 'اجاره سالانه', value: '2'),
        ]),
        SizedBox(height: 12.h),
        const CustomTextField(
          label: AppStrings.inputAdsRenteePriceLabel,
          hint: AppStrings.inputRenteePriceHint,
          inputType: TextInputType.number,
        ),
        SizedBox(height: 12.h),
        // set payment type
        Text(AppStrings.setPaymentType,style: context.textTheme.titleMedium),
        SizedBox(height: 8.h),
        // select rentee type
        CustomDropdownWidget(items: [
          DropDownItem(title: 'پرداخت آنلاین', value: '0'),
          DropDownItem(title: 'پرداخت نقدی در محل', value: '1'),
          DropDownItem(title: 'کارت به کارت', value: '2'),
          DropDownItem(title: 'همه موارد(به انتخاب مستاجر)', value: '3'),
        ]),
      ],
    );
  }
}