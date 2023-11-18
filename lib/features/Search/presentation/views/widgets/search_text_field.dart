import 'package:bookly_app/features/Search/presentation/views/manager/fetch_search_results_cubit/fetch_search_result_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  String? searchText;
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: TextField(
        controller: _textEditingController,
        cursorColor: Colors.white,
        onChanged: (String text) {
          searchText = text;
        },
        decoration: InputDecoration(
          hintText: "Search",
          enabledBorder: myOutlinedInputBorder(),
          border: myOutlinedInputBorder(),
          focusedBorder: myOutlinedInputBorder(),
          suffixIcon: IconButton(
            onPressed: () {
              if (searchText != null) {
                BlocProvider.of<FetchSearchResultCubit>(context)
                    .fetchSearchResultsBooks(searchStatement: searchText!);
                _textEditingController.clear();
              }
            },
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
