import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/best_seller_listview_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 16,),
      itemBuilder: (context, index) => const BestSellerListviewItem(),
      itemCount: 5,
    );
  }
}
