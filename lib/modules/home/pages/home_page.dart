import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/app_bar_container_widget.dart';
import 'package:flutter_house_reservation/modules/home/controllers/home_controller.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_app_bar_body_widget.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_segmented_button_widget.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_slider_widget.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_tag_widget.dart';
import 'package:flutter_house_reservation/modules/home/widgets/user_suggestion_home_item_widget.dart';
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
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: HomeSegmentedButton(),
                ),
              ),
              // slider
              const SliverToBoxAdapter(child: HomeSliderWidget()),
              // suggestion  for user header
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 16.0, 25.0, 12.0),
                  child: Text(AppStrings.suggestionForYou,style: context.textTheme.titleMedium),
                ),
              ),
              // tag list
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80,
                  child: ListView.builder(
                    itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.only(right: index == 0? 25 : 0),
                          child: HomeTagWidget(index: index,),
                        );
                      },
                  ),
                ),
              ),
              //suggestion  for user list
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 300.h,
                  child: ListView.builder(
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding:  EdgeInsets.only(
                            top: 16.h,
                            left: 24.w,
                            right: index == 0? 25.w : 0
                          ),
                          child: const UserSuggestionHomeItemWidget(),
                        );
                      },
                  ),
                ),
              )
            ],
          );
        });
  }
}



