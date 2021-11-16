import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/controller/app_controller.dart';
import 'package:shoe/view/home_screen/home_screen.dart';
import 'package:shoe/view/menu_screen/menu_screen.dart';

import 'home_screen/widgets/bottom_navigation.dart';

class PageManger extends StatefulWidget {
  const PageManger({Key? key}) : super(key: key);

  @override
  State<PageManger> createState() => _PageMangerState();
}

class _PageMangerState extends State<PageManger> {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _appController.pageController,
        children: [
          const HomeScreen(),
          const MenuScreen(),
          Container(color: AppColor.royalBlue),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
