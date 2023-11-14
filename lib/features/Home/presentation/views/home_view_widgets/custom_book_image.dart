import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 0.70, //width to height
        child: Container(
          margin: const EdgeInsets.only(
            right: 5,
            left: 5,
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
