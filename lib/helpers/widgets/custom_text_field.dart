import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.controller,
    this.label,
    this.hint,
    this.showLabel = true,
    this.inputType = TextInputType.text,
    this.validator,
    this.suffixIconPath,
    this.maxLine = 1,
    this.hasBorder = false,
    this.onTap,
  });

  final TextEditingController? controller;
  final String? label;
  final String? hint;
  final String? suffixIconPath;
  final bool showLabel;
  final bool hasBorder;
  final int maxLine;
  final TextInputType inputType;
  final String? Function(String?)? validator;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label ?? "",style: context.textTheme.titleMedium!.apply(fontSizeFactor: 0.9)),
        SizedBox(height: 4.h),
        TextFormField(
          onTap: onTap,
          maxLines: maxLine,
          controller: controller,
          keyboardType: inputType,
          validator: validator,
          style: context.textTheme.bodySmall,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(16),
            filled: true,
            hintText: hint,
            suffixIcon: suffixIconPath!= null ? Padding(
              padding: const EdgeInsets.all(12),
              child: SvgPicture.asset(suffixIconPath!),
            ) : null,
            hintStyle: context.textTheme.bodySmall!.apply(color: AppColors.lightGrey),
            fillColor: AppColors.whiteSecondary,
            enabledBorder: OutlineInputBorder(
              borderSide: hasBorder? const BorderSide(color: AppColors.secondary) :BorderSide.none,
              borderRadius: BorderRadius.circular(8.r)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: hasBorder? const BorderSide(color: AppColors.secondary) :BorderSide.none,
                borderRadius: BorderRadius.circular(8.r)
            ),
          ),
        ),
      ],
    );
  }
}
