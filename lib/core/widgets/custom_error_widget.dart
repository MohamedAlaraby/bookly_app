import 'package:bookly_app/core/utils/my_styles.dart';
import 'package:flutter/material.dart';

class CustomFailureWidget extends StatelessWidget {
  final String errMessage;

  const CustomFailureWidget({required this.errMessage, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 16,
        ),
        child: Text(
          errMessage,
          style: MyStyles.textStyle18,
        ),
      ),
    );
  }
}
