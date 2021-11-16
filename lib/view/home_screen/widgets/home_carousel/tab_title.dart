import 'package:flutter/material.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';

class TabTitle extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  final bool? isSelected;

  const TabTitle(
      {Key? key,
      @required this.title,
      @required this.onTap,
      this.isSelected = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title!,
        style: TextStyle(
            color: isSelected! ? AppColor.royalBlue : AppColor.darkGrey,
            fontSize: Sizes.dimen_18),
      ),
    );
  }
}
