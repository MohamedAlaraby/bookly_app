import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/my_assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeCustomAppBar extends StatelessWidget {
  const HomeCustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30,
        right: 20,
        top: 40,
        bottom: 0,
      ),
      child: Row(
        children: [
          Image.asset(
            MyAssets.logoPath,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(kSearchViewName);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            iconSize: 22,
          ),
        ],
      ),
    );
  }
}
