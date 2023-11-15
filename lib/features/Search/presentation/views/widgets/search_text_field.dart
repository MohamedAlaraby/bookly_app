import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: "Search",
          enabledBorder: myOutlinedInputBorder(),
          border: myOutlinedInputBorder(),
          focusedBorder: myOutlinedInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder myOutlinedInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        color: Colors.white,
      ),
    );
  }
}
