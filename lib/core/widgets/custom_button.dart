import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.backgroundColor,
    required this.borderRadius,
    required this.style,
    super.key,
  });
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius,
          ),
        ),
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
