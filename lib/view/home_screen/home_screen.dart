import 'package:flutter/material.dart';
import 'package:shoe/utils/screen_util.dart';

import './widgets/home_carousel/home_carousel.dart';
import 'widgets/sales/sales_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: ScreenUtil.screenHeight * 0.6,
              child: const HomeCarousel(),
            ),
            SizedBox(
              height: ScreenUtil.screenHeight * 0.32,
              child: SalesScreen(title: "Sales"),
            ),
          ],
        ),
      ),
    );
  }
}
