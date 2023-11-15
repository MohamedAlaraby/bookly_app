import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsCustomAppBar extends StatelessWidget {
  const DetailsCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            FontAwesomeIcons.cartShopping,
          ),
        ),
      ],
    );
  }
}
