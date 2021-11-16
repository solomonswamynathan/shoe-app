import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/utils/screen_util.dart';
import './home_app_bar.dart';
import './home_tab.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: ScreenUtil.screenHeight * 0.12,
          child: const HomeAppBar(),
        ),
        SizedBox(
          height: ScreenUtil.screenHeight * 0.08,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.all(Sizes.dimen_16.w),
              child: const Text(
                'Sneakers',
                style: TextStyle(
                    fontSize: Sizes.dimen_24, fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
        SizedBox(
          height: ScreenUtil.screenHeight * 0.4,
          child: const HomeTab(),
        ),
      ],
    );
  }
}
