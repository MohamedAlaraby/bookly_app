import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  // final BookModel book;
  final String imageUrl;
  const CustomBookImage({
    super.key,
    required this.imageUrl,
  });

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
            borderRadius: BorderRadius.circular(12),
            color: Colors.amber,
            image: DecorationImage(
              image: NetworkImage(imageUrl),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
