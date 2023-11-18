import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_similar_books_list_view.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({
    required this.book,
    super.key,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: kPaddingH30,
          child: Text(
            "You can also like",
            style: MyStyles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
         SimilarBooksListView(book: book,),
      ],
    );
  }
}
