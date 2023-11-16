import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView extends StatelessWidget {
  // final BookModel book;
  const SimilarBooksListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.12,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 25),
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const CustomBookImage(imageUrl: MyAssets.testImagelPath,),
      ),
    );
  }
}
