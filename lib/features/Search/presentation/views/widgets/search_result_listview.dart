import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/shimmer_list_item.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/newest_books_listview_item.dart';
import 'package:bookly_app/features/Search/presentation/views/manager/fetch_search_results_cubit/fetch_search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSearchResultCubit, FetchSearchResultState>(
      builder: (context, state) {
        if (state is FetchSearchResultLoadedState) {
          return Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(
                top: 16,
                left: 20,
                right: 20,
                bottom: 16,
              ),
              itemBuilder: (context, index) =>
                  BooksListviewItem(book: state.books[index]),
              itemCount: state.books.length,
            ),
          );
        } else if (state is FetchSearchResultFailureState) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else if (state is FetchSearchResultLoadingState) {
          return Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                height: 16,
              ),
              itemBuilder: (context, index) => const ShimmerListItem(),
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
            ),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }
}
