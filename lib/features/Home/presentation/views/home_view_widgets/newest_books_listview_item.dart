import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListviewItem extends StatelessWidget {
  final BookModel book;
  const BooksListviewItem({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(
          kDetailsViewName,
          extra: book,
        );
      },
      child: Container(
        height: 110,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBookImage(
              imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? "",
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getWidth(context) * 0.6,
                    child: Text(
                      book.volumeInfo.title!,
                      style: MyStyles.textStyle20.copyWith(
                        fontFamily: kGTSectraFineFontFamily,
                        fontSize: 19,
                        height: 0.9,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                    ),
                    child: Text(
                      book.volumeInfo.authors!.first,
                      style: MyStyles.textStyle14,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "Free",
                          style: MyStyles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 36,
                        ),
                        BookRating(
                          bookRating: "4.8",
                          bookRatingCounts: book.volumeInfo.pageCount ?? 0,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
