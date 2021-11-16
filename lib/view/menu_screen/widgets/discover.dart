import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/controller/app_controller.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/utils/screen_util.dart';

import 'discover_list_view.dart';

class Discover extends StatelessWidget {
  Discover({Key? key}) : super(key: key);

  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: ScreenUtil.screenHeight * 0.08,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.all(Sizes.dimen_16.w),
            child: const Text(
              'Discover',
              style: TextStyle(
                  fontSize: Sizes.dimen_20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ),
      Expanded(child: DiscoverListView(discover: _appController.discoverModel))
    ]);
  }
}
