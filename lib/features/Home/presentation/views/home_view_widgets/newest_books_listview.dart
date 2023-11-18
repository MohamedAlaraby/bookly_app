import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/shimmer_list_item.dart';
import 'package:bookly_app/features/Home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/newest_books_listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksLoadedState) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            itemBuilder: (context, index) => BooksListviewItem(
              book: state.books[index],
            ),
            itemCount: 10,
          );
        } else if (state is NewestBooksFailureState) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else {
          return ListView.separated(
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
            itemBuilder: (context, index) => const ShimmerListItem(),
            itemCount: 10,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
          );
        }
      },
    );
  }
}
