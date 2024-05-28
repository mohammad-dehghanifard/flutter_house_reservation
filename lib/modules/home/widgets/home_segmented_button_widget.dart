import 'package:flutter/cupertino.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/controllers_build_id.dart';
import 'package:flutter_house_reservation/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeSegmentedButton extends StatelessWidget {
  const HomeSegmentedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return GetBuilder<HomeController>(
        id: ControllersBuildId.homeSegmentedButton,
        builder: (buildController) {
          final Map<HomePageDataType,Widget> items ={
            HomePageDataType.all: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "همه",
                style: context.textTheme.bodyMedium!.apply(
                    color: buildController.selectedHomeDataType ==
                        HomePageDataType.all
                        ? AppColors.white
                        : AppColors.lightGrey),
              ),
            ),
            HomePageDataType.house :  Text("خانه",style: context.textTheme.bodyMedium!.apply(
                color: buildController.selectedHomeDataType ==
                    HomePageDataType.house
                    ? AppColors.white
                    : AppColors.lightGrey),),
            HomePageDataType.hall :  Text("سالن کنفرانس",style: context.textTheme.bodyMedium!.apply(
                color: buildController.selectedHomeDataType ==
                    HomePageDataType.hall
                    ? AppColors.white
                    : AppColors.lightGrey),),
          };

          return CupertinoSlidingSegmentedControl(
            padding: const EdgeInsets.all(0),
            backgroundColor: AppColors.lightWhite,
            thumbColor: AppColors.primary,
            groupValue: buildController.selectedHomeDataType,
            onValueChanged: buildController.changeHomeData,
            children: items,
          );
        }
    );
  }
}