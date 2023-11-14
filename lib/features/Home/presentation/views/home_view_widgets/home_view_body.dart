import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/best_seller_listview.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/home_custom_app_bar.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/horiz_listview.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              HomeCustomAppBar(),
              HorizontalListView(),
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
          child: BestSellerListView(),
        ),
      ],
    );
  }
}
