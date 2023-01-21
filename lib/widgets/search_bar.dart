import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 0, color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
          ),
          suffixIcon: const Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ),
          hintText: "What are you looking for ?"),
    );
  }
}
