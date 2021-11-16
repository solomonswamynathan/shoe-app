import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/controller/app_controller.dart';
import 'package:shoe/utils/screen_util.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({Key? key}) : super(key: key);

  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ScreenUtil.screenHeight * 0.08,
      child: Obx(
        () => Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Container(
            decoration: BoxDecoration(
                color: _appController.selectedMenu == 0
                    ? AppColor.royalBlue.withOpacity(0.10)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {
                  _appController.setSelectedMenu(0);
                },
                icon: SvgPicture.asset(
                  "assets/svgs/icon.svg",
                  color: _appController.selectedMenu == 0
                      ? AppColor.royalBlue
                      : AppColor.darkGrey,
                  height: Sizes.dimen_32,
                  width: Sizes.dimen_32,
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: _appController.selectedMenu == 1
                    ? AppColor.royalBlue.withOpacity(0.10)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {
                  _appController.setSelectedMenu(1);
                },
                icon: Icon(
                  Icons.menu,
                  color: _appController.selectedMenu == 1
                      ? AppColor.royalBlue
                      : AppColor.darkGrey,
                  size: Sizes.dimen_32,
                )),
          ),
          Container(
            decoration: BoxDecoration(
                color: _appController.selectedMenu == 2
                    ? AppColor.royalBlue.withOpacity(0.10)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
                onPressed: () {
                  _appController.setSelectedMenu(2);
                },
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: _appController.selectedMenu == 2
                      ? AppColor.royalBlue
                      : AppColor.darkGrey,
                  size: Sizes.dimen_32,
                )),
          )
        ]),
      ),
    );
  }
}
