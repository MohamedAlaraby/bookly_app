import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:bookly_app/core/utils/useful_methods.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';


class BookActions extends StatelessWidget {
  const BookActions({
    required this.bookModel,
    super.key,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: CustomButton(
              text: "Free",
              backgroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              style: MyStyles.textStyle18.copyWith(
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomButton(
              text: "Preview",
              onPressed: () async {
                Uri url = Uri.parse(bookModel.volumeInfo.previewLink ?? "");
                await myLaunchUrl(url);
              },
              backgroundColor: const Color(0xffEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              style: MyStyles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }


}
