import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/utils/screen_util.dart';
import './search_field.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight + Sizes.dimen_4.h,
        left: Sizes.dimen_16.w,
        right: Sizes.dimen_16.w,
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              'assets/svgs/menu.svg',
              height: Sizes.dimen_12.h,
              color: Colors.black,
              // color: context.read<ThemeCubit>().state == Themes.dark
              //     ? Colors.white
              //     : AppColor.vulcan,
            ),
          ),
          const Expanded(
            child: SearchField(),
          ),
          IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: SvgPicture.asset(
              'assets/svgs/cart.svg',
              height: Sizes.dimen_12.h,
              color: Colors.black,
              // color: context.read<ThemeCubit>().state == Themes.dark
              //     ? Colors.white
              //     : AppColor.vulcan,
            ),
          ),
        ],
      ),
    );
  }
}
