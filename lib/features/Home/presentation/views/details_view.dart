import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/views/details_view_widgets/details_view_body.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  final BookModel book;
  const DetailsView({required this.book, super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DetailsViewBody(book: book),
      ),
    );
  }
}
