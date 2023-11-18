import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/book_details_section.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';

class DetailsViewBody extends StatelessWidget {
  final BookModel book;
  const DetailsViewBody({
    required this.book,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: kPaddingH30,
              child: DetailsCustomAppBar(),
            ),
            BookDeatilsSection(book: book),
            const Expanded(child: SizedBox(height: 40)),
            SimilarBooksSection(
              book: book,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    ]);
  }
}
