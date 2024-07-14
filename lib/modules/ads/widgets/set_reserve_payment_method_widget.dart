
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/reserve_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

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
            )
          ],
        );
      }
    );
  }
}

class PaymentMethodCardWidget extends StatelessWidget {
  const PaymentMethodCardWidget({
    super.key,
    required this.icon,
    required this.text,
    this.selected = false, required this.onTap,
  });
  final IconData icon;
  final String text;
  final bool selected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 700),
        width: 100.w,
        height: 100.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: selected? AppColors.lightBlue :AppColors.lightWhite
        ),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,color: AppColors.greyText,size: 48,),
            SizedBox(height: 4.h),
            Text(text,style: context.textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
