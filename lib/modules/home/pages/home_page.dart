import 'package:flutter/cupertino.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/widgets/app_bar_container_widget.dart';
import 'package:flutter_house_reservation/modules/home/controllers/home_controller.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_app_bar_body_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (buildController) {
        return CustomScrollView(
           slivers: [
             // App Bar
             const SliverToBoxAdapter(
               child: AppBarContainerWidget(
                 child: Padding(
                   padding: EdgeInsets.all(16.0),
                   child: HomeAppBarBodyWidget(),
                 ),
               ),
             ),
             // Sized box
             SliverToBoxAdapter(
               child: SizedBox(height: 16.h),
             ),
             // segmented button
             SliverToBoxAdapter(
               child: Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 25.0),
                 child: HomeSegmentedButton(),
               ),
             )
           ],
        );
      }
    );
  }
}

class HomeSegmentedButton extends StatelessWidget {
  const HomeSegmentedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {


    return GetBuilder<HomeController>(
      id: "segmented",
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






