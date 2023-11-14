import 'package:bookly_app/core/utils/my_assets.dart';

import 'package:flutter/material.dart';

class BestSellerListItemImage extends StatelessWidget {
  const BestSellerListItemImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: AspectRatio(
        aspectRatio: 0.85, //width to height
        child: Container(
          margin: const EdgeInsets.only(
            left: 30,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.amber,
            image: const DecorationImage(
              image: NetworkImage(
                MyAssets.testImagelPath,
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
