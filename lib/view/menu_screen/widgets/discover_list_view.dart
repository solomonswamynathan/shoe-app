import 'package:flutter/material.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/model/discover_model.dart';

import 'discover_card.dart';

class DiscoverListView extends StatelessWidget {
  final List<DiscoverModel>? discover;
  const DiscoverListView({Key? key, @required this.discover}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.dimen_6.h),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: discover!.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: Sizes.dimen_14.w,
          );
        },
        itemBuilder: (context, index) {
          return DiscoverCard(dicover: discover![index]);
        },
      ),
    );
  }
}
