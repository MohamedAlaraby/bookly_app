import 'package:flutter/material.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/book_Actions.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: kPaddingH30,
          child: DetailsCustomAppBar(),
        ),
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
        const SizedBox(height: 40),
        Padding(
          padding: kPaddingH30,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "You can also like",
              style: MyStyles.textStyle14.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 25),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => const CustomBookImage(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
