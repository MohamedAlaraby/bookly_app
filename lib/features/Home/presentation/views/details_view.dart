import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/book_Actions.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/book_rating.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/home_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DetailsCustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(context) * 0.2,
                ),
                child: const CustomBookImage(),
              ),
              const SizedBox(height: 43),
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
              SizedBox(height: getHeight(context) * 0.01),
              const BookActions(),
            ],
          ),
        ),
      ),
    );
  }
}
