import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/shimmer_widget.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/Home/presentation/manager/similar_books_cubit%20copy/similar_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilarBooksListView extends StatefulWidget {
  const SimilarBooksListView({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  State<SimilarBooksListView> createState() => _SimilarBooksListViewState();
}

class _SimilarBooksListViewState extends State<SimilarBooksListView> {
  @override
  void initState() {
    var cubit = BlocProvider.of<SimilarBooksCubit>(context);
    cubit.fetchSimilarBooks(
      category: widget.book.volumeInfo.categories![0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.20,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
          builder: (context, state) {
        if (state is SimilarBooksLoadedState) {
          return ListView.builder(
            padding: const EdgeInsets.only(left: 25),
            itemCount: state.books.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) => CustomBookImage(
              imageUrl:
                  state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
            ),
          );
        } else if (state is SimilarBooksFailureState) {
          return CustomFailureWidget(errMessage: state.errMessage);
        } else {
          return ListView.separated(
            itemBuilder: (context, index) => ShimmerWidget(
              height: getHeight(context) * 0.20,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          );
        }
      }),
    );
  }
}
