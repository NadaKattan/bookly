import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Center(
        heightFactor: 20 / 3,
        child: TextField(
          onSubmitted: (value) {},
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            suffixIcon: const Icon(
              Icons.search_rounded,
            ),
            labelText: "Search",
            hintText: "Enter Book name",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
