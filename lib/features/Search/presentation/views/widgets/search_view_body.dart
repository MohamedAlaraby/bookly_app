import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/features/Search/presentation/views/widgets/search_result_listview.dart';
import 'package:bookly_app/features/Search/presentation/views/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        SearchTextField(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 30,
          ),
          child: Text(
            "Search Results",
            style: MyStyles.textStyle18,
          ),
        ),
        SearchResultListView(),
      ],
    );
  }
}
