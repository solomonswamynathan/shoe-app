import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/controller/app_controller.dart';
import 'package:shoe/view/home_screen/widgets/sales/sales_list_view.dart';

class SalesScreen extends StatelessWidget {
  final String? title;
  SalesScreen({Key? key, @required this.title}) : super(key: key);
  final AppController _appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: Sizes.dimen_16),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title ?? "",
              style: const TextStyle(
                  fontSize: Sizes.dimen_20, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        Expanded(
          // height: Sizes.dimen_200,
          child: SalesListView(
            sales: _appController.sales,
          ),
        ),
      ],
    );
  }
}
