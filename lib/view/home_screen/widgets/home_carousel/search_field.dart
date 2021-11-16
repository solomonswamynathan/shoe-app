import 'package:flutter/material.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
      padding: const EdgeInsets.symmetric(horizontal: Sizes.dimen_16),
      height: Sizes.dimen_48,
      decoration: BoxDecoration(
        color: AppColor.lightGrey,
        borderRadius: BorderRadius.circular(35),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            blurRadius: 50,
            color: AppColor.lightGrey.withOpacity(0.23),
          ),
        ],
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }
}
