import 'package:flutter/material.dart';

import '../components/chip.dart';
import '../components/search_box_component.dart';
import '../components/sizebox.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Discover the best recipes!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              const SizeboxGap(),
              const SearchBoxComponent(
                hintText: "Search recipes",
              ),
              const SizeboxGap(),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: chipTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: ChipComponents(
                        title: title,
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
