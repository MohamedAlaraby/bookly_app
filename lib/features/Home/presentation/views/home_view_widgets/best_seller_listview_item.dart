import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/best_seller_list_item_image.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view_widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListviewItem extends StatelessWidget {
  const BestSellerListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kDetailsViewName);
      },
      child: Container(
        height: 110,
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BestSellerListItemImage(),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getWidth(context) * 0.6,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      style: MyStyles.textStyle20.copyWith(
                        fontFamily: kGTSectraFineFontFamily,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    "J.K. Rowling",
                    style: MyStyles.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          "19.99 €",
                          style: MyStyles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 36,
                        ),
                        const BookRating(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
