import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/best_seller_listview.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/home_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/featured_books_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeCustomAppBar(),
              SizedBox(height: 16),
              FeaturedBooksListView(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(
                  left: 30,
                ),
                child: Text(
                  "Best Seller",
                  style: MyStyles.textStyle18,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverFillRemaining(
          //Expanded
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
