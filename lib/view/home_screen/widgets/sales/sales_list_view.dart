import 'package:flutter/material.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/model/sales.dart';
import 'package:shoe/view/home_screen/widgets/sales/sales_card.dart';

class SalesListView extends StatelessWidget {
  final List<Sales>? sales;
  const SalesListView({Key? key, @required this.sales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.dimen_6.h),
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: sales!.length,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: Sizes.dimen_14.w,
          );
        },
        itemBuilder: (context, index) {
          return SalesCard(sales: sales![index]);
        },
      ),
    );
  }
}
