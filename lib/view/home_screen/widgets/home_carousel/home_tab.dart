import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/constant/home_tab_constants.dart';
import 'package:shoe/controller/app_controller.dart';
import 'package:shoe/extension/size_extension.dart';
import './home_list_view.dart';
import './tab_title.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Sizes.dimen_4.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var i = 0; i < HomeTabbedConstant.movieTabs.length; i++)
                Obx(
                  () => TabTitle(
                    title: HomeTabbedConstant.movieTabs[i].title,
                    onTap: () {
                      _appController.setSelectedTab(i);
                    },
                    isSelected: i == _appController.selectedTab,
                  ),
                ),
            ],
          ),
          Expanded(
            child: HomeListView(
              shoes: _appController.shoes,
            ),
          ),
        ],
      ),
    );
  }
}
