import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_custom_app_bar.dart';
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
            children: [
              const DetailsCustomAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getWidth(context) * 0.2,
                ),
                child: const CustomBookImage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
