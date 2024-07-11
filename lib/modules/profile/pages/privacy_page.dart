import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/widgets/custom_app_bar_widget.dart';
import 'package:flutter_house_reservation/helpers/widgets/expandable_container_widget.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: AppStrings.profilePrivacyTitle),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: List.generate(6, (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: ExpandableCustomWidget(title: "قانون  $index",content: AppStrings.lorem),
            ),)
          ),
        ),
      ),
    );
  }
}
// expandable