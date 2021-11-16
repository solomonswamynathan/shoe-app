import 'package:flutter/material.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/model/sales.dart';

class SalesCard extends StatelessWidget {
  final Sales? sales;
  const SalesCard({Key? key, @required this.sales}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {},
      child: Padding(
        padding: const EdgeInsets.only(left: Sizes.dimen_16),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.dimen_16),
                  color: sales!.backgroudColor),
              width: Sizes.dimen_140,
            ),
            Positioned(
              right: -15,
              bottom: 40,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 50,
                    spreadRadius: 3,
                    color: AppColor.black.withOpacity(0.23),
                  ),
                ]),
                child: RotationTransition(
                  turns: const AlwaysStoppedAnimation(-20 / 360),
                  child: Image.asset(
                    sales!.productImage!,
                    fit: BoxFit.cover,
                    height: Sizes.dimen_80,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 10,
              child: Container(
                padding: const EdgeInsets.all(Sizes.dimen_4),
                decoration: BoxDecoration(
                    color: sales!.tagColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8))),
                child: Text(
                  '${sales!.discountPer}%',
                  style: const TextStyle(
                      fontSize: Sizes.dimen_16, color: AppColor.white),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Text(
                '\$ ${sales!.price}',
                style: const TextStyle(
                    fontSize: Sizes.dimen_16, color: AppColor.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
