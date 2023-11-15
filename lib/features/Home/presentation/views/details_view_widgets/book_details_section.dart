import 'package:flutter/material.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/book_Actions.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:bookly_app/core/utils/my_styles.dart';

class BookDeatilsSection extends StatelessWidget {
  const BookDeatilsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getWidth(context) * .27,
          ),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 30),
        const Text(
          "The Jungle Book",
          style: MyStyles.textStyle30,
        ),
        const SizedBox(height: 6),
        Text(
          "Rudyard Kipling",
          style: MyStyles.textStyle18.copyWith(
            fontWeight: FontWeight.w500,
            color: const Color(0xffB7B6BC),
          ),
        ),
        const SizedBox(height: 16),
        const BookRating(),
        const SizedBox(height: 37),
        const BookActions(),
      ],
    );
  }
}
