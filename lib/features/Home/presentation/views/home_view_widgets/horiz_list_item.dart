import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.27,
      child: AspectRatio(
        aspectRatio: 0.75, //width to height
        child: Container(
          margin: const EdgeInsets.only(
            right: 8,
            left: 8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
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
