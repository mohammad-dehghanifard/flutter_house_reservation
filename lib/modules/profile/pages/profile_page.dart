import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_colors.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/show_avatar_widget.dart';
import 'package:flutter_house_reservation/modules/profile/pages/edit_user_page.dart';
import 'package:flutter_house_reservation/modules/profile/pages/privacy_page.dart';
import 'package:flutter_house_reservation/modules/profile/pages/reservation_history_page.dart';
import 'package:flutter_house_reservation/modules/profile/pages/support_page.dart';
import 'package:flutter_house_reservation/modules/profile/widgets/profile_option_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileOptionWidget> optionList = [
      // edit user
      ProfileOptionWidget(
        onTap: () => Get.to(const EditUserPage()),
        title: AppStrings.profileChangeInfoTitle,
        subTitle: AppStrings.profileChangeInfoSubTitle,
        icon: Icons.person,
      ),
      //support
      ProfileOptionWidget(
        onTap: () => Get.to(const SupportPage()),
        title: AppStrings.profileSupportTitle,
        subTitle: AppStrings.profileSupportSubTitle,
        icon: Icons.support_agent,
      ),
      //privacy
      ProfileOptionWidget(
        onTap: () => Get.to(const PrivacyPage()),
        title: AppStrings.profilePrivacyTitle,
        subTitle: AppStrings.profilePrivacySubTitle,
        icon: Icons.privacy_tip,
      ),
      // history
      ProfileOptionWidget(
        onTap: () => Get.to(const ReservationHistoryPage()),
        title: AppStrings.profileHistoryTitle,
        subTitle: AppStrings.profileHistorySubTitle,
        icon: Icons.history,
      ),
      // user ads
      ProfileOptionWidget(
        onTap: () {},
        title: AppStrings.profileYourAdsTitle,
        subTitle: AppStrings.profileYourAdsSubTitle,
        icon: Icons.publish,
      ),
      // log out
      ProfileOptionWidget(
        onTap: () {},
        title: AppStrings.profileLogOutTitle,
        subTitle: AppStrings.profileLogOutSubTitle,
        icon: Icons.logout,
      ),
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          // header
          Container(
            width: double.infinity,
            height: 160.h,
            padding: const EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36.r)
              ),
              color: AppColors.darkScaffoldBackGroundColor
            ),
            child:  Row(
              children: [
                // avatar
                const ShowAvatarWidget(
                    width: 100,
                    height: 100,
                  ),
                SizedBox(width: 12.w),
                // info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("محمد دهقانی فرد",style: context.textTheme.titleMedium!.apply(color: AppColors.whiteSecondary)),
                    Text("09395509227",style: context.textTheme.bodySmall!.apply(color: AppColors.whiteSecondary)),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 12.h),
          // options
          ListView.builder(
              itemCount: optionList.length,
              shrinkWrap: true,
              itemBuilder: (context, index) => ProfileOptionWidget(
                  onTap: optionList[index].onTap,
                  title: optionList[index].title,
                  subTitle: optionList[index].subTitle,
                  icon: optionList[index].icon
              ),
          ),
        ],
      ),
    );
  }
}


