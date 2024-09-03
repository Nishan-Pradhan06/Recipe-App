import 'package:flutter/material.dart';

class SearchBoxComponent extends StatelessWidget {
  const SearchBoxComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromARGB(255, 179, 179, 179)),
        ),
        hintText: "I'm looking for?",
        suffixIcon: Icon(Icons.search_rounded),
      ),
    );
  }
}
