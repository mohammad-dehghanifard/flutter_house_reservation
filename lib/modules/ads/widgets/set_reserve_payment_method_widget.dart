import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/reserve_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'payment_method_card_widget.dart';

class SetReservePaymentMethodWidget extends StatelessWidget {
  const SetReservePaymentMethodWidget({super.key, required this.price,});
  final int price;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ReserveController>(
      builder: (controller) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${AppStrings.renteePrice}:",style: context.textTheme.bodySmall!.apply(color: AppColors.greyText),),
                Text("$price  هزارتومان"),
              ],
            ),
            SizedBox(height: 16.h),
            // date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${AppStrings.renteeDate}:",style: context.textTheme.bodySmall!.apply(color: AppColors.greyText),),
                Text(controller.dateText.text),
              ],
            ),
            SizedBox(height: 16.h),
            // time
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("${AppStrings.renteeTime}:",style: context.textTheme.bodySmall!.apply(color: AppColors.greyText),),
                Text(controller.timeText.text),
              ],
            ),
            SizedBox(height: 24.h),
            // select payment method
            Text(AppStrings.selectPaymentMethod,style: context.textTheme.titleMedium,),
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PaymentMethodCardWidget(
                  text: AppStrings.onlinePaymentMethod,
                  icon: Icons.credit_card,
                  selected: controller.paymentMethod == PaymentMethod.online,
                  onTap: () => controller.changePaymentMethod(PaymentMethod.online),
                ),
                PaymentMethodCardWidget(
                  text: AppStrings.cashPaymentMethod,
                  icon: Icons.attach_money,
                  selected: controller.paymentMethod == PaymentMethod.cash,
                  onTap: () => controller.changePaymentMethod(PaymentMethod.cash),
                ),
                PaymentMethodCardWidget(
                  text: AppStrings.transferPaymentMethod,
                  icon: Icons.compare_arrows_outlined,
                  selected: controller.paymentMethod == PaymentMethod.transfer,
                  onTap: () => controller.changePaymentMethod(PaymentMethod.transfer),
                ),
              ],
            ),
            SizedBox(height: 12.h),
            // transfer card info
            RepaintBoundary(
              child: AnimatedOpacity(
                opacity: controller.paymentMethod == PaymentMethod.transfer? 1 : 0,
                duration: const Duration(milliseconds: 400),
                child: Column(
                  children: [
                    const CustomTextField(
                      label: AppStrings.transferCardNumberLabel,
                      hint: AppStrings.transferCardNumberHint,
                    ),
                    SizedBox(height: 8.h),
                    const CustomTextField(
                      label: AppStrings.transferCardNameLabel,
                      hint: AppStrings.transferCardNameHint,
                    ),
                  ],
                ),
              ),
            )
          ],
        );
      }
    );
  }
}


