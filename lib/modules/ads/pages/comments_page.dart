import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_button_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_text_field.dart';
import 'package:flutter_house_reservation/modules/ads/controllers/comment_controller.dart';
import 'package:flutter_house_reservation/modules/ads/widgets/Rating_Bar_Widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../widgets/comment_item.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.darkScaffoldBackGroundColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(AppStrings.comments),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: GetBuilder<CommentController>(
          init: CommentController(),
          builder: (commentController) {
            return Column(
              children: [
                // comment list
                Expanded(
                    child: ListView.builder(
                      itemCount: 6,
                        itemBuilder: (context, index) {
                          return const Padding(
                            padding: EdgeInsets.only(bottom: 8),
                            child: CommentItem(),
                          );
                        },
                    )
                ),
                // send comment
                RepaintBoundary(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 500),
                      child: !commentController.sendComment
                          ? CustomButtonWidget(
                              width: double.infinity,
                              colorType: ButtonColorType.orange,
                              onTap: () => commentController.changePageState(),
                              text: AppStrings.sendComment)
                          : Column(
                              children: [
                                const CustomTextField(
                                  hasBorder: true,
                                  hint: AppStrings.inputCommentHint,
                                  maxLine: 3,
                                ),
                                SizedBox(height: 12.h),
                                const RatingBarWidget(),
                                SizedBox(height: 12.h),
                                CustomButtonWidget(
                                    colorType: ButtonColorType.orange,
                                    onTap: () =>
                                        commentController.changePageState(),
                                    text: AppStrings.sendComment),
                              ],
                            ),
                    ),
                  )
                ],
            );
          }
        ),
      ),
    );
  }
}




