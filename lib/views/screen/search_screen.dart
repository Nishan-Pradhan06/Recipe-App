import 'package:flutter/material.dart';
import 'package:recipe/views/components/appbar.dart';

import '../../core/constant/recipe_list.dart';
import '../components/chip.dart';
import '../components/recipe_card.dart';
import '../components/search_box_component.dart';
import '../components/sizebox.dart';
import 'recipie_description_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
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
              GridView.builder(
                itemCount: recipes.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Two items per row
                  crossAxisSpacing: 8.0, // Spacing between items horizontally
                  mainAxisSpacing: 8.0, // Spacing between items vertically
                  childAspectRatio: 0.75, // Aspect ratio for each item
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    child: RecipeCard(recipe: recipes[index]),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const RecipieDescriptionScreen(),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
