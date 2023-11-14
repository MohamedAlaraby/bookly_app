import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/home_custom_app_bar.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DetailsCustomAppBar(),
            ],
          ),
        ),
      ),
    );
  }
}
