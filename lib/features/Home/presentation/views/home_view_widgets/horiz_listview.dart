import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/horiz_list_item.dart';
import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  const HorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.27,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) => const HorizontalListItem(),
        itemCount: 5,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
