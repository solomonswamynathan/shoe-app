import 'package:flutter/material.dart';
import 'package:shoe/utils/screen_util.dart';
import 'package:shoe/view/home_screen/widgets/sales/sales_screen.dart';

import 'widgets/discover.dart';
import 'widgets/poster.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              height: ScreenUtil.screenHeight * 0.3, child: const Poster()),
          SizedBox(
            height: ScreenUtil.screenHeight * 0.3,
            child: SalesScreen(title: "Featured"),
          ),
          SizedBox(
            height: ScreenUtil.screenHeight * 0.3,
            child: Discover(),
          ),
        ],
      ),
    );
  }
}
