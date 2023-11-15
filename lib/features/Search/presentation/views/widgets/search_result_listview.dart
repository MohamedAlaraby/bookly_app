import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(
          top: 16,
        ),
        itemBuilder: (context, index) => const BooksListviewItem(),
        itemCount: 10,
      ),
    );
  }
}
