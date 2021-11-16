import 'package:flutter/material.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/model/shoe.dart';

class ShoeTabCard extends StatelessWidget {
  final Shoe? shoe;
  const ShoeTabCard({Key? key, @required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: Sizes.dimen_16),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Sizes.dimen_16),
                  color: shoe!.backgroundColor),
              height: Sizes.dimen_200,
              width: Sizes.dimen_160,
            ),
            Positioned(
              right: -15,
              bottom: 60,
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
                  child: SizedBox(
                    height: Sizes.dimen_100,
                    child: Image.asset(
                      shoe!.productImage!,
                      fit: BoxFit.cover,
                      height: Sizes.dimen_100,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 20,
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_border,
                    color: AppColor.white,
                    size: Sizes.dimen_24,
                  )),
            ),
            Positioned(
                left: 10,
                top: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      shoe!.brand!,
                      style: const TextStyle(
                          fontSize: Sizes.dimen_16, color: AppColor.white),
                    ),
                    Text(
                      shoe!.productName!,
                      style: const TextStyle(
                          fontSize: Sizes.dimen_16, color: AppColor.white),
                    ),
                    Text(
                      '\$ ${shoe!.price!}',
                      style: const TextStyle(
                          fontSize: Sizes.dimen_16, color: AppColor.white),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
