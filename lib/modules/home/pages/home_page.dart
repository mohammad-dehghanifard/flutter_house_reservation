import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_house_reservation/helpers/widgets/app_bar_container_widget.dart';
import 'package:flutter_house_reservation/modules/home/widgets/home_app_bar_body_widget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // app bar
        AppBarContainerWidget(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: HomeAppBarBodyWidget(),
          ),
        )
      ],
    );
  }
}






