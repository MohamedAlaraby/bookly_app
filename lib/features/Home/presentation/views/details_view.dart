
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: DetailsViewBody(),
      ),
    );
  }
}

