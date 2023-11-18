import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  final String bookRating;
  final int bookRatingCounts;

  const BookRating({
  required  this.bookRating,
   required this.bookRatingCounts,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 16,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(bookRating, style: MyStyles.textStyle16),
        const SizedBox(
          width: 5,
        ),
        Text(
          "($bookRatingCounts)",
          style: MyStyles.textStyle16.copyWith(
            color: const Color(0xff888590),
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
