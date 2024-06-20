import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
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
      appBar: const CustomAppBar(title: AppStrings.comments),
      body: GetBuilder<CommentController>(
        init: CommentController(),
        builder: (commentController) {
          return Column(
            children: [
              // comment list
              Expanded(
                  child: ListView.builder(
                    itemCount: 6,
                      itemBuilder: (context, index) {
                        return  Padding(
                          padding: EdgeInsets.fromLTRB(25.w, 8.h, 25.w, 0.h),
                          child: const CommentItem(),
                        );
                      },
                  )
              ),
              // send comment
              RepaintBoundary(
                  child: Padding(
                    padding: const EdgeInsets.all(25),
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
                  ),
                )
              ],
          );
        }
      ),
    );
  }
}




