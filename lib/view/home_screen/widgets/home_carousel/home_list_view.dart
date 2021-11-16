import 'package:flutter/material.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/model/shoe.dart';
import './shoe_tab_card.dart';

class HomeListView extends StatelessWidget {
  final List<Shoe>? shoes;
  const HomeListView({Key? key, @required this.shoes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.dimen_6.h),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: shoes!.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: Sizes.dimen_14.w,
          );
        },
        itemBuilder: (context, index) {
          return ShoeTabCard(shoe: shoes![index]);
        },
      ),
    );
  }
}
