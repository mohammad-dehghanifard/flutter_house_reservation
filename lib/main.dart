import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/helpers/constants/app_strings.dart';
import 'package:flutter_house_reservation/helpers/themes/app_themes.dart';
import 'package:flutter_house_reservation/modules/splash/pages/on_boarding_page.dart';
import 'package:flutter_house_reservation/modules/splash/pages/splash_page.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(1)),
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              locale: const Locale("fa"),
              title: AppStrings.appName,
              theme: AppThemes.darkTheme,
              home: const SplashPage(),
            ));
      },
    );
  }
}


