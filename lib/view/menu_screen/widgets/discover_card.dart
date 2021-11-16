import 'package:flutter/material.dart';
import 'package:shoe/constant/app_color.dart';
import 'package:shoe/constant/app_size.dart';
import 'package:shoe/extension/size_extension.dart';
import 'package:shoe/model/discover_model.dart';

class DiscoverCard extends StatelessWidget {
  final DiscoverModel? dicover;
  const DiscoverCard({Key? key, @required this.dicover}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(left: Sizes.dimen_12),
        child: Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(Sizes.dimen_16),
              child: SizedBox(
                width: Sizes.dimen_230.w,
                child: ShaderMask(
                  shaderCallback: (bounds) {
                    return const LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.transparent,
                          AppColor.royalBlue,
                          AppColor.darkBlue,
                        ]).createShader(bounds);
                  },
                  blendMode: BlendMode.color,
                  child: Image.asset(
                    "${dicover!.productImage}",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                '${dicover!.productTitle}',
                style: const TextStyle(
                    color: AppColor.white, fontSize: Sizes.dimen_24),
              ),
            )
          ],
        ),
      ),
    );
  }
}
