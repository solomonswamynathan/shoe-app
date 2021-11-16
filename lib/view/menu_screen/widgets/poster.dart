import 'package:flutter/material.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/utils/screen_util.dart';

class Poster extends StatelessWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: ScreenUtil.statusBarHeight,
        bottom: Sizes.dimen_4.h,
      ),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.dimen_24),
              bottomRight: Radius.circular(Sizes.dimen_24)),
        ),
        width: double.infinity,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(Sizes.dimen_24),
              bottomRight: Radius.circular(Sizes.dimen_24)),
          child: ShaderMask(
            shaderCallback: (bounds) {
              return const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    AppColor.darkBlue,
                    AppColor.darkPink,
                  ]).createShader(bounds);
            },
            blendMode: BlendMode.color,
            child: Image.asset(
              "assets/images/poster.jpg",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
