import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          "4.8",
          style: MyStyles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          "(2232)",
          style: MyStyles.textStyle16.copyWith(
            color: const Color(0xff888590),
          ),
        ),
      ],
    );
  }
}
