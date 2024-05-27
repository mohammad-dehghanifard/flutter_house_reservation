import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/widgets/app_bar_container_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // app bar
        AppBarContainerWidget(
          child: Column(
            children: [
              Text("سلام محمد دهقانی فرد عزیز",style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary)),
              Row(
                children: [
                  SvgPicture.asset('assetName')
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}


