import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/book_Actions.dart';

import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/my_styles.dart';

class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(context) * .27,
          ),
          child: CustomBookImage(
            imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
          ),
        ),
        const SizedBox(height: 30),
        Text(
          book.volumeInfo.title ?? "",
          style: MyStyles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Text(
          book.volumeInfo.authors?.first ?? "",
          style: MyStyles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xffB7B6BC),
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 16),
        BookRating(
          bookRating: "4.8",
          bookRatingCounts: book.volumeInfo.pageCount ?? 0,
        ),
        const SizedBox(height: 37),
        BookActions(bookModel: book),
      ],
    );
  }
}
