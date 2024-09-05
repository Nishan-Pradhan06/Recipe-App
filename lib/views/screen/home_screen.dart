import 'package:flutter/material.dart';
import 'package:recipe/core/constant/recipe_list.dart';
import 'package:recipe/views/components/appbar.dart';
import 'package:recipe/views/components/recipe_card.dart';
import 'package:recipe/views/components/search_box_component.dart';
import 'package:recipe/views/components/textbutton.dart';
import '../components/chip.dart';
import '../components/heading.dart';
import '../components/sizebox.dart';
import '../components/sub_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Heading(heading: "Let's get cooking!"),
              const SizeboxGap(),
              const SearchBoxComponent(hintText: "I'm looking for?"),
              const SizeboxGap(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubHeading(title: "Recently viewed"),
                  Textbutton(text: "See all", icon: Icons.arrow_forward),
                ],
              ),
              SizedBox(
                height: 216,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return RecipeCard(recipe: recipe);
                  },
                ),
              ),
              const SizeboxGap(),
              const SubHeading(title: "Category"),
              SizedBox(
                height: 60,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: chipTitles.map((title) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: ChipComponents(
                        title: title,
                      ),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 216,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipes.length,
                  itemBuilder: (context, index) {
                    final recipe = recipes[index];
                    return RecipeCard(recipe: recipe);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
