import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/core/widgets/shimmer_widget.dart';
import 'package:bookly_app/features/Home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksLoadedState) {
          return SizedBox(
            height: getHeight(context) * 0.27,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(kDetailsViewName,extra: state.books[index]);
                },
                child: CustomBookImage(
                  imageUrl:
                      state.books[index].volumeInfo.imageLinks?.thumbnail ?? "",
                ),
              ),
            ),
          );
        } else if (state is FeaturedBooksFailureState) {
          return CustomFailureWidget(
            errMessage: state.errMessage,
          );
        } else {
          return ListView.separated(
            itemBuilder: (context, index) => ShimmerWidget(
              height: getHeight(context) * 0.27,
            ),
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
          );
        }
      },
    );
  }
}
