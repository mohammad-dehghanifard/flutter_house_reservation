import 'package:flutter/material.dart';
import 'package:flutter_house_reservation/modules/home/pages/home_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            HomePage()
          ],
        ),
      ),
    );
  }
}
