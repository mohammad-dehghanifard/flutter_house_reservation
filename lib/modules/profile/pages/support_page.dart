import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/constants/assets.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/helpers/widgets/dropdown_custom_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportPage extends StatelessWidget {
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: AppStrings.profileSupportTitle),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset(Assets.support,height: 200.h,)),
              SizedBox(height: 24.h),
              const Text(AppStrings.selectDepartmentSupport),
              SizedBox(height: 12.h),
              // Drop Down
              CustomDropdownWidget(items: [
                DropDownItem(title: "امور مالی", value: "0"),
                DropDownItem(title: "مشکلات فنی", value: "1"),
                DropDownItem(title: "ثبت شکایت", value: "2"),
                DropDownItem(title: "گزارش آگهی", value: "3"),
                DropDownItem(title: "انتقادات و پشینهادات", value: "5"),
              ]),
              SizedBox(height: 12.h),
              // forms
              const CustomTextField(hasBorder: true,hint: AppStrings.inputTicketTitleHint),
              const CustomTextField(hasBorder: true,hint: AppStrings.inputTicketMessageHint,maxLine: 5),
              // buttons
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomButtonWidget(onTap: () {},text: AppStrings.sendTicket),
                    CustomButtonWidget(onTap: () {},colorType: ButtonColorType.orange,text: AppStrings.forceSupport)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
